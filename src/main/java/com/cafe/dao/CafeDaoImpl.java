package com.cafe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.cafe.domain.CafeDTO;

@Repository
public class CafeDaoImpl implements CafeDAO {

	@Autowired
	public SqlSession sqlSession;
	
	@Override
	public CafeDTO list(String id) throws DataAccessException {
		return sqlSession.selectOne("list", id);
	}

	@Override
	public List<CafeDTO> lookcafe() throws DataAccessException {
		// TODO Auto-generated method stub
		return sqlSession.selectList("lookcafe");
	}

	@Override
	public List<CafeDTO> newCafe() throws DataAccessException {
		return sqlSession.selectList("newCafe");
		}

	@Override
	public List<CafeDTO> recommendCafe() throws DataAccessException {
		// TODO Auto-generated method stub
		return sqlSession.selectList("recommendCafe");
	}
	
	
}
