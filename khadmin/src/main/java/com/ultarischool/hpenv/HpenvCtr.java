package com.ultarischool.hpenv;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class HpenvCtr {

	@Autowired
	private HpenvSvc hpenvSvc;

	@RequestMapping(value = "/hpenvList")
	public String hpenvList(hpenvExample example, ModelMap modelMap) {

		example.pageCalculate(hpenvSvc.countByExample(example)); // startRow, endRow

		List<?> listview = hpenvSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "hpenv/list";
	}

	@RequestMapping(value = "/hpenvForm")
	public String hpenvForm(HttpServletRequest request, hpenvExample example, ModelMap modelMap, hpenv cvo) {

		List<?> selcc = hpenvSvc.selCmsCode();

		
		modelMap.addAttribute("selcc", selcc);
		
		return "hpenv/detail";
	}

	@RequestMapping(value = "/hpenvRead")
	public String hpenvRead(HttpServletRequest request, hpenvExample example, ModelMap modelMap, hpenv cvo) {

		List<?> selcc = hpenvSvc.selCmsCode();

		cvo = hpenvSvc.selectByPrimaryKey(Integer.parseInt(request.getParameter("sn")));

		modelMap.addAttribute("selcc", selcc);
		modelMap.addAttribute("cvo", cvo);
		return "hpenv/detail";
	}

	@RequestMapping(value = "/hpenvSave")
	public String hpenvSv(hpenvExample example, ModelMap modelMap, hpenv cvo) {

		if (cvo.getSn() != null) {
			hpenvSvc.updateByPrimaryKeySelective(cvo);

		} else {
			hpenvSvc.insert(cvo);
		}

		return "redirect:hpenvList";
	}

	@RequestMapping(value = "/hpenv2List")
	public String hpenv2List(HttpServletRequest request, hpenvExample example, ModelMap modelMap) {

		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}

		example.pageCalculate(hpenvSvc.countByExampleLine( Integer.parseInt(code2) ) );

		List<?> listview = hpenvSvc.selectByExampleLine( Integer.parseInt(code2) );

		modelMap.addAttribute("listview", listview);
		
		example.setCode2(code2);
		
		modelMap.addAttribute("searchVO", example);

		List<?> courseList = hpenvSvc.selListCmsBig();

		modelMap.addAttribute("courseList", courseList);

		return "hpenv/list2";
	}

	@RequestMapping(value = "/hpenv2Del")
	public String PackCosDel(HttpServletRequest request, ModelMap modelMap, hpenv hpv) {

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");

		}
		
		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}
		
		hpv.setCosid2(Integer.parseInt(sn));
		hpv.setCmsbid2(Integer.parseInt(code2));

		hpenvSvc.delhpenv2(hpv);

		return "common/dummy";
	}
	
	@RequestMapping(value = "/hpenv2Form")
	public String hpenv2Form(HttpServletRequest request,  ModelMap modelMap, hpenv cvo, hpenvExample example) {

		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}

		hpenv packinfo = hpenvSvc.selCmbTitle(Integer.parseInt(code2));
		packinfo.setSn(Integer.parseInt(code2));
		modelMap.addAttribute("packinfo", packinfo);

		cvo.setSn(0);
		modelMap.addAttribute("cvo", cvo);
		
		List<hpenv> courseList = hpenvSvc.selectAllCourseForPck();
		modelMap.addAttribute("courseList", courseList);


		return "hpenv/cmsform";
	}
	
	@RequestMapping(value = "/hpenv2Save")
	public String hpenv2Save(HttpServletRequest request,  ModelMap modelMap,
			RedirectAttributes redirect, hpenv cvo, hpenvExample example
			) {

		String cmsbigid = "0";
		if (request.getParameter("cmsbigid") != null) {
			cmsbigid = request.getParameter("cmsbigid");
		}
		String cosid = "0";
		if (request.getParameter("cosid") != null) {
			cosid = request.getParameter("cosid");
		}
		String ord = "0";
		if (request.getParameter("ord") != null) {
			ord = request.getParameter("ord");
		}

		cvo.setCmsbigid2(Integer.parseInt(cmsbigid));
		cvo.setCosid2(Integer.parseInt(cosid));
		cvo.setOrd2(Integer.parseInt(ord));
		
		hpenvSvc.insertCmsCos(cvo);
		
		redirect.addAttribute("code2", cmsbigid);  

		

		return "redirect:hpenv2List";
	}
	
	
	

}
