package com.notice.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.notice.domain.NoticeDTO;

public interface NoticeDAO{
	// 1.글 목록 보기
	public List<NoticeDTO> noticeList(Map<String,Object>map) throws DataAccessException;
	public int getRowCount(Map<String,Object>map);
	
	// 2-1 글 상세보기 - 조회수 증가시키기
	public void updateReadcnt(int notice_number) throws DataAccessException;

	// 2-2 글 상세보기 - 게시물 번호에 해당하는 레코드 한개 얻어오기
	public NoticeDTO retrieve(int notice_number) throws DataAccessException;

	// 3. 글 수정하기 - 게시물 번호에 해당하는 레코드 수정하기
	public void noticeUpdate(NoticeDTO noticeDTO) throws DataAccessException;

	// 4. 글 등록하기 - 게시물 번호 최대값 구하기
	public int getNewNum() throws DataAccessException;
	
	// 5. 글 등록하기 - 글쓰기
	public void noticeWrite(NoticeDTO noticeDTO) throws DataAccessException;
		
	// 6. 글 삭제하기
	public void noticeDelete(int notice_number) throws DataAccessException;
	
}

