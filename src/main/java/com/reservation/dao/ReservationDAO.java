package com.reservation.dao;

import org.springframework.dao.DataAccessException; // 스프링 전용 예외처리 클래스 -> try ~ catch를 사용 x => 예외가 발생이 될때 처리를 해준다.

import com.reservation.domain.ReservationDTO;

public interface ReservationDAO {

    // 3. 카페 예약하기
    public void reservate(ReservationDTO reservation) throws DataAccessException;


}

