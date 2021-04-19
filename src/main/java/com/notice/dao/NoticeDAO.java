package com.notice.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.notice.domain.NoticeDTO;

public interface NoticeDAO{
	// 1.글 목록 보기
	public List<NoticeDTO> noticeList() throws DataAccessException;
}

