package com.cafe.dao;
// List, ArrayList => 글 목록 보기
import java.util.List;

import org.springframework.dao.DataAccessException; // 스프링 전용 예외처리 클래스 -> try ~ catch를 사용 x => 예외가 발생이 될때 처리를 해준다.

import com.cafe.domain.CafeDTO;

public interface CafeDAO{
	
	// 1.카페 목록 보기
	public CafeDTO list(String id) throws DataAccessException;
	
	/*
	 * // 2.회원 가입하기 public void register(Mem mem) throws DataAccessException;
	 * 
	 * // 3. 카페 예약하기 public void reservate(Reservation reservation) throws
	 * DataAccessException;
	 */
	
	// 4.카페 전체 출력하기
	public List<CafeDTO> lookcafe() throws DataAccessException;
}

