package com.ultarischool.career;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ultarischool.etcgo.etcgo;
import com.ultarischool.usercode.UsercodeVO;
import com.ultarischool.usert.UsertVO;

@Controller
public class CareerCtr {

	@Autowired
	private CareerSvc careerSvc;

	@RequestMapping(value = "/careerList")
	public String careerList(careerExample example, ModelMap modelMap) {

		example.pageCalculate(careerSvc.countByExample(example)); // startRow, endRow

		List<?> listview = careerSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "career/list";
	}

	@RequestMapping(value = "/careerForm")
	public String careerForm(HttpServletRequest request, career faqinfo, ModelMap modelMap) {
		
		

		return "career/form";
	}
	
	@RequestMapping(value = "/careerRead")
	public String careerRead(HttpServletRequest request, career faqinfo, ModelMap modelMap) {
		
		String sn = request.getParameter("sn");
		
		faqinfo = careerSvc.selectByPrimaryKey(Integer.parseInt(sn));

		modelMap.addAttribute("faqinfo", faqinfo);

		return "career/form";
	}

	@RequestMapping(value = "/careerSave")
	public String careerSave(HttpServletRequest request, career faqinfo, ModelMap modelMap) {

		
		careerSvc.insert(faqinfo);
		

		return "redirect:careerList";
	}

}
