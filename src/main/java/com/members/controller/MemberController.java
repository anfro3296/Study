package com.members.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.members.domain.AdminDTO;
import com.members.domain.MembersDTO;
import com.reservation.dao.ReservationDAO;
import com.reservation.domain.MemberOrderListDTO;
import com.reservation.domain.ReservationDTO;

@Controller
public class MemberController{

	private Log log = LogFactory.getLog(getClass());
	MembersDAO dao;
	ReservationDAO dao2;
	
	@Autowired
	public void setDao(MembersDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	public void setDao2(ReservationDAO dao2) {
		this.dao2 = dao2;
	}
	
	// By Jay_회원가입 폼 호출 하기_20210405
	@RequestMapping(value="register.do", method = RequestMethod.GET)
	public String form() {
		log.info("MemberController의 form()호출됨");
		return "page_registration";
	}
	
	// By Jay_회원 가입하기_20210405
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
	
	// By Jay_로그인 폼 호출 하기_20210406
	@RequestMapping(value="login.do", method = RequestMethod.GET)
	public String login() {
		log.info("MemberController의 login()호출됨");
		return "page_login";
	}	
	
	// By Jay_로그인 하기_20210406
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	@ResponseBody
	public String singIn (@ModelAttribute MembersDTO members, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) {
		log.info("MemberController의 signIn()호출됨");
		
		// page_login.jsp에서 아이디 기억하기 name값(remember) 가져오기
		String user_check = request.getParameter("remember_userId");
		
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
			
			if(user_check.equals("true")) {
				Cookie cookie = new Cookie("user_check", members.getMember_id());
				response.addCookie(cookie);
			} else {
				Cookie cookie = new Cookie("user_check", members.getMember_id());
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
	
		} else {
			result = "pwdFail";
		}
		log.info(result);
		return result;
	}
	
	// By Jay_로그아웃 하기_20210408
	@RequestMapping(value="logout.do", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) throws IOException {
		log.info("MemberController의 logout()호출됨");
		httpSession.invalidate();
		return "page_logout";
	}	
	
	// By Jay_관리자 로그인창 호출 하기_20210428
	@RequestMapping(value="adminLogin.do", method = RequestMethod.GET)
	public String adminLoginForm() {
		log.info("MemberController의 adminLoginform()호출됨");
		return "admin_login";
	}
	
	// By Jay_관리자 로그인 하기_20210428
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
	
	// // By Lsh_마이페이지 로그인한 회원정보 뿌리기_20210429
	@RequestMapping(value="page_mypage_info.do", method = RequestMethod.GET)
	public String getMember(@RequestParam String member_id, Model model) {
	     log.info(member_id);
	     log.info("MemberController의 ()호출됨");
	     MembersDTO mem=dao.getMember(member_id);
	     model.addAttribute("mem", mem);
	     return "page_mypage_info";
	}
	   
	// By Lsh_회원 수정 하기 폼으로 이동_20210429
	@RequestMapping(value="page_mypage_modify.do", method = RequestMethod.GET)
	public String Modify(@RequestParam String member_id, Model model) {
	     log.info("MemberController의 ()호출됨");

	     MembersDTO mem=dao.getMember(member_id);
	     model.addAttribute("mem", mem);
	     return "page_mypage_modify";
	}
	   
	// By Lsh_회원 수정 하기_20210429
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	@ResponseBody
	public String update(@ModelAttribute MembersDTO members) {
	     dao.updateMember(members);
	     return "success";
	}
	   
	// By Lsh_회원 탈퇴 하기 폼으로 이동_20210429
	@RequestMapping(value="page_mypage_delete.do", method = RequestMethod.GET)
	public String deleteForm(@RequestParam String member_id, Model model) {
	    log.info("MemberController의 deleteForm()호출됨");

	    MembersDTO mem=dao.getMember(member_id);
	    model.addAttribute("mem", mem);
	    return "page_mypage_delete";
	}
	   
	// By Lsh_회원 탈퇴 하기_20210429
	@RequestMapping(value="delete.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteUp(@ModelAttribute MembersDTO members, HttpSession session) {
	      
	    log.info(members);
	    log.info("MemberController의 deleteUp()호출됨");
	      
	    String result = null;
	    MembersDTO userIdCheck = dao.getId(members);
	    log.info(userIdCheck);
	      
	    //db에 담겨져있는 비밀번호와 입력한 비밀번호가 같다면 
	    //success(탈퇴) 틀리다면 pwdFail떨어져서 다시입력해야된다
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
	   
	// By Jay_회원 당 예약내역 불러오기_20210430
	@RequestMapping(value="page_mypage_selfReg.do", method = RequestMethod.GET)
	public String resForm(@RequestParam String member_id, Model model) {
	   log.info(member_id);
	   log.info("MemberController의 ()호출됨");
	   List<MemberOrderListDTO> OrderList=dao2.getMemberOrders(member_id);
	   int count = dao2.getOrderNum(member_id);
	   log.info(count);
	   model.addAttribute("OrderList", OrderList);
	   model.addAttribute("count", count);   
	   return "page_mypage_selfReg";
	 }
	
	// By Jay_회원 당 예약 내역 취소하기_20210430
	@RequestMapping(value="page_mypage_orderCancel.do", method = RequestMethod.GET)
	public String orderCancel(@RequestParam String member_id, @RequestParam String reser_number, Model model) {
	   log.info("MemberController의 ()호출됨");
	   dao2.orderCancel(reser_number);
	   
	   List<MemberOrderListDTO> OrderList=dao2.getMemberOrders(member_id);
	   int count = dao2.getOrderNum(member_id);
	   model.addAttribute("OrderList", OrderList);
	   model.addAttribute("count", count);   
	   
	   return "page_mypage_selfReg";
	 }
	
}



