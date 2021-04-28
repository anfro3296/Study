package com.evaluation.dao.copy;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.evaluation.domain.EvaluationDTO;
import com.evaluation.domain.TotalEvaluationDTO;
import com.notice.domain.NoticeDTO;

@Repository
public class EvaluationDaoImpl implements EvaluationDAO {

	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<EvaluationDTO> evaluation_list(String cafe_id) throws DataAccessException {
		return sqlSession.selectList("evaluation_list", cafe_id);
	}

	@Override
	public List<TotalEvaluationDTO> total_evaluation_list() throws DataAccessException {
		return sqlSession.selectList("evaluation_total_list");
	}
	

	
}
