package com.main.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.dao.CafeDAO;
import com.cafe.domain.CafeDTO;

@Controller
public class HomeController {

    private Log log = LogFactory.getLog(getClass());
	CafeDAO dao;
	
	@Required
	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
		log.info("setDao() 호출됨(dao)=>"+dao);
	}
	
    @RequestMapping("main.do")
    public String home(Model model) {
        log.info("HomeController의 home()호출됨");
		List<CafeDTO> recommendCafe = dao.recommendCafe();
		model.addAttribute("recommendCafe", recommendCafe);
        return "homepage";
    }
}
