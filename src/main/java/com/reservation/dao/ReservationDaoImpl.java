package com.reservation.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.reservation.domain.ReservationDTO;

@Repository
public class ReservationDaoImpl implements ReservationDAO {
	@Autowired
	public SqlSession sqlSession;
	
	 @Override 
	 public void reservate(ReservationDTO reservation) throws DataAccessException { 
		 sqlSession.insert("reservate", reservation); 	 
	}
}
