package com.ultarischool.surveypool;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ultarischool.codet.codet;
import com.ultarischool.codet.codetExample;



@Controller 
public class SurveypoolCtr {

	@Autowired
	private SurveypoolSvc surveypoolSvc;
	

	@RequestMapping(value = "/surveyList")
	public String surveyList(HttpServletRequest request, surveypoolExample example, ModelMap modelMap) {

		
		List<?> listrel3  = surveypoolSvc.selectListSvType();
		modelMap.addAttribute("listrel3", listrel3);

		String svtype = "";
		if ( request.getParameter("svtype") != null ) { 
			svtype = request.getParameter("svtype");
			example.setSvtype(svtype);

		}
		
		
		example.pageCalculate( surveypoolSvc.countByExample2(example) ); 

		List<?> listview  = surveypoolSvc.selectByExample2(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);
		

		return "survey/list";
	}
	
	@RequestMapping(value = "/surveyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveyForm(HttpServletRequest request, surveypool surveypool, 
			ModelMap modelMap) {
		
		List<?> cdctlist  = surveypoolSvc.selectCdCtusfk();
		modelMap.addAttribute("cdctlist", cdctlist);


		return "survey/detail";
	}
	
	@RequestMapping(value = "/surveyRead", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveyRead(HttpServletRequest request,  surveypool surveypool, 
			ModelMap modelMap) {


		String sn = request.getParameter("sn");
		surveypool = surveypoolSvc.selectByPrimaryKey2(Integer.parseInt(sn));
		
		String ctudsn = "";
		ctudsn = surveypoolSvc.selectOneCtSn(Integer.parseInt(sn));
		
		List<?> cdctlist  = surveypoolSvc.selectCdCtusfk();
		modelMap.addAttribute("cdctlist", cdctlist);

		modelMap.addAttribute("surveypool", surveypool);
		
		System.out.println(" ctudsn ------------------- " + ctudsn );
		
		modelMap.addAttribute("ctudsn", ctudsn);

		return "survey/detail";
	}
	
	@RequestMapping(value = "/surveyDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveyDel(HttpServletRequest request,  surveypool surveypool, 
			ModelMap modelMap) {


		String sn = request.getParameter("sn");
		surveypoolSvc.deleteSvy(Integer.parseInt(sn));
		
		

		return "redirect:surveyList";
	}
	
	@RequestMapping(value = "/surveySave", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveySave( surveypoolExample example, 
			HttpServletRequest request,  surveypool surveypool,   
			ModelMap modelMap, RedirectAttributes redirectAttributes) {

		String ctudsn = "";
		ctudsn = request.getParameter("ctudsn");
		
		String svyMaxSn = "";
		
		
		if ( surveypool.getSn() == null ) {

			surveypoolSvc.insert(surveypool);
			
			svyMaxSn = surveypoolSvc.selMaxSn();
			
			
			
			
			surveypool svy2 = new surveypool();
			
			svy2.setSvyno(svyMaxSn);
			
			svy2.setCtudsn(ctudsn);
			
			
			System.out.println(" svy2.getSvyno() ------------------- " + svy2.getSvyno() );
			
			surveypoolSvc.insertCtCdSN(svy2);
			
		
		} else { 
			surveypoolSvc.updateByPrimaryKey2(surveypool);
			
			
			surveypool svy2 = new surveypool();
			
			svy2.setSvyno(String.valueOf(surveypool.getSn()));
			svy2.setCtudsn(ctudsn);
			
			surveypoolSvc.updateCtCdSN(svy2);
			
		}

		redirectAttributes.addAttribute("svtype", surveypool.getSvtype());
		return "redirect:surveyList";
		


	}

	
	
	@RequestMapping(value = "/surveypoolForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveypoolForm(HttpServletRequest request, surveypool surveypool, surveypool survey, 
			ModelMap modelMap) {

		
		survey = surveypoolSvc.selectByPrimaryKey2(Integer.parseInt(surveypool.getSvyno()));
		modelMap.addAttribute("survey", survey);
		return "surveypool/detail";
	}
	
	
	
	

	@RequestMapping(value = "/surveypoolList")
	public String surveypoolList(HttpServletRequest request,surveypoolExample example, ModelMap modelMap) {

		
		List<?> listrel3  = surveypoolSvc.selectListSvy();
		modelMap.addAttribute("listrel3", listrel3);

		String svyno = "";
		if ( request.getParameter("svyno") != null ) { 
			svyno = request.getParameter("svyno");

		}
		
		
		
		example.pageCalculate( surveypoolSvc.countByExample(example) ); // startRow, endRow
		
		

		List<?> listview  = surveypoolSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);
		

		return "surveypool/list";
	}


	@RequestMapping(value = "/surveypoolSave", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveypoolSave( surveypoolExample example, 
			HttpServletRequest request,  surveypool surveypool,   
			ModelMap modelMap, RedirectAttributes redirectAttributes) {

		if ( surveypool.getSn() == null ) {
			surveypoolSvc.insertSvypool(surveypool);
		
		
		} else { 
			surveypoolSvc.updateByPrimaryKey(surveypool);
			
		}

		redirectAttributes.addAttribute("svyno", surveypool.getSvyno());
		return "redirect:surveypoolList";
		


	}




	@RequestMapping(value = "/surveypoolRead", method = {RequestMethod.GET, RequestMethod.POST})
	public String surveypoolRead(HttpServletRequest request,  surveypool surveypool, surveypool survey, 
			ModelMap modelMap) {


		String sn = request.getParameter("sn");
		surveypool = surveypoolSvc.selectByPrimaryKey(Integer.parseInt(sn));
		
		survey = surveypoolSvc.selectByPrimaryKey2(Integer.parseInt(surveypool.getSvyno()));
		modelMap.addAttribute("survey", survey);

		modelMap.addAttribute("surveypool", surveypool);

		return "surveypool/detail";
	}



}
