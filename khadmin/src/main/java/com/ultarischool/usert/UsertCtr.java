package com.ultarischool.usert;

import java.io.BufferedReader;
//import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ultarischool.etcgo.EtcgoSvc;
import com.ultarischool.etcgo.etcgo;

import com.ultarischool.usercode.Separation;
import com.ultarischool.usercode.UsercodeExample;
import com.ultarischool.usercode.UsercodeSvc;
import com.ultarischool.usercode.UsercodeVO;

import edumgt.common.util.FileUtil;

@Controller
public class UsertCtr {

	@Autowired
	private UsertSvc usertSvc;

	@Autowired
	private UsercodeSvc usercodeSvc;

	@Autowired
	private EtcgoSvc etcgoSvc;

	@RequestMapping(value = "/tutorList")
	public String tutorList(usertExample userExample, ModelMap modelMap, UsercodeExample codeExample) {

		
		userExample.setUsertypecode("TT");

		userExample.pageCalculate(usertSvc.selectCountByUsertypecode(userExample));

		List<UsertVO> tutorList = usertSvc.selectByUsertypecode(userExample);
		

		modelMap.addAttribute("tutorList", tutorList);
		
		modelMap.addAttribute("searchVO", userExample);

		return "usert/tutorList";
	}

	@RequestMapping(value = "/studentList")
	public String studentList(usertExample userExample, ModelMap modelMap) {
		userExample.setUsertypecode("ST");
		userExample.pageCalculate(usertSvc.selectCountByUsertypecode(userExample));

		List<UsertVO> studentList = usertSvc.selectByUsertypecode(userExample);

		

		modelMap.addAttribute("studentList", studentList);
		modelMap.addAttribute("searchVO", userExample);

		return "usert/studentList";
	}

	@RequestMapping(value = "/staffList")
	public String staffList(usertExample example, ModelMap modelMap) {
		example.pageCalculate(usertSvc.countAllStaff(example)); // startRow, endRow

		List<?> listview = usertSvc.selectAllStaff(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "usert/staffList";
	}

	@RequestMapping(value = "/staffForm")
	public String staffForm(UsertVO staffVO, ModelMap modelMap) {
		List<UsercodeVO> usercodeList = usercodeSvc.selectByCode3("직원");
		List<etcgo> etcgoList = etcgoSvc.selectAll();

		modelMap.addAttribute("usercodeList", usercodeList);
		modelMap.addAttribute("etcgoList", etcgoList);
		modelMap.addAttribute("staffVO", staffVO);

		return "usert/staffForm";
	}

	@RequestMapping(value = "/staffRead")
	public String staffRead(@RequestParam("sn") String sn, ModelMap modelMap) {
		System.out.println("sn: " + sn);

		UsertVO staffVO = usertSvc.selectStaffBySn(Integer.parseInt(sn));
		List<UsercodeVO> usercodeList = usercodeSvc.selectByCode3("직원");
		List<etcgo> etcgoList = etcgoSvc.selectAll();

		modelMap.addAttribute("usercodeList", usercodeList);
		modelMap.addAttribute("etcgoList", etcgoList);
		modelMap.addAttribute("staffVO", staffVO);

		return "usert/detailStaff";
	}

	// 신규 직원 정보 입력
	@RequestMapping(value = "usertSave")
	public String usertSave(UsertVO staffVO) {
		staffVO.setRegdate(new Date().toString());
		
		usertSvc.insertStaff(staffVO);

		return "redirect:staffList";
	}

	@RequestMapping(value = "/staffDelete")
	public String staffDelete(@RequestParam("sn") String sn) {
		usertSvc.deleteByPrimaryKey(Integer.parseInt(sn));

		return "redirect:staffList";
	}

	@RequestMapping(value = "/tutorSave")
	public String tutorSave(usertExample example, HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		

		if (!"".equals(sn)) {
			usertSvc.updateByPrimaryKey(usert);
		} else {

			usertSvc.insert(usert);
		}

		return "redirect:tutorList";

		

	}

	@RequestMapping(value = "/tutorRead")
	public String tutorRead(HttpServletRequest request, usert usert, ModelMap modelMap) {

		

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}
		usert = usertSvc.selectByPrimaryKey(Integer.parseInt(sn));

		

		modelMap.addAttribute("cvo", usert);

		return "usert/detail2";
	}
	
	@RequestMapping(value = "/studentRead")
	public String studentRead(HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		usert = usertSvc.selectByPrimaryKey(Integer.parseInt(sn));

		

		modelMap.addAttribute("cvo", usert);

		return "usert/detail";
	}

