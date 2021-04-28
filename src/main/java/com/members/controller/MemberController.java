package com.members.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.members.dao.MembersDAO;
import com.members.domain.AdminDTO;
import com.members.domain.MembersDTO;

@Controller
public class MemberController{

	private Log log = LogFactory.getLog(getClass());
	MembersDAO dao;
	
	@Required
	@Autowired
	public void setDao(MembersDAO dao) {
		this.dao = dao;
	}
	
	// By jay_회원가입 폼 호출 하기_20210405
	@RequestMapping(value="register.do", method = RequestMethod.GET)
	public String form() {
		log.info("MemberController의 form()호출됨");
		return "page_registration";
	}
	
	// By jay_회원 가입하기_20210405
	@RequestMapping(value="register.do", method = RequestMethod.POST)
	@ResponseBody
	public String signUp(MembersDTO members) {
		log.info(members);
		log.info("MemberController의 signUp()호출됨");
		
		int result = dao.idCheck(members);
		System.out.println("중복은 1 아니면 0 = " + result );
		
		if(result == 1) {
			return "fail";
		} else if (result == 0) {
			dao.userJoin(members);
		}
		return "success";
	}
	
	// By jay_로그인 폼 호출 하기_20210406
	@RequestMapping(value="login.do", method = RequestMethod.GET)
	public String login() {
		log.info("MemberController의 login()호출됨");
		return "page_login";
	}	
	
	// By jay_로그인 하기_20210406
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	@ResponseBody
	public String singIn (@ModelAttribute MembersDTO members, HttpSession session) {
		log.info(members);
		log.info("MemberController의 signIn()호출됨");
		
		String result = null;
		MembersDTO userIdCheck = dao.getId(members);
		log.info(userIdCheck);
		if(userIdCheck == null) {
			result= "idFail";
			return result;
		}
		
		if(members.getMember_pwd().equals(userIdCheck.getMember_pwd())) {
			session.setAttribute("loginUser", userIdCheck);
			result = "success";
			
		} else {
			result = "pwdFail";
		}
		log.info(result);
		return result;
	}
	
	// By jay_로그아웃 하기_20210408
	@RequestMapping(value="logout.do", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		log.info("MemberController의 logout()호출됨");
		httpSession.invalidate();
		return "redirect:/main.do";
	}	
	
	// By jay_관리자 로그인창 호출 하기_20210428
	@RequestMapping(value="adminLogin.do", method = RequestMethod.GET)
	public String adminLoginForm() {
		log.info("MemberController의 adminLoginform()호출됨");
		return "admin_login";
	}
	
	// By jay_관리자 로그인 하기_20210428
	@RequestMapping(value="adminLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminLogin (@ModelAttribute AdminDTO admins, HttpSession session) {
		log.info(admins);
		log.info("MemberController의 adminLogin()호출됨");
		
		String result = null;
		AdminDTO userIdCheck = dao.adminGetOne(admins);
		log.info(userIdCheck);
		if(userIdCheck == null) {
			result= "idFail";
			return result;
		}
		
		if(admins.getAdmin_pwd().equals(userIdCheck.getAdmin_pwd())) {
			session.setAttribute("loginAdmin", userIdCheck);
			result = "success";
			
		} else {
			result = "pwdFail";
		}
		log.info(result);
		return result;
	}
	
	
}



