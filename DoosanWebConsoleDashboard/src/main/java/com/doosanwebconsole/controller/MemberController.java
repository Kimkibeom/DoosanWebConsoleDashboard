package com.doosanwebconsole.controller;

import java.text.ParseException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.doosanwebconsole.service.MemberService;
import com.doosanwebconsole.vo.MemberVO;

@Controller
public class MemberController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginService")
	private MemberService loginService;
	
	@RequestMapping(value="/securityLogin.do")
	public String acceptLogin(@RequestParam Map<String, String> paramMap, ModelMap model, HttpServletRequest request){
		MemberVO resultVO = new MemberVO();
		
		resultVO = loginService.selectMember(paramMap);
		
		
		
		return null;
	}
	
	@RequestMapping(value="/insertMember.do")
	public String insertMember(@RequestParam Map<String, String> paramMap, ModelMap model) throws ParseException{
		
		loginService.insertMember(paramMap);
		
		return "index";
	}
}
