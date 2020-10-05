package com.khsmart.kr;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import edumgt.common.util.SearchVO;

@Controller
public class Coupon1Ctr {

	@Autowired
	private Coupon1Svc coupon1Svc;

	@RequestMapping(value = "/coupon1List")
	public String coupon1List(SearchVO searchVO, ModelMap modelMap) {

		searchVO.pageCalculate(coupon1Svc.selectCoupon1Count(searchVO)); // startRow, endRow

		List<?> listview = coupon1Svc.selectCoupon1List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "coupon1/Coupon1List";
	}

	@RequestMapping(value = "/coupon1Excel")
	public String coupon1Excel(SearchVO searchVO, ModelMap modelMap) {

		searchVO.pageCalculate(coupon1Svc.selectCoupon1Count(searchVO)); // startRow, endRow

		List<?> listview = coupon1Svc.selectCoupon1Excel(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "coupon1/Coupon1Excel";
	}

	@RequestMapping(value = "/coupon1Form")
	public String coupon1Form(HttpServletRequest request, ModelMap modelMap) {
		String cu_number = "";
		String cu_no = request.getParameter("cu_no");
		Coupon1VO couponInfo = new Coupon1VO();

		if (cu_no != null) {
			couponInfo = coupon1Svc.selectCoupon1One(cu_no);

		} else {

			Random rnd = new Random();
			String randomStr0 = String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
			String randomStr1 = String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
			String randomStr2 = String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
			String randomStr3 = String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));

			String randomStr4 = String.valueOf(rnd.nextInt(10));
			String randomStr5 = String.valueOf(rnd.nextInt(10));
			String randomStr6 = String.valueOf(rnd.nextInt(10));
			String randomStr7 = String.valueOf(rnd.nextInt(10));

			String cu_number1 = randomStr3 + randomStr4 + randomStr0 + randomStr3;
			String cu_number2 = randomStr1 + randomStr6 + randomStr2 + randomStr1;
			String cu_number3 = randomStr7 + randomStr5 + randomStr1 + randomStr2;

			cu_number = cu_number1 + "-" + cu_number2 + "-" + cu_number3;

		}
		couponInfo.setCu_number(cu_number);
		modelMap.addAttribute("couponInfo", couponInfo);

		return "coupon1/Coupon1Form";
	}

	@RequestMapping(value = "/coupon1Read")
	public String coupon1Read(HttpServletRequest request, ModelMap modelMap) {
		String cu_no = request.getParameter("cu_no");
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

		Coupon1VO couponInfo = coupon1Svc.selectCoupon1One(cu_no);

		modelMap.addAttribute("couponInfo", couponInfo);

		modelMap.addAttribute("searchVO", searchVO);
		modelMap.addAttribute("pageVO", pageVO);

		return "coupon1/Coupon1Read";

	}

	@RequestMapping(value = "/coupon1Save")
	public String coupon1Save(HttpServletRequest request, Coupon1VO coupon1Info, ModelMap modelMap) {
		String cu_no = "";
		if (request.getParameter("cu_no") != null) {
			cu_no = request.getParameter("cu_no");
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

		coupon1Svc.insertCoupon1(coupon1Info);

		edumgt.common.util.SearchVO searchVO = new edumgt.common.util.SearchVO();
		searchVO.setOrderKeyword(orderKeyword);
		searchVO.setSearchType(searchType);
		searchVO.setSearchKeyword(searchKeyword);

		edumgt.common.util.PageVO pageVO = new edumgt.common.util.PageVO();
		pageVO.setPage(1);

		if (cu_no.equals("")) {
			cu_no = coupon1Svc.selectMaxCPNO();
		}

		Coupon1VO couponInfo = coupon1Svc.selectCoupon1One(cu_no);

		modelMap.addAttribute("couponInfo", couponInfo);

		modelMap.addAttribute("searchVO", searchVO);
		modelMap.addAttribute("pageVO", pageVO);

		return "coupon1/Coupon1Read";
	}

	@RequestMapping(value = "/coupon1Delete")
	public String coupon1Delete(HttpServletRequest request) {
		String cu_no = request.getParameter("cu_no");
		coupon1Svc.deleteCoupon1One(cu_no);
		return "redirect:/coupon1List";
	}

}
