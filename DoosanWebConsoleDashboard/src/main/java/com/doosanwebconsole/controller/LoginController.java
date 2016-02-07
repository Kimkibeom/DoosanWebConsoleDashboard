package com.doosanwebconsole.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.doosanwebconsole.service.LoginService;
import com.doosanwebconsole.vo.LoginVO;

@Controller
public class LoginController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping(value="/securityLogin.do")
	public String acceptLogin(@ModelAttribute LoginVO loginVO, ModelMap model, HttpServletRequest request){
		LoginVO resultVO = new LoginVO();
		
		resultVO = loginService.selectMember(loginVO);
		
		
		
		return null;
	}
}
