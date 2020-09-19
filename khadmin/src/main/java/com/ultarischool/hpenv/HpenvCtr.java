package com.ultarischool.hpenv;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String hpenvForm(HttpServletRequest request,hpenvExample example, ModelMap modelMap, hpenv cvo) {

		List<?> selcc = hpenvSvc.selCmsCode();

		
		//cvo = hpenvSvc.selectByPrimaryKey(Integer.parseInt(request.getParameter("sn")));
		
		modelMap.addAttribute("selcc", selcc);
		//modelMap.addAttribute("cvo", cvo);
		return "hpenv/detail";
	}
	
	@RequestMapping(value = "/hpenvRead")
	public String hpenvRead(HttpServletRequest request,hpenvExample example, ModelMap modelMap, hpenv cvo) {

		List<?> selcc = hpenvSvc.selCmsCode();

		
		cvo = hpenvSvc.selectByPrimaryKey(Integer.parseInt(request.getParameter("sn")));
		
		modelMap.addAttribute("selcc", selcc);
		modelMap.addAttribute("cvo", cvo);
		return "hpenv/detail";
	}
	
	@RequestMapping(value = "/hpenvSave")
	public String hpenvSv(hpenvExample example, ModelMap modelMap,hpenv cvo) {
		
		
		
		if ( cvo.getSn() != null) {
			hpenvSvc.updateByPrimaryKeySelective(cvo);
			
		}else {
			hpenvSvc.insert(cvo);
		}

		return "redirect:hpenvList";
	}


	@RequestMapping(value = "/hpenv2List")
	public String hpenv2List(hpenvExample example, ModelMap modelMap) {

		example.pageCalculate(hpenvSvc.countByExampleLine(example)); // startRow, endRow

		List<?> listview = hpenvSvc.selectByExampleLine(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		List<?> courseList = hpenvSvc.selListCmsBig();

		modelMap.addAttribute("courseList", courseList);

		return "hpenv/list2";
	}

}
