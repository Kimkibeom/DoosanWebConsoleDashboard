package com.doosanwebconsole.service;

import java.text.ParseException;
import java.util.Map;

import com.doosanwebconsole.vo.MemberVO;

public interface MemberService {
	MemberVO selectMember(Map<String, String> paramMap);

	void insertMember(Map<String, String> paramMap) throws ParseException;
}
