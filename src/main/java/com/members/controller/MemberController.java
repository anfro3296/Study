package com.members.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.members.dao.MembersDAO;
import com.members.domain.MembersDTO;

@Controller
public class MemberController {

    private Log log = LogFactory.getLog(getClass());
    MembersDAO dao;

    @Required
    @Autowired
    public void setDao(MembersDAO dao) {
        this.dao = dao;
        log.info("setDao() 호출됨(dao)=>" + dao);
    }

    @RequestMapping(value = "register.do", method = RequestMethod.GET)
    public String form() {
        log.info("RegisterActionController의 form()호출됨");
        return "page_registration";
    }

    @RequestMapping(value = "register.do", method = RequestMethod.POST)
    @ResponseBody
    public String signUp(MembersDTO members) {
        log.info(members);
        log.info("RegisterActionController의 signUp()호출됨");

        int result = dao.idCheck(members);
        System.out.println("중복은 1 아니면 0 = " + result);

        if (result == 1) {
            return "fail";
        } else if (result == 0) {
            dao.userJoin(members);
        }
        return "success";
    }

    @RequestMapping(value = "login.do", method = RequestMethod.GET)
    public String login() {
        log.info("RegisterActionController의 login()호출됨");
        return "page_login";
    }

    @RequestMapping(value = "login.do", method = RequestMethod.POST)
    @ResponseBody
    public String singIn(MembersDTO members, HttpSession session) {
        log.info(members);
        log.info("RegisterActionController의 signIn()호출됨");

        String result = null;
        MembersDTO userIdCheck = dao.getId(members);
        log.info(userIdCheck);
        if (userIdCheck == null) {
            result = "idFail";
        }

        if (members.getMember_pwd().equals(userIdCheck.getMember_pwd())) {
            session.setAttribute("loginUser", userIdCheck);
            result = "success";
        } else {
            result = "pwdFail";
        }
        log.info(result);
        return result;
    }

    @RequestMapping(value = "logout.do", method = RequestMethod.GET)
    public String logout(HttpSession httpSession) {
        log.info("RegisterActionController의 logout()호출됨");
        httpSession.invalidate();
        return "redirect:/main.do";
    }
}



