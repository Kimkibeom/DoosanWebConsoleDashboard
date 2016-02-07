package com.doosanwebconsole.dao;

import org.springframework.stereotype.Repository;

import com.doosanwebconsole.common.AbstractDAO;
import com.doosanwebconsole.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAO extends AbstractDAO{

	public void insertMember(MemberVO memberVO) {
		insert("member.insertMember", memberVO);
	}
	
}
