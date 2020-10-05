package com.ultarischool.career;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



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

		
		if (faqinfo.getSn() == null || "".equals(faqinfo.getSn())) {
			careerSvc.insert(faqinfo);
		}else {
			careerSvc.update(faqinfo);
		}
		

		return "redirect:careerList";
	}
	
	@RequestMapping(value = "/careerDelete")
	public String careerDelete(HttpServletRequest request, career faqinfo, ModelMap modelMap) {

		
		
			careerSvc.delete(faqinfo);
		

		return "redirect:careerList";
	}
	
	

}
