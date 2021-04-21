package com.notice.controller;

import java.util.List;

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
	public String noticeList(Model model) {
		log.info("NoticeController의 noticeList()호출됨");
		List<NoticeDTO> noticeList = dao.noticeList();
		model.addAttribute("noticeList", noticeList);
		log.info(noticeList);
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



