package com.khsmart.survey;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.ultarischool.usercode.UsercodeExample;
import com.ultarischool.usercode.UsercodeSvc;
import com.ultarischool.usercode.UsercodeVO;

@Controller
public class SurveyCtr {
	
	@Autowired
	private SurveySvc surveySvc;
	
	@Autowired
	private UsercodeSvc usercodeSvc;
	
	@RequestMapping(value = "/surveyList")
	public String surveyList(HttpServletRequest request, SurveyExample surveyExample, ModelMap modelMap) {
		// 설문 분류 선택
		UsercodeExample usercodeExample = new UsercodeExample();
		usercodeExample.setCode2("설문");
		
		List<UsercodeVO> usercodeList = usercodeSvc.getUsercodeListByCode2(usercodeExample);
		
		surveyExample.pageCalculate(surveySvc.countBySvtype(surveyExample));
		
		List<Survey> surveyList = surveySvc.getSurveyList(surveyExample);

		modelMap.addAttribute("usercodeList",usercodeList);
		modelMap.addAttribute("surveyList", surveyList);
		modelMap.addAttribute("surveyExample", surveyExample);
		
		
		
		String uuid = UUID.randomUUID().toString().replace("-","");
		modelMap.addAttribute("uuid", uuid);

		return "survey/list";
	}
	
	@RequestMapping(value = "/surveyRead")
	public String surveyRead(HttpServletRequest request, Survey survey, ModelMap modelMap) {
		String sn = request.getParameter("sn");
		survey = surveySvc.getSurvey(Integer.parseInt(sn));
		
		modelMap.addAttribute("survey", survey);

		return "survey/detail";
	}
	
	@RequestMapping(value = "/surveySave", method= RequestMethod.POST)
	public String surveySave(Survey survey) {		
		surveySvc.updateSurveyBySn(survey);

		return "redirect:surveyList";
	}
	
	@RequestMapping(value = "/surveyInsert", method = RequestMethod.POST)
	public String surveyInsert(Survey survey) {
		surveySvc.insertSurvey(survey);
		
		return "redirect:surveyList";
	}
	

	@RequestMapping(value = "/surveyForm")
	public String surveyForm(ModelMap modelMap) {
		UsercodeExample usercodeExample = new UsercodeExample();
		usercodeExample.setCode2("설문");
		
		List<UsercodeVO> usercodeList = usercodeSvc.getUsercodeListByCode2(usercodeExample);
		
		modelMap.addAttribute("usercodeList", usercodeList);

		return "survey/form";
	}

	@RequestMapping(value = "/surveyDelete", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveyDel(HttpServletRequest request) {

		String sn = request.getParameter("sn");
		surveySvc.deleteSurvey(Integer.parseInt(sn));

		return "redirect:surveyList";
	}

}
