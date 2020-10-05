package com.ultarischool.etcgo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class EtcgoCtr {

	@Autowired
	private EtcgoSvc etcgoSvc;

	@RequestMapping(value = "/etcgoList")
	public String schoolList(etcgoExample example, ModelMap modelMap, etcgo etcgo, HttpServletRequest request) {

		try {

			if (etcgo.getElsname() != null || !etcgo.getElsname().equals("")) {
				example.setElsname(etcgo.getElsname());
			}

		} catch (java.lang.NullPointerException ne) {
		}

		example.pageCalculate(etcgoSvc.countByExample(example));
		List<?> listview = etcgoSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "etcgo/list";
	}

	@RequestMapping(value = "/etcgoForm")
	public String schoolForm(etcgoExample example, ModelMap modelMap, etcgo etcgo, HttpServletRequest request) {

		modelMap.addAttribute("example", example);

		return "etcgo/detail";
	}

	@RequestMapping(value = "/etcgoRead")
	public String etcgoRead(etcgoExample example, ModelMap modelMap, etcgo etcgo, HttpServletRequest request) {

		modelMap.addAttribute("example", example);

		String sn = request.getParameter("sn");
		etcgo = etcgoSvc.selectByPrimaryKey(Integer.parseInt(sn));

		modelMap.addAttribute("etcgo", etcgo);

		return "etcgo/detail";
	}

	@RequestMapping(value = "/etcgoSave")
	public String schoolSave(HttpServletRequest request, etcgo etcgo, ModelMap modelMap, etcgoExample example) {

		if (etcgo.getSn() != null) {
			etcgoSvc.updateByPrimaryKey(etcgo);
		} else {
			etcgoSvc.insert(etcgo);
		}

		return "redirect:etcgoList";

	}

	@RequestMapping(value = "/etcgoDelete")
	public String etcgoDelete(HttpServletRequest request, etcgo etcgo, ModelMap modelMap, etcgoExample example) {

		etcgoSvc.deleteByPrimaryKey(etcgo.getSn());

		return "redirect:etcgoList";
	}

	@RequestMapping(value = "/etcgoExcel")
	public String schoolex(etcgoExample example, ModelMap modelMap, etcgo etcgo, HttpServletRequest request) {

		List<?> listview = etcgoSvc.selectAll();

		modelMap.addAttribute("listview", listview);

		return "etcgo/excel";
	}

}
