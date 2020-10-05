package com.ultarischool.surveypool;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SurveypoolApiCtr {
	@Autowired
	private SurveypoolSvc spSvc;

	@RequestMapping(value="/api/surveypools")
	public SurveypoolResponse response(@RequestParam(value = "svyno") Integer svyno) {
		List<surveypool> list = spSvc.getSurveypoolListBySvyno(svyno);
		
		List<SurveypoolVO> surveypoolList = new ArrayList<>();
		
		for(int t=0; t<list.size(); t++) {
			surveypool surveypool = list.get(t);
			
			ArrayList<SurveyBogi> tempList = new ArrayList<>();
			List<SurveyBogi> bogiList = new ArrayList<>();
			
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
				
				SurveypoolVO surveypoolVO = new SurveypoolVO();
				
				surveypoolVO.setSn(surveypool.getSn());
				surveypoolVO.setSvyno(surveypool.getSvyno());
				surveypoolVO.setTitle(surveypool.getTitle());
				surveypoolVO.setOdrno(surveypool.getOdrno());
				surveypoolVO.setType1(surveypool.getType1());
				surveypoolVO.setBogiList(bogiList);
				
				surveypoolList.add(surveypoolVO);
				

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
			
		}
		
		SurveypoolResponse spResponse = new SurveypoolResponse();
		spResponse.setItems(surveypoolList);
		
		System.out.println(spResponse);
		
		return spResponse;
	}

}
