package com.cafe.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.dao.CafeDAO;
import com.cafe.domain.CafeDTO;

@Controller
public class CafeController{

	private Log log = LogFactory.getLog(getClass());
	CafeDAO dao;
	
	@Required
	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
		log.info("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping("/list.do")
	public String listBoard(@RequestParam String cafe_id, Model model){
		log.info("ListActionController의 listBoard()호출됨");
		CafeDTO cafe = dao.list(cafe_id);
		model.addAttribute("cafe", cafe);
		return "Detailed_shop";
	}

	@RequestMapping("/lookcafe.do")
	public String lookCafe(Model model){
		log.info("LookCafeActionController의 lookCafe()호출됨");
		List<CafeDTO> list = dao.lookcafe();
		List<CafeDTO> newList = dao.newCafe();
		model.addAttribute("list", list);
		model.addAttribute("newList", newList);
		return "lookcafe";
	}
}



