package com.ultarischool.surveypool;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khsmart.survey.Survey;
import com.khsmart.survey.SurveySvc;

import com.ultarischool.usercode.UsercodeExample;
import com.ultarischool.usercode.UsercodeSvc;
import com.ultarischool.usercode.UsercodeVO;

@Controller
public class SurveypoolCtr {

	@Autowired
	private SurveypoolSvc surveypoolSvc;

	@Autowired
	private SurveySvc surveySvc;

	@Autowired
	private UsercodeSvc usercodeSvc;
	
	@RequestMapping(value = "/prev")
	public String prev(HttpServletRequest request, surveypoolExample example, ModelMap modelMap) {
		
		
		String svyno = request.getParameter("svyno");
		modelMap.addAttribute("svyno", svyno);
		
		String uuid = request.getParameter("uuid");
		modelMap.addAttribute("uuid", uuid);
		
		example.setIsvyno(Integer.parseInt(svyno));
		example.setUuid(uuid);
		
		int count = 0;
		count = surveypoolSvc.getSvynoUuid(example);
		
		if ( count > 0) {
			uuid = UUID.randomUUID().toString().replace("-","");
			modelMap.addAttribute("uuid", uuid);
		}
		
		
		modelMap.addAttribute("count", count);
		
		return "prev/main";
	}

	@RequestMapping(value = "/surveypoolList")
	public String surveypoolList(HttpServletRequest request, surveypoolExample example, ModelMap modelMap) {
		
		

		@SuppressWarnings("unused")
		String svyno = "";
		if (request.getParameter("svyno") != null) {
			svyno = request.getParameter("svyno");

		}
		
		List<Survey> surveyList = surveySvc.getAllSurveyList();
		
		example.pageCalculate(surveypoolSvc.countByExample(example)); 
		
		List<?> listview = surveypoolSvc.selectByExample(example);

		modelMap.addAttribute("surveyList", surveyList);
		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "surveypool/list";
	}

	@RequestMapping(value = "/surveypoolForm")
	public String surveypoolForm(HttpServletRequest request, surveypool surveypool, Survey survey, ModelMap modelMap) {
		List<Survey> surveyList = surveySvc.getAllSurveyList();


		modelMap.addAttribute("surveyList", surveyList);

		return "surveypool/form";
	}

	@RequestMapping(value = "/surveypoolAdd", method = RequestMethod.POST)
	public String surveypoolAdd(surveypool surveypool, RedirectAttributes redirectAttributes) {

		surveypoolSvc.insertSvypool(surveypool);

		redirectAttributes.addAttribute("svyno", surveypool.getSvyno());
		return "redirect:surveypoolList";

	}

	@RequestMapping(value = "/surveypoolSave", method = RequestMethod.POST)
	public String surveypoolSave(surveypool surveypool, RedirectAttributes redirectAttributes) {
		surveypoolSvc.updateBySn(surveypool);

		redirectAttributes.addAttribute("svyno", surveypool.getSvyno());

		return "redirect:surveypoolList";
	}

	@RequestMapping(value = "/surveypoolRead")
	public String surveypoolRead(HttpServletRequest request, surveypool surveypool, Survey survey, ModelMap modelMap) {

		UsercodeExample usercodeExample = new UsercodeExample();
		usercodeExample.setCode2("설문");

		List<UsercodeVO> usercodeList = usercodeSvc.getUsercodeListByCode2(usercodeExample);

		String sn = request.getParameter("sn");
		surveypool = surveypoolSvc.selectByPrimaryKey(Integer.parseInt(sn));
		survey = surveySvc.getSurvey(Integer.parseInt(surveypool.getSvyno()));

		ArrayList<SurveyBogi> tempList = new ArrayList<>();
		ArrayList<SurveyBogi> bogiList = new ArrayList<>();

		try {
			Class<?> surveypoolClass = Class.forName("com.ultarischool.surveypool.surveypool");
			Method methods[] = surveypoolClass.getDeclaredMethods();

			for (int i = 0; i < methods.length; i++) {
				String findMethod = methods[i].getName();
				
				for (int j = 0; j < 20; j++) {
					int index = j + 1;
					if (findMethod.equals("getBogi" + index)) {
						if (methods[i].invoke(surveypool) != null) {
							SurveyBogi surveyBogi = new SurveyBogi();
							String bogi = (String) methods[i].invoke(surveypool);

							surveyBogi.setIndex(index);
							surveyBogi.setBogi(bogi);

							for (int k = 0; k < methods.length; k++) {

								if (methods[k].getName().equals("getBogi" + index + "type")) {
									String bogiType = (String) methods[k].invoke(surveypool);

									surveyBogi.setBogiType(bogiType);
								
									tempList.add(surveyBogi);
									
									continue;
								}
							}
						}
					}
				}
			}
			
			for(int i=0; i< tempList.size(); i++) {
				for(int j=0; j<tempList.size(); j++) {
					if(i == tempList.get(j).getIndex()-1) {
						bogiList.add(tempList.get(j));
					}	
				}
			}
			
			System.out.println(bogiList);

		} catch (ClassNotFoundException e) {
			System.out.println("클래스를 찾을 수 없습니다.");
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		modelMap.addAttribute("survey", survey);
		modelMap.addAttribute("surveypool", surveypool);
		modelMap.addAttribute("bogiList", bogiList);
		modelMap.addAttribute("usercodeList", usercodeList);

		return "surveypool/detail";
	}

	@RequestMapping(value = "/surveypoolDelete", method = RequestMethod.POST)
	public String surveypoolDelete(HttpServletRequest request) {
		String sn = request.getParameter("sn");
		
		surveypoolSvc.deleteByPrimaryKey(Integer.parseInt(sn));

		return "redirect:surveypoolList";
	}
}
