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
public class Coupon2Ctr {

	@Autowired
	private Coupon2Svc coupon2Svc;

	@RequestMapping(value = "/coupon2List")
	public String coupon2List(SearchVO searchVO, ModelMap modelMap) {

 		
		
		searchVO.pageCalculate(coupon2Svc.selectCoupon2Count(searchVO)); // startRow, endRow

		List<?> listview = coupon2Svc.selectCoupon2List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "coupon2/Coupon2List";
	}

	@RequestMapping(value = "/coupon2Form")
	public String coupon2Form(HttpServletRequest request, ModelMap modelMap) {
		String id = request.getParameter("id");
		if (id != null) {
			Coupon2VO couponInfo = coupon2Svc.selectCoupon2One(id);
			List<?> listview = coupon2Svc.selectCoupon2FileList(id);

			modelMap.addAttribute("couponInfo", couponInfo);
			modelMap.addAttribute("listview", listview);
		}
		return "coupon2/Coupon2Form";
	}
	
	@RequestMapping(value = "/coupon2Read")
	public String coupon2Read(HttpServletRequest request, ModelMap modelMap) {
		String id = request.getParameter("id");
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");
		
		String orderKeyword = "";
		if ( request.getParameter("orderKeyword") != null ) {
			orderKeyword = request.getParameter("orderKeyword");
		}
		
		@SuppressWarnings("unused")
		String page = "1";
		if ( request.getParameter("page") != null ) {
		page = request.getParameter("page");} else {}
		
		edumgt.common.util.SearchVO searchVO = new edumgt.common.util.SearchVO();
		searchVO.setOrderKeyword(orderKeyword);
		searchVO.setSearchType(searchType);
		searchVO.setSearchKeyword(searchKeyword);
		
		edumgt.common.util.PageVO pageVO = new edumgt.common.util.PageVO();
		pageVO.setPage(1);

		Coupon2VO couponInfo = coupon2Svc.selectCoupon2One(id);
		List<?> listview = coupon2Svc.selectCoupon2FileList(id);

		modelMap.addAttribute("couponInfo", couponInfo);
		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);
		modelMap.addAttribute("pageVO", pageVO);
		return "coupon2/Coupon2Read";

	}

	@RequestMapping(value = "/coupon2Save")
	public String coupon2Save(HttpServletRequest request, Coupon2VO coupon2Info, ModelMap modelMap) {
		String id = "";
		if ( request.getParameter("id") != null ) {
			id = request.getParameter("id");
		}
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");
		String orderKeyword = request.getParameter("orderKeyword");
		
		@SuppressWarnings("unused")
		String page = "1";
		if ( request.getParameter("page") != null ) {
		page = request.getParameter("page");} else {}
		
		String[] fileno = request.getParameterValues("fileno");
		FileUtil fs = new FileUtil();
		List<FileVO> filelist = fs.saveAllFiles(coupon2Info.getUploadfile());
		coupon2Svc.insertCoupon2(coupon2Info, filelist, fileno);

		
		edumgt.common.util.SearchVO searchVO = new edumgt.common.util.SearchVO();
		searchVO.setOrderKeyword(orderKeyword);
		searchVO.setSearchType(searchType);
		searchVO.setSearchKeyword(searchKeyword);
		
		edumgt.common.util.PageVO pageVO = new edumgt.common.util.PageVO();
		pageVO.setPage(1);

		if ( id.equals("") ) {
			id = coupon2Svc.selectMaxId();
		}
		
		Coupon2VO couponInfo = coupon2Svc.selectCoupon2One(id);
		List<?> listview = coupon2Svc.selectCoupon2FileList(id);

		modelMap.addAttribute("couponInfo", couponInfo);
		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);
		modelMap.addAttribute("pageVO", pageVO);
		return "coupon2/Coupon2Read";
	}

	

	@RequestMapping(value = "/coupon2Delete")
	public String coupon2Delete(HttpServletRequest request) {
		String id = request.getParameter("id");
		coupon2Svc.deleteCoupon2One(id);
		return "redirect:/coupon2List";
	}

}
