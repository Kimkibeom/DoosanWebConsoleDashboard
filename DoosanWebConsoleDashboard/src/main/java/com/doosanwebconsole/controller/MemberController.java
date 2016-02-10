package com.doosanwebconsole.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.doosanwebconsole.service.MemberService;
import com.doosanwebconsole.vo.MemberVO;
import com.google.gson.Gson;

@Controller
public class MemberController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginService")
	private MemberService memberService;
	
	@RequestMapping(value="/securityLogin.do")
	public String acceptLogin(@ModelAttribute("MemberVO") MemberVO memberVO, ModelMap model, HttpServletRequest request){
		String userIP = request.getRemoteAddr();
		MemberVO resultVO = new MemberVO();
		
		resultVO = memberService.selectMember(memberVO);
		if(resultVO == null){
			model.addAttribute("result", "FAILED");
			return "/member/MemberLogin";
		}else{
			model.addAttribute("result", "SUCCESS");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("member_id", resultVO.getMember_id());
			map.put("password", resultVO.getMember_password());
			request.getSession().setAttribute("MemberVO", resultVO);
			request.getSession().setAttribute("user", map);
			model.addAttribute("MemberVO", resultVO);
			model.addAttribute("userIP", userIP);
		}
		
		return "MainView";
	}
	
	@RequestMapping(value="/insertMember.do")
	public void insertMember(@RequestParam Map<String, String> paramMap, HttpServletResponse response, ModelMap model) throws Exception{
		memberService.insertMember(paramMap);
		model.addAttribute("result","success");
		HashMap<String, String> map = new HashMap<String,String>();
		map.put("resultMsg", "SUCCESS");
		Gson gson = new Gson();
		PrintWriter pw = null;
		response.setContentType("application/json");
		response.setContentType("text/xml;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		pw = new PrintWriter(response.getWriter());
		pw.println(gson.toJson(map));
		pw.flush();
		pw.close();
	}
	
	@RequestMapping(value="/id_validation.do")
	public void validateId(@RequestParam("msgCd") String msgForm, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		MemberVO memberVO = memberService.selectMemberById(msgForm);
		
		Gson gson = new Gson();
		PrintWriter pw = null;
		response.setContentType("application/json");
		response.setContentType("text/xml;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		pw = new PrintWriter(response.getWriter());
		pw.println(gson.toJson(memberVO));
		pw.flush();
		pw.close();
	}
	
	@RequestMapping(value="/Logout.do")
	public String logoutMember(HttpServletRequest request){
		request.getSession().invalidate();
		return "MainView";
	}
}
