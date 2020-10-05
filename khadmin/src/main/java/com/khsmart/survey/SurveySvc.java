package com.khsmart.survey;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SurveySvc implements SurveyMapper {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Survey> getSurveyList(SurveyExample example) {
		return sqlSession.selectList("getSurveyList", example);
	}

	public Integer countBySvtype(SurveyExample example) {
		return sqlSession.selectOne("countBySvtype", example);
	}

	public Survey getSurvey(Integer sn) {
		return sqlSession.selectOne("getSurvey", sn);
	}

	public Integer updateSurveyBySn(Survey survey) {
		return sqlSession.update("updateSurveyBySn", survey);
	}

	public Integer insertSurvey(Survey survey) {
		return sqlSession.insert("insertSurvey", survey);
	}

	public Integer deleteSurvey(Integer sn) {
		return sqlSession.delete("deleteSurvey", sn);
	}

	public List<Survey> getAllSurveyList() {
		return sqlSession.selectList("getAllSurveyList");
	}

}
