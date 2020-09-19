package com.ultarischool.hpbanner;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller 
public class HpbannerCtr {

	@Autowired
	private HpbannerSvc hpbannerSvc;
	


	@RequestMapping(value = "/hpbannerList")
	public String hpbannerList(hpbannerExample example, ModelMap modelMap) {

		example.pageCalculate( hpbannerSvc.countByExample(example) ); // startRow, endRow
		
		System.out.println(" searchVO.getTotPage() " + example.getTotPage());

		List<?> listview  = hpbannerSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);
		

		return "hpbanner/list";
	}


	







}
