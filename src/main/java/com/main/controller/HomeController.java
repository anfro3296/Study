package com.main.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.dao.CafeDAO;
import com.cafe.domain.CafeDTO;
import com.evaluation.dao.copy.EvaluationDAO;
import com.evaluation.domain.TotalEvaluationDTO;

@Controller
public class HomeController {

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
	
    @RequestMapping("main.do")
    public String home(Model model) {
        List<CafeDTO> recommendCafe = dao.recommendCafe();
        List<TotalEvaluationDTO> evaluationList = dao2.total_evaluation_list();
		model.addAttribute("recommendCafe", recommendCafe);
		model.addAttribute("evaluationList", evaluationList);
		return "homepage";
    }
}
