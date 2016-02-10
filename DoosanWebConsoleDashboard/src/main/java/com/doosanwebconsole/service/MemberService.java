package com.doosanwebconsole.service;

import java.text.ParseException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.doosanwebconsole.vo.MemberVO;

public interface MemberService {
	Map<String, Object> selectMember(Map<String, String> paramMap, HttpServletRequest request);

	void insertMember(Map<String, String> paramMap) throws ParseException;

	MemberVO selectMemberById(String id);
}
