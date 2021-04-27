package com.reservation.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// By jay_카페 예약하기_20210418
	@RequestMapping("/order.do")
	@ResponseBody
	public String reservate(ReservationDTO reservation){
		log.info(reservation);
		log.info("ReservationActionController의 reservate()호출됨");
		log.info(reservation.getReser_date());
		
		if(reservation.getMember_id() == "") {
			return "fail";
		} else {
			dao.reservate(reservation);
		}
		
		return "success";
	}
}



