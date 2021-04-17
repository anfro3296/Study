package com.reservation.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.reservation.dao.ReservationDAO;
import com.reservation.domain.ReservationDTO;

@Controller
public class ReservationController{
	
	private Log log = LogFactory.getLog(getClass());
	ReservationDAO dao;
	
	@Required
	@Autowired
	public void setDao(ReservationDAO dao) {
		this.dao = dao;
		log.info("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping("/order.do")
	public String reservate(@ModelAttribute ReservationDTO reservation){
		log.info("ReservationActionController의 reservate()호출됨");
		dao.reservate(reservation);
		return "redirect:/homepage.jsp";
	}
}



