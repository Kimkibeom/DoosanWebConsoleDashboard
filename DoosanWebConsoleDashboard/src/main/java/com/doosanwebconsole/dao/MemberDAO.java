package com.doosanwebconsole.dao;

import org.springframework.stereotype.Repository;

import com.doosanwebconsole.common.AbstractDAO;
import com.doosanwebconsole.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAO extends AbstractDAO{

	public void insertMember(MemberVO memberVO) {
		insert("member.insertMember", memberVO);
	}

	public MemberVO selectMemberById(String member_id) {
		MemberVO memberVO = (MemberVO) selectOne("member.selectMemberById", member_id);
		
		return memberVO;
	}

	public MemberVO selectOneMember(MemberVO memberVO) {
		return (MemberVO)selectOne("member.selectOneMember", memberVO);
	}
	
}
