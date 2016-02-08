package com.doosanwebconsole.service;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.doosanwebconsole.dao.MemberDAO;
import com.doosanwebconsole.vo.MemberVO;

@Service("loginService")
public class MemberServiceImpl implements MemberService{
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;

	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		return memberDAO.selectOneMember(memberVO);
		
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
