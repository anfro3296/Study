package com.main.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	private Log log = LogFactory.getLog(getClass());
	
	@RequestMapping("main.do")
	public String home() {
		log.info("HomeController의 home()호출됨");
		return "homepage";
	}
}
