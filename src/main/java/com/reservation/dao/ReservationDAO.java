package com.reservation.dao;

import java.util.List;

import org.springframework.dao.DataAccessException; // 스프링 전용 예외처리 클래스 -> try ~ catch를 사용 x => 예외가 발생이 될때 처리를 해준다.

import com.reservation.domain.MemberOrderListDTO;
import com.reservation.domain.ReservationDTO;

public interface ReservationDAO {

    // 카페 예약하기
    public void reservate(ReservationDTO reservation) throws DataAccessException;

    // 회원이 예약한 정보 불러오기
	public List<MemberOrderListDTO> getMemberOrders(String member_id);
    
	// 예약 취소하기
	public void orderCancel(String reser_number);
	  
	// 예약 내역 갯수 확인하기
	public int getOrderNum(String member_id);
    
}

