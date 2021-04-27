package com.members.dao;
import com.members.domain.MembersDTO;



public interface MembersDAO{
	public int idCheck(MembersDTO members);
	public void userJoin(MembersDTO members);
	
	public MembersDTO getId(MembersDTO members);
	public int getPwd(MembersDTO members);
	
	//마이페이지(회원정보보기)
	public MembersDTO getMember(String member_id);
	
	//회원정보수정
	public void updateMember(MembersDTO members);
	
	//회원정보탈퇴(삭제)
	public void deleteMember(MembersDTO members);
}

