package com.notice.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.notice.domain.NoticeDTO;

public interface NoticeDAO{
	// 1.글 목록 보기
	public List<NoticeDTO> noticeList() throws DataAccessException;
	
	// 2-1 글 상세보기 - 조회수 증가시키기
	public void updateReadcnt(int notice_number) throws DataAccessException;

	// 2-2 글 상세보기 - 게시물 번호에 해당하는 레코드 한개 얻어오기
	public NoticeDTO retrieve(int notice_number) throws DataAccessException;

}