	@RequestMapping(value = "/schterRead")
	public String schterRead(HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		usert = usertSvc.selectByPrimaryKey(Integer.parseInt(sn));

		if (usert.getSchoolunivfk() == 0) {
			usert.setElsname("지정학교없음");
		} else {

		}

		modelMap.addAttribute("usert", usert);

		return "usert/detail3";
	}

	@RequestMapping(value = "/ddhumanRead")
	public String ddhumanRead(HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		usert = usertSvc.selectByPrimaryKey2(Integer.parseInt(sn));

		if (usert.getEtcgosn().equals("") || usert.getEtcgosn().equals("0")) {
			usert.setElsname("지정기관없음");
		} else {

		}

		modelMap.addAttribute("usert", usert);

		return "usert/detail4";
	}

	

	@RequestMapping(value = "/tutorDelete")
	public String tutorDelete(HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		usertSvc.deleteByPrimaryKey(Integer.parseInt(sn));

		return "redirect:tutorList";
	}

	@RequestMapping(value = "/schterList")
	public String schterList(usertExample example, ModelMap modelMap) {

		example.setUsertype("SC");

		example.pageCalculate(usertSvc.countByExample(example)); // startRow, endRow

		List<?> listview = usertSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "usert/list3";
	}

	@RequestMapping(value = "/studentForm")
	public String studentForm(HttpServletRequest request, usert usert, ModelMap modelMap) {

		modelMap.addAttribute("usert", usert);

		return "usert/detail";
	}

	@RequestMapping(value = "/tutorForm")
	public String tutorForm(HttpServletRequest request, usert cvo, ModelMap modelMap) {

		

		modelMap.addAttribute("cvo", cvo);

		return "usert/detail2";
	}

	@RequestMapping(value = "/schterForm")
	public String schterForm(HttpServletRequest request, usert usert, ModelMap modelMap) {

		modelMap.addAttribute("usert", usert);

		return "usert/detail3";
	}

	@RequestMapping(value = "/ddhumanForm")
	public String ddhumanForm(HttpServletRequest request, usert usert, ModelMap modelMap) {

		modelMap.addAttribute("usert", usert);

		return "usert/detail4";
	}

	@RequestMapping(value = "/ddhumanSave")
	public String ddhumanSave(usertExample example, HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		usert.setUsertype("DD");

		if (!"".equals(sn)) {
			usertSvc.updateByPrimaryKey(usert);
		} else {

			usertSvc.insertSchTer(usert);
		}

		return "redirect:ddhumanList";

	}

	@RequestMapping(value = "/ddhumanList")
	public String ddhumanList(usertExample example, ModelMap modelMap) {

		example.setUsertype("DD");

		example.pageCalculate(usertSvc.countByExample(example)); // startRow, endRow

		List<?> listview = usertSvc.selectByExample2(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "usert/list4";
	}

	@RequestMapping(value = "/schterSave")
	public String schterSave(usertExample example, HttpServletRequest request, usert usert, ModelMap modelMap) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		usert.setUsertype("SC");

		if (!"".equals(sn)) {
			usertSvc.updateByPrimaryKey(usert);
		} else {

			usertSvc.insertSchTer(usert);
		}

		return "redirect:schterList";

	}

	@RequestMapping(value = "/tutorExcel", method = { RequestMethod.GET, RequestMethod.POST })
	public String downloadCsv(usert usert, ModelMap modelMap, HttpServletResponse response) throws IOException {

		usert.setUsertype("TT");
		List<usert> listview = usertSvc.selectAll(usert);
		modelMap.addAttribute("listview", listview);
		return "usert/excel";

	}

	@RequestMapping(value = "/login")
	public String userLogin(usert usert, HttpServletRequest request, ModelMap modelMap, HttpSession session) {

		com.ultarischool.usert.usert getuser = new com.ultarischool.usert.usert();

		if (usertSvc.selectUserInfo(usert) != null) {
			getuser = usertSvc.selectUserInfo(usert);

			if ("SA".equals(getuser.getUsertypecode())) {
				session.setAttribute("USERID", getuser.getUserid());
				session.setAttribute("USERTYPE", getuser.getUsertypecode());
				System.out.println(" # USERTYPE # " + session.getAttribute("USERTYPE"));

				// return "redirect:/staffList";
				return "redirect:/statdash";

			} else {
				System.out.println("Login Usertype Fail");
				return "usert/login";
			}
		} else {
			System.out.println("Login DB Data Fail");
			return "usert/login";
		}

	}

	@RequestMapping(value = "/logout")
	public String userLogout(usert usert, HttpServletRequest request, ModelMap modelMap, HttpSession session) {

		session.invalidate();
		return "usert/login";

	}

	@RequestMapping(value = "/loginView")
	public String userLoginView() {

		return "usert/login";

	}

	@RequestMapping(value = "/")
	public String userLoginView2() {

		return "usert/login";

	}

	

}
