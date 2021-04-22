package com.notice.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.notice.dao.NoticeDAO;
import com.notice.domain.NoticeDTO;
import com.notice.util.PagingUtil;

@Controller
public class NoticeController{

	private Log log = LogFactory.getLog(getClass());
	NoticeDAO dao;
	
	@Required
	@Autowired
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}

	@RequestMapping(value="notice.do", method = RequestMethod.GET)
	public String noticeList(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
		    @RequestParam(value="keyField",defaultValue="") String keyField,
		    @RequestParam(value="keyWord",defaultValue="") String keyWord, Model model) {
		if(log.isDebugEnabled()) { 
			log.info("NoticeController의 noticeList()호출됨");
			log.debug("currentPage:"+currentPage); 
			log.debug("keyField:"+keyField);
			log.debug("keyWord:"+keyWord);
		}
		
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		int count=dao.getRowCount(map);
		log.info(count);
		PagingUtil page=new PagingUtil(currentPage,count,5,1,"notice.do");
		
		map.put("start",page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<NoticeDTO> list=null;
		if(count > 0) {
			System.out.println("리스트 담김");
			list=dao.noticeList(map);
		}else {
			list=Collections.emptyList();
		}
		
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("pagingHtml",page.getPagingHtml());
		return "notice";
	}
	
	@RequestMapping(value="noticeDetails.do", method = RequestMethod.GET)
	public String noticeDetails(@RequestParam int notice_number, Model model) {
		log.info("NoticeController의 noticeDetails()호출됨");
		dao.updateReadcnt(notice_number); 
		NoticeDTO notice = dao.retrieve(notice_number);
		model.addAttribute("notice", notice);
		log.info(notice);
		return "noticeDetails";
		
	}	
}



