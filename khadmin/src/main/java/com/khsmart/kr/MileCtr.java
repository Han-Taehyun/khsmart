package com.khsmart.kr;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import edumgt.common.util.FileUtil;
import edumgt.common.util.FileVO;
import edumgt.common.util.SearchVO;

@Controller
public class MileCtr {

	@Autowired
	private MileSvc mileSvc;

	@RequestMapping(value = "/mileList")
	public String mileList(SearchVO searchVO, ModelMap modelMap) {

		searchVO.pageCalculate(mileSvc.selectMileCount(searchVO)); // startRow, endRow

		List<?> listview = mileSvc.selectMileList(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "mile/mileList";
	}

	@RequestMapping(value = "/mileForm")
	public String mileForm(HttpServletRequest request, ModelMap modelMap) {
		String sn = request.getParameter("sn");

		if (sn != null) {
			MileVO mileInfo = mileSvc.selectMileOne(sn);
			List<?> listview = mileSvc.selectMileList(sn);

			modelMap.addAttribute("mileInfo", mileInfo);
			modelMap.addAttribute("listview", listview);
		}
		return "mile/mileForm";
	}

	@RequestMapping(value = "/mileRead")
	public String mileRead(HttpServletRequest request, ModelMap modelMap) {

		String sn = request.getParameter("sn");
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");

		String orderKeyword = "";
		if (request.getParameter("orderKeyword") != null) {
			orderKeyword = request.getParameter("orderKeyword");
		}

		@SuppressWarnings("unused")
		String page = "1";
		if (request.getParameter("page") != null) {
			page = request.getParameter("page");
		} else {
		}

		edumgt.common.util.SearchVO searchVO = new edumgt.common.util.SearchVO();
		searchVO.setOrderKeyword(orderKeyword);
		searchVO.setSearchType(searchType);
		searchVO.setSearchKeyword(searchKeyword);

		edumgt.common.util.PageVO pageVO = new edumgt.common.util.PageVO();
		pageVO.setPage(1);

		MileVO mileInfo = mileSvc.selectMileOne(sn);
		List<?> listview = mileSvc.selectMileList(sn);

		modelMap.addAttribute("mileInfo", mileInfo);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);
		modelMap.addAttribute("pageVO", pageVO);

		return "mile/mileRead";

	}

	@RequestMapping(value = "/mileSave")
	public String mile2Save(HttpServletRequest request, MileVO mileInfo, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");
		String orderKeyword = request.getParameter("orderKeyword");

		@SuppressWarnings("unused")
		String page = "1";
		if (request.getParameter("page") != null) {
			page = request.getParameter("page");
		} else {
		}

		mileSvc.insertMile(mileInfo);

		edumgt.common.util.SearchVO searchVO = new edumgt.common.util.SearchVO();
		searchVO.setOrderKeyword(orderKeyword);
		searchVO.setSearchType(searchType);
		searchVO.setSearchKeyword(searchKeyword);

		edumgt.common.util.PageVO pageVO = new edumgt.common.util.PageVO();
		pageVO.setPage(1);

		modelMap.addAttribute("mileInfo", mileInfo);

		modelMap.addAttribute("searchVO", searchVO);
		modelMap.addAttribute("pageVO", pageVO);

		return "mile/mileRead";
	}

	@RequestMapping(value = "/mileDelete")
	public String mileDelete(HttpServletRequest request) {

		String sn = request.getParameter("sn");
		mileSvc.deleteMileOne(sn);

		return "redirect:/mileList";
	}

}
