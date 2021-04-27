package com.members.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.members.dao.MembersDAO;
import com.members.domain.MembersDTO;

@Controller
public class MemberController{

	private Log log = LogFactory.getLog(getClass());
	MembersDAO dao;
	
	@Required
	@Autowired
	public void setDao(MembersDAO dao) {
		this.dao = dao;
		log.info("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping(value="register.do", method = RequestMethod.GET)
	public String form() {
		log.info("RegisterActionController의 form()호출됨");
		return "page_registration";
	}
	
	@RequestMapping(value="register.do", method = RequestMethod.POST)
	@ResponseBody
	public String signUp(MembersDTO members) {
		log.info(members);
		log.info("RegisterActionController의 signUp()호출됨");
		
		int result = dao.idCheck(members);
		System.out.println("중복은 1 아니면 0 = " + result );
		
		if(result == 1) {
			return "fail";
		} else if (result == 0) {
			dao.userJoin(members);
		}
		return "success";
	}
	
	@RequestMapping(value="login.do", method = RequestMethod.GET)
	public String login() {
		log.info("RegisterActionController의 login()호출됨");
		return "page_login";
	}	
	
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	@ResponseBody
	public String singIn (MembersDTO members, HttpSession session) {
		log.info(members);
		log.info("RegisterActionController의 signIn()호출됨");
		
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
	
	@RequestMapping(value="logout.do", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		log.info("RegisterActionController의 logout()호출됨");
		httpSession.invalidate();
		return "redirect:/main.do";
	}
	
	@RequestMapping(value="page_mypage_info.do", method = RequestMethod.GET)
	public String getMember(@RequestParam String member_id, Model model) {
		log.info(member_id);
		log.info("SelectActionController의 ()호출됨");
		MembersDTO mem=dao.getMember(member_id);
		model.addAttribute("mem", mem);
		return "page_mypage_info";
	}
	
	//로그인한 아이디값가지고 수정페이지로 이동
	@RequestMapping(value="page_mypage_modify.do", method = RequestMethod.GET)
	public String Modify(@RequestParam String member_id, Model model) {
		log.info("UpdateActionController의 ()호출됨");

		MembersDTO mem=dao.getMember(member_id);
		model.addAttribute("mem", mem);
		return "page_mypage_modify";
	}
	
	//회원 수정 하기
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	@ResponseBody
	public String update(@ModelAttribute MembersDTO members) {
		dao.updateMember(members);
		return "success";
	}
	
	
	//로그인한 아이디값가지고 탈퇴페이지 이동
	@RequestMapping(value="page_mypage_delete.do", method = RequestMethod.GET)
	public String deleteForm(@RequestParam String member_id, Model model) {
		log.info("DeleteActionController의 logout()호출됨");

		MembersDTO mem=dao.getMember(member_id);
		model.addAttribute("mem", mem);
		return "page_mypage_delete";
	}
	
	//회원 탈퇴 하기
	@RequestMapping(value="delete.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteUp(@ModelAttribute MembersDTO members, HttpSession session) {
		
		log.info(members);
		log.info("MemberController의 deleteUp()호출됨");
		
		String result = null;
		MembersDTO userIdCheck = dao.getId(members);
		log.info(userIdCheck);
		

		if(members.getMember_pwd().equals(userIdCheck.getMember_pwd())) {
			session.invalidate();
			dao.deleteMember(members);
			result = "success";
		} else {
			result = "pwdFail";
		}
		log.info(result);
		return result;
	}
}

























