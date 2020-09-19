package com.ultarischool.usercode;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import edumgt.common.util.SearchVO;

@Controller
public class UsercodeCtr {
	@Autowired
	private UsercodeSvc usercodeSvc;

	@RequestMapping(value = "/usercodeList")
	public String usercodeList(HttpServletRequest request, SearchVO searchVO, UsercodeExample example,
			ModelMap modelMap) {

		String code2 = "";
		if ( request.getParameter("code2") != null ) {
			code2 = request.getParameter("code2");
		}
		
		example.setCode2(code2);

		example.pageCalculate(usercodeSvc.countAll(example));

		List<UsercodeVO> code2List = usercodeSvc.selectListCode2(example);
		List<UsercodeVO> listView = usercodeSvc.selectAll(example);

		modelMap.addAttribute("listView", listView);
		modelMap.addAttribute("code2List", code2List);
		modelMap.addAttribute("searchVO", example);

		return "usercode/list";
	}
}
