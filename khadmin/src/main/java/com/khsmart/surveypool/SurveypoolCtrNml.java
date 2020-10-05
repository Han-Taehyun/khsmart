package com.khsmart.surveypool;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SurveypoolCtrNml {

	@Autowired
	private SurveypoolSvcNml surveypoolSvc;
	
	@RequestMapping(value = "/selectVwResponse")
	public String selectVwResponse(HttpServletRequest request, surveypoolExampleNml example,  ModelMap modelMap) {

		
		example.pageCalculate(surveypoolSvc.countVwResponse(example));
		
		List<?> splist = surveypoolSvc.selectVwResponse(example);
		modelMap.addAttribute("splist", splist);

		
		modelMap.addAttribute("searchVO", example);
		

		return "survey2/responseList";
	}
	
	@RequestMapping(value = "/selectVwResponseOne")
	public String selectVwResponseOne(HttpServletRequest request, surveypoolExampleNml example,  ModelMap modelMap) {

		
		String resvyno = "0";
		resvyno = request.getParameter("resvyno");
		
		
		String uuid = "0";
		uuid = request.getParameter("uuid");
		
		example.setIsvyno(Integer.parseInt(resvyno));
		example.setUuid(uuid);
		
		
		List<?> hhlist = surveypoolSvc.selectVwResHumanList(Integer.parseInt(resvyno));
		modelMap.addAttribute("hhlist", hhlist);
		
		
		example.pageCalculate(surveypoolSvc.countVwResponseOne(example));
		List<?> splist = surveypoolSvc.selectVwResponseOne(example);
		modelMap.addAttribute("splist", splist);

		surveypoolnml spnml = new surveypoolnml();
		spnml = surveypoolSvc.selectVwResponseOneTop(example);
		modelMap.addAttribute("spnml", spnml);
		

		return "survey2/ressvyList";
	}
	
	
	@RequestMapping(value = "/SchoolTrip")
	public String SchoolTrip(HttpServletRequest request, surveypoolExampleNml example,  ModelMap modelMap) {

		
		String uuid = "0";
		uuid = request.getParameter("uuid");
		
		
		example.setUuid(uuid);
		
		example.pageCalculate(surveypoolSvc.countVwResponseOne(example));
		List<?> splist = surveypoolSvc.selectVwResponseOne(example);
		modelMap.addAttribute("splist", splist);

		surveypoolnml spnml = new surveypoolnml();
		spnml = surveypoolSvc.selectVwResponseOneTop(example);
		modelMap.addAttribute("spnml", spnml);
		

		return "survey2/ressvyList2";
	}
	
	
	


	@RequestMapping(value = "/surveyNMLListEDM")
	public String surveyListEDM(HttpServletRequest request, surveypoolExampleNml example, ModelMap modelMap) {

		List<?> listrel3 = surveypoolSvc.selectListSvType();
		modelMap.addAttribute("listrel3", listrel3);

		String svtype = "";
		if (request.getParameter("svtype") != null) {
			svtype = request.getParameter("svtype");
			example.setSvtype(svtype);

		}

		example.pageCalculate(surveypoolSvc.countByExample2(example));

		List<?> listview = surveypoolSvc.selectByExample2(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "survey2/list";
	}

	@RequestMapping(value = "/surveyNMLFormEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveyFormEDM(HttpServletRequest request, surveypoolnml surveypool, ModelMap modelMap) {

		return "survey2/detail";
	}

	@RequestMapping(value = "/surveyNMLReadEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveyReadEDM(HttpServletRequest request, surveypoolnml surveypool, ModelMap modelMap) {

		String sn = request.getParameter("sn");
		surveypool = surveypoolSvc.selectByPrimaryKey2(Integer.parseInt(sn));

		String ctudsn = "";
		ctudsn = surveypoolSvc.selectOneCtSn(Integer.parseInt(sn));

		List<?> cdctlist = surveypoolSvc.selectCdCtusfk();
		modelMap.addAttribute("cdctlist", cdctlist);

		modelMap.addAttribute("surveypool", surveypool);

		modelMap.addAttribute("ctudsn", ctudsn);

		return "survey2/detail";
	}

	@RequestMapping(value = "/surveyNMLDeleteEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveyDeleteEDM(HttpServletRequest request, surveypoolnml surveypool, ModelMap modelMap) {

		String sn = request.getParameter("sn");
		surveypoolSvc.deleteSvy(Integer.parseInt(sn));

		return "redirect:surveyListEDM";
	}

	@RequestMapping(value = "/surveyNMLSaveEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveySaveEDM(surveypoolExampleNml example, HttpServletRequest request, surveypoolnml surveypool,
			ModelMap modelMap, RedirectAttributes redirectAttributes) {

		String ctudsn = "";
		ctudsn = request.getParameter("ctudsn");

		String svyMaxSn = "";

		if (surveypool.getSn() == null) {

			surveypoolSvc.insert(surveypool);

			svyMaxSn = surveypoolSvc.selMaxSn();

			surveypoolnml svy2 = new surveypoolnml();

			svy2.setSvyno(svyMaxSn);

			svy2.setCtudsn(ctudsn);

			surveypoolSvc.insertCtCdSN(svy2);

		} else {
			surveypoolSvc.updateByPrimaryKey2(surveypool);

			surveypoolnml svy2 = new surveypoolnml();

			svy2.setSvyno(String.valueOf(surveypool.getSn()));
			svy2.setCtudsn(ctudsn);

			surveypoolSvc.updateCtCdSN(svy2);

		}

		redirectAttributes.addAttribute("svtype", surveypool.getSvtype());
		return "redirect:surveyListEDM";

	}

	@RequestMapping(value = "/dynamicSvyRes", method = { RequestMethod.GET, RequestMethod.POST })
	public String dynamicSvyRes(HttpServletRequest request) {

		surveypoolnml sp = new surveypoolnml();

		String hidodr = "";
		String hidsvyno = "";
		String hiduuid = "";

		String hiduserans = "";
		String hidemail = "";
		String hidusername = "";

		if (request.getParameter("hiduserans") != null) {
			hiduserans = request.getParameter("hiduserans");
		}

		if (request.getParameter("hidemail") != null) {
			hidemail = request.getParameter("hidemail");
		}
		if (request.getParameter("hidusername") != null) {
			hidusername = request.getParameter("hidusername");
		}

		hidsvyno = request.getParameter("hidsvyno");
		hiduuid = request.getParameter("hiduuid");

		sp.setHidsvyno(hidsvyno);
		sp.setHiduuid(hiduuid);
		sp.setHiduserans(hiduserans);
		
		sp.setHidusername(hidusername);
		sp.setHidemail(hidemail);
		
		

		if (!hidemail.equals("") && !hidusername.equals("") && "".equals(hiduserans)) {

			surveypoolSvc.dynamicSvyResUp(sp);

		} else {
			
			if ( Integer.parseInt(hiduserans.substring(1,3).replace(":","")) > 9 ) {
				
				hidodr = hiduserans.substring(1, 3); //10 번 이상
			} else {
				hidodr = hiduserans.substring(1, 2); //10번 미만
			}
			
			
			sp.setHidodr(hidodr);

			surveypoolSvc.dynamicSvyRes(sp);
		}

		return "common/dummy3";

	}
	
	
	
	
	

	@RequestMapping(value = "/surveypoolNMLFormEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveypoolFormEDM(HttpServletRequest request, surveypoolnml surveypool, surveypoolnml survey,
			ModelMap modelMap) {

		survey = surveypoolSvc.selectByPrimaryKey2(Integer.parseInt(surveypool.getSvyno()));
		modelMap.addAttribute("survey", survey);
		return "surveypool2/detail";
	}

	@RequestMapping(value = "/surveypoolNMLListEDM")
	public String surveypoolListEDM(HttpServletRequest request, surveypoolExampleNml example, ModelMap modelMap) {

		List<?> listrel3 = surveypoolSvc.selectListSvy();
		modelMap.addAttribute("listrel3", listrel3);

		@SuppressWarnings("unused")
		String svyno = "";
		if (request.getParameter("svyno") != null) {
			svyno = request.getParameter("svyno");

		}

		example.pageCalculate(surveypoolSvc.countByExample(example)); // startRow, endRow

		List<?> listview = surveypoolSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "surveypool2/list";
	}

	@RequestMapping(value = "/surveypoolNMLSaveEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveypoolSaveEDM(surveypoolExampleNml example, HttpServletRequest request, surveypoolnml surveypool,
			ModelMap modelMap, RedirectAttributes redirectAttributes) {

		if (surveypool.getSn() == null) {
			surveypoolSvc.insertSvypool(surveypool);

		} else {
			surveypoolSvc.updateByPrimaryKey(surveypool);

		}

		redirectAttributes.addAttribute("svyno", surveypool.getSvyno());
		return "redirect:surveypoolListEDM";

	}

	@RequestMapping(value = "/surveypoolNMLReadEDM", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveypoolReadEDM(HttpServletRequest request, surveypoolnml surveypool, surveypoolnml survey,
			ModelMap modelMap) {

		String sn = request.getParameter("sn");
		surveypool = surveypoolSvc.selectByPrimaryKey(Integer.parseInt(sn));

		survey = surveypoolSvc.selectByPrimaryKey2(Integer.parseInt(surveypool.getSvyno()));
		modelMap.addAttribute("survey", survey);

		modelMap.addAttribute("surveypool", surveypool);

		return "surveypool2/detail";
	}

}
