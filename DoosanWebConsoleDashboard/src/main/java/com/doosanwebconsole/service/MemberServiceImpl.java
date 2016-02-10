package com.doosanwebconsole.service;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.doosanwebconsole.dao.MemberDAO;
import com.doosanwebconsole.vo.MemberVO;

@Service("loginService")
public class MemberServiceImpl implements MemberService{
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;

	@Override
	public Map<String, Object> selectMember(Map<String, String> paramMap, HttpServletRequest request) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		MemberVO memberVO = new MemberVO();
		memberVO.setMember_id(paramMap.get("member_id"));
		memberVO.setMember_password(paramMap.get("member_password"));
		MemberVO resultVO = memberDAO.selectOneMember(memberVO);
		
		if(resultVO == null){
			returnMap.put("returnMsg", "FAILED");
		}else{
			String userIP = request.getRemoteAddr();
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("member_id", resultVO.getMember_id());
			map.put("password", resultVO.getMember_password());
			request.getSession().setAttribute("MemberVO", resultVO);
			request.getSession().setAttribute("user", map);
			returnMap.put("returnMsg", "SUCCESS");
			returnMap.put("MemberVO", resultVO);
			returnMap.put("userIP", userIP);
		}
		returnMap.put("link", "MainView");
		return returnMap;
	}

	@Override
	public void insertMember(Map<String, String> paramMap) throws ParseException {
		String member_id = paramMap.get("member_id");
		String member_password = paramMap.get("member_password");
		String member_name = paramMap.get("member_name");
		String member_sex = paramMap.get("member_sex");
		String member_birth = paramMap.get("birth_year")+paramMap.get("birth_month")+paramMap.get("birth_day");
		String member_email = paramMap.get("member_email");
		String member_phone = paramMap.get("phone_first")+paramMap.get("phone_second")+paramMap.get("phone_third");
		
		MemberVO memberVO = new MemberVO();
		memberVO.setMember_id(member_id);
		memberVO.setMember_password(member_password);
		memberVO.setMember_name(member_name);
		memberVO.setMember_sex(member_sex);
		memberVO.setMember_birth(member_birth);
		memberVO.setMember_email(member_email);
		memberVO.setMember_phone(member_phone);
		
		memberDAO.insertMember(memberVO);
	}

	@Override
	public MemberVO selectMemberById(String id) {
		MemberVO resultVO = null;
		resultVO = memberDAO.selectMemberById(id);
		return resultVO;
	}
	
	
}
