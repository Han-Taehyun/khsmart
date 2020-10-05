package com.ultarischool.usercode;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edumgt.common.util.SearchVO;

@Controller
public class UsercodeCtr {
	@Autowired
	private UsercodeSvc usercodeSvc;

	@RequestMapping(value = "/selCodeUni", method = { RequestMethod.GET, RequestMethod.POST })
	public String selCodeUni(HttpServletRequest request, UsercodeVO codet, ModelMap modelMap,
			RedirectAttributes redirectAttributes) {

		String val = "사용가능 합니다.";
		if ( usercodeSvc.selectByCodeUni(request.getParameter("code")) != null ) {
			val = "데이타가 중복됩니다.";
		}

		modelMap.addAttribute("val", val);
		return "common/dummy2";

	}

	@RequestMapping(value = "/codetSave", method = { RequestMethod.GET, RequestMethod.POST })
	public String codetSave(HttpServletRequest request, UsercodeVO codet, ModelMap modelMap,
			RedirectAttributes redirectAttributes) {

		if (codet.getId() != null && codet.getId() > 0) {
			usercodeSvc.insertCodet(codet);
		} else {

			usercodeSvc.updateCodet(codet);
		}

		return "redirect:usercodeList";

	}

	@RequestMapping(value = "/usercodeList")
	public String usercodeList(HttpServletRequest request, SearchVO searchVO, UsercodeExample example,
			ModelMap modelMap) {

		String code2 = "";
		if (request.getParameter("code2") != null) {
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

	@RequestMapping(value = "/codetForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String codetForm(HttpServletRequest request, UsercodeVO codet, ModelMap modelMap) {

		List<UsercodeVO> usercodeList = usercodeSvc.selectByCode1();
		modelMap.addAttribute("usercodeList", usercodeList);

		modelMap.addAttribute("codet", codet);

		return "usercode/detail";
	}

	@RequestMapping(value = "/usercodeRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String codetRead(HttpServletRequest request, UsercodeVO codet, ModelMap modelMap) {

		List<UsercodeVO> usercodeList = usercodeSvc.selectByCode1();
		modelMap.addAttribute("usercodeList", usercodeList);

		String id = request.getParameter("id");
		codet = usercodeSvc.selectByPrimaryKey(Integer.parseInt(id));
		modelMap.addAttribute("codet", codet);

		return "usercode/detail";
	}

}
