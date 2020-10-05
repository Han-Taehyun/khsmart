package com.ultarischool.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class B2BBoard1Ctr {

	@Autowired
	private Posts1Svc posts1Svc;

	@RequestMapping(value = "/B2BBoardList")
	public String posts1(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}

		searchVO.setCode2(code2);

		searchVO.pageCalculate(posts1Svc.selectB2BBoardCount(searchVO));

		List<?> listview = posts1Svc.selectB2BBoardList(searchVO);

		List<Posts1VO> etcgolist = posts1Svc.selListB2B();

		modelMap.addAttribute("etcgolist", etcgolist);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "posts/B2BBoardList";

	}

	@RequestMapping(value = "/B2BBoardForm")
	public String b2posts1Form(HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		String etcgoid = "0";
		if (request.getParameter("code2") != null) {
			etcgoid = request.getParameter("code2");
		}
		
		String elsname = "";
		elsname = posts1Svc.selectElsName(Integer.parseInt(etcgoid));

		modelMap.addAttribute("etcgoid", etcgoid);
		modelMap.addAttribute("elsname", elsname);
		return "posts/B2BBoardForm";
	}

	@RequestMapping(value = "/B2BBoardRead")
	public String b2posts1Read(HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		String sn = request.getParameter("sn");

		posts1Info = posts1Svc.selectPosts1One(sn);

		modelMap.addAttribute("posts1Info", posts1Info);

		return "posts/B2BBoardRead";
	}

	@RequestMapping(value = "/B2BBoardSave")
	public String posts1Save(SearchVO searchVO, HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		posts1Svc.insertB2BBoard(posts1Info);

		return "posts/B2BBoardList";
	}

	@RequestMapping(value = "/B2BBoardUp")
	public String posts1Up(SearchVO searchVO, HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		posts1Svc.insertB2BBoard(posts1Info);

		return "posts/B2BBoardList";
	}

	@RequestMapping(value = "/B2BBoardDelete")
	public String posts1Delete(HttpServletRequest request, SearchVO searchVO, Posts1VO posts1Info, ModelMap modelMap) {

		return "posts/B2BBoardList";
	}

}
