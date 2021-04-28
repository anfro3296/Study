package com.cafe.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.dao.CafeDAO;
import com.cafe.domain.CafeDTO;
import com.evaluation.dao.copy.EvaluationDAO;
import com.evaluation.domain.EvaluationDTO;

@Controller
public class CafeController{

	private Log log = LogFactory.getLog(getClass());
	CafeDAO dao;
	EvaluationDAO dao2;

	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	public void setDao(EvaluationDAO dao2) {
		this.dao2 = dao2;
	}	
	
	// By Jay_카페구경하기 페이지 출력하기_20210423
	@RequestMapping("/lookcafe.do")
	public String lookCafe(Model model){
		log.info("CafeController의 lookCafe()호출됨");
		List<CafeDTO> list = dao.lookcafe();
		List<CafeDTO> newList = dao.newCafe();
		model.addAttribute("list", list);
		model.addAttribute("newList", newList);
		return "lookcafe";
	}
	
	// By Jay_카페 상세페이지 출력하기_20210421
	@RequestMapping("/list.do")
	public String listBoard(@RequestParam String cafe_id, Model model){
		log.info("CafeController의 listBoard()호출됨");
		CafeDTO cafe = dao.list(cafe_id);
		List<EvaluationDTO> evaluation_list = dao2.evaluation_list(cafe_id);
		model.addAttribute("cafe", cafe);
		model.addAttribute("evaluation_list", evaluation_list);
		log.info(evaluation_list);
		return "Detailed_shop";
	}
}



