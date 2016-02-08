package com.doosanwebconsole.service;

import java.text.ParseException;
import java.util.Map;

import org.springframework.ui.ModelMap;

import com.doosanwebconsole.vo.MemberVO;

public interface MemberService {
	MemberVO selectMember(MemberVO memberVO);

	void insertMember(Map<String, String> paramMap) throws ParseException;

	MemberVO selectMemberById(String id);
}
