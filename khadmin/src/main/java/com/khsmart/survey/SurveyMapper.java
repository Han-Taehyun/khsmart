package com.khsmart.survey;

import java.util.List;

public interface SurveyMapper {
	List<Survey> getSurveyList(SurveyExample example);

	Integer countBySvtype(SurveyExample example);

	Survey getSurvey(Integer sn);

	Integer updateSurveyBySn(Survey survey);

	Integer insertSurvey(Survey survey);
	
	Integer deleteSurvey(Integer sn);
	
	List<Survey> getAllSurveyList();
}
