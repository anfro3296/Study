package com.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.notice.domain.NoticeDTO;

@Repository
public class NoticeDaoImpl implements NoticeDAO {

	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<NoticeDTO> noticeList() throws DataAccessException {
		return sqlSession.selectList("noticeList");
	}
}
