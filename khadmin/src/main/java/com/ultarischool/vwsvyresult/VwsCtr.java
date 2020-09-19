package com.ultarischool.vwsvyresult;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ultarischool.codet.codet;
import com.ultarischool.codet.codetExample;

@Controller
public class VwsCtr {

	@Autowired
	private VwsSvc vwsSvc;

	@RequestMapping(value = "/vwsList")
	public String surveyList(HttpServletRequest request, vwsvyresultExample example, ModelMap modelMap) {

		List<?> listrel3 = vwsSvc.selListSvyRsltSv();
		modelMap.addAttribute("listrel3", listrel3);

		List<?> listrel1 = vwsSvc.selListSvyRsltJob();
		modelMap.addAttribute("listrel1", listrel1);

		if (request.getParameter("svname") != null) {
			example.setSvname(request.getParameter("svname"));
		}
		if (request.getParameter("cosn") != null) {
			example.setCosn(Integer.parseInt(request.getParameter("cosn")));
		}

		example.pageCalculate(vwsSvc.countByExampleVWSGroup(example));
		List<?> listview = vwsSvc.selectByExampleVWSGroup(example);

		modelMap.addAttribute("listview", listview);

		modelMap.addAttribute("listrel3", listrel3);

		modelMap.addAttribute("listrel1", listrel1);

		modelMap.addAttribute("searchVO", example);

		return "vws/list";
	}

	@RequestMapping(value = "/vwsForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveyForm(HttpServletRequest request, vwsvyresult vwsvyresult, ModelMap modelMap) {

		return "vws/detail";
	}

	@RequestMapping(value = "/vwsRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String surveyRead(HttpServletRequest request, vwsvyresult vwsvyresult, ModelMap modelMap) {

		String sn = request.getParameter("sn");
		vwsvyresult = vwsSvc.selectByPrimaryKey(Integer.parseInt(sn));

		modelMap.addAttribute("vwsvyresult", vwsvyresult);

		return "vws/detail";
	}

	@RequestMapping(value = "/vwsReadUserList", method = { RequestMethod.GET, RequestMethod.POST })
	public String vwsReadUserList(HttpServletRequest request, vwsvyresult vwsvyresult, ModelMap modelMap) {

		String surveyfk = "";
		surveyfk = request.getParameter("svy");
		String useridfk = "";
		useridfk = request.getParameter("uid");
		String classnofk = "";
		classnofk = request.getParameter("cls");

		vwsvyresult.setSurveyfk(Integer.parseInt(surveyfk));
		vwsvyresult.setUseridfk(useridfk);
		vwsvyresult.setClassnofk(Integer.parseInt(classnofk));

		List<?> listview = vwsSvc.vwsReadUserList(vwsvyresult);

		String protitle = "";
		protitle = request.getParameter("protitle");
		String svname = "";
		svname = request.getParameter("svname");
		String tutorname = "";
		tutorname = request.getParameter("tutorname");
		String stuname = "";
		stuname = request.getParameter("stuname");

		modelMap.addAttribute("protitle", protitle);
		modelMap.addAttribute("svname", svname);
		modelMap.addAttribute("tutorname", tutorname);
		modelMap.addAttribute("stuname", stuname);

		modelMap.addAttribute("listview", listview);

		return "vws/list3";
	}

	@RequestMapping(value = "/vwsReadUser", method = { RequestMethod.GET, RequestMethod.POST })
	public String vwsReadUser(HttpServletRequest request, vwsvyresult vwsvyresult, ModelMap modelMap) {

		String surveyfk = "";
		surveyfk = request.getParameter("svy");
		String useridfk = "";
		useridfk = request.getParameter("uid");
		String classnofk = "";
		classnofk = request.getParameter("cls");

		vwsvyresult.setSurveyfk(Integer.parseInt(surveyfk));
		vwsvyresult.setUseridfk(useridfk);
		vwsvyresult.setClassnofk(Integer.parseInt(classnofk));

		List<?> listview = vwsSvc.vwsReadUser(vwsvyresult);

		modelMap.addAttribute("listview", listview);

		String protitle = "";
		protitle = request.getParameter("protitle");
		String svname = "";
		svname = request.getParameter("svname");
		String tutorname = "";
		tutorname = request.getParameter("tutorname");
		String stuname = "";
		stuname = request.getParameter("stuname");

		modelMap.addAttribute("protitle", protitle);
		modelMap.addAttribute("svname", svname);
		modelMap.addAttribute("tutorname", tutorname);
		modelMap.addAttribute("stuname", stuname);

		return "vws/list2";
	}

}
