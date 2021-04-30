package com.evaluation.dao.copy;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.evaluation.domain.EvaluationDTO;
import com.evaluation.domain.EvaluationReplyDTO;
import com.evaluation.domain.TotalEvaluationDTO;

public interface EvaluationDAO{
	// 1.스터디 카페당 후기 보기
	public List<EvaluationDTO> evaluation_list(String cafe_id) throws DataAccessException;

	// 2. 전체 스터디 카페 후기 보기
	public List<TotalEvaluationDTO> total_evaluation_list() throws DataAccessException;

	// 3.스터디 카페당 댓글 불러오기
	public List<EvaluationReplyDTO> evaluation_reply_list(String cafe_id) throws DataAccessException;
		
	// 4. 스터디 카페당 후기 개수 추출하기
	public int getEvaluationRows(String cafe_id) throws DataAccessException;
	
}

