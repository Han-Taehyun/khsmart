package com.ultarischool.course;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ultarischool.chapter.ChapterExample;
import com.ultarischool.chapter.ChapterSvc;
import com.ultarischool.chapter.ChapterVO;

import edumgt.common.util.FileUtil;


@Controller
public class CourseCtr {
	@Autowired
	CourseSvc courseSvc;
	
	@Autowired
	ChapterSvc chapterSvc;

	@RequestMapping(value = "/PackCosForm")
	public String PackCosForm(HttpServletRequest request, ChapterExample example, ModelMap modelMap, CourseVO cvo) {

		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}

		CourseVO packinfo = courseSvc.selPackTitle(Integer.parseInt(code2));
		modelMap.addAttribute("packinfo", packinfo);

		List<CourseVO> courseList = courseSvc.selectAllCourseForPck();

		modelMap.addAttribute("courseList", courseList);

		cvo.setSn(0);

		modelMap.addAttribute("cvo", cvo);

		return "course/pckForm";
	}

	@RequestMapping(value = "/PackCosDel")
	public String PackCosDel(HttpServletRequest request, ChapterExample example, ModelMap modelMap, CourseVO cvo) {

		

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");

		}
		
		courseSvc.delPckCsOne(Integer.parseInt(sn));

		

		return "redirect:PackCosList";
	}

	@RequestMapping(value = "/courseList")
	public String courseList(HttpServletRequest request,CourseExample courseExample, ModelMap modelMap) {
		
		String orderKeyword = "";
		if (request.getParameter("orderKeyword") != null) {
			orderKeyword = request.getParameter("orderKeyword");
		}
		courseExample.setOrderKeyword(orderKeyword);

		courseExample.pageCalculate(courseSvc.countAllCourse(courseExample));
		List<CourseVO> courseList = courseSvc.selectAllCourse(courseExample);

		modelMap.addAttribute("courseList", courseList);
		modelMap.addAttribute("searchVO", courseExample);

		return "course/list";
	}

	@RequestMapping(value = "/PackCosList")
	public String PackCosList(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap) {

		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}

		courseExample.setPkgid(code2);

		List<CourseVO> pkgList = courseSvc.selListPkg();

		modelMap.addAttribute("pkgList", pkgList);

		courseExample.pageCalculate(courseSvc.countAllCoursePkg(courseExample));
		List<CourseVO> courseList = courseSvc.selectAllCoursePkg(courseExample);

		modelMap.addAttribute("courseList", courseList);
		modelMap.addAttribute("searchVO", courseExample);

		return "course/pkgcoslist";
	}

	@RequestMapping(value = "/CosUserList")
	public String CosUserList(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap) {
		
		String code2 = "0";
		if (request.getParameter("code2") != null) {
			code2 = request.getParameter("code2");

		}

		courseExample.setCode2(code2);
		
		
		List<ChapterVO> courseList = chapterSvc.selListCourse();

		modelMap.addAttribute("courseList", courseList);
		
		
		List<CourseVO> courseserList = courseSvc.selectAllCourseUser(courseExample);

		courseExample.pageCalculate(courseSvc.countAllCourseUser(courseExample));

		modelMap.addAttribute("courseserList", courseserList);
		modelMap.addAttribute("searchVO", courseExample);

		return "course/list2";
	}

	@RequestMapping(value = "/PkgUserList")
	public String PkgUserList(CourseExample courseExample, ModelMap modelMap) {
		

		courseExample.pageCalculate(courseSvc.countAllPkgUser(courseExample));
		List<CourseVO> courseList = courseSvc.selectAllPkgUser(courseExample);

		modelMap.addAttribute("courseList", courseList);
		modelMap.addAttribute("searchVO", courseExample);

		return "course/list3";
	}

	@RequestMapping(value = "/RateUserList")
	public String RateUserList(CourseExample courseExample, ModelMap modelMap) {

		List<CourseVO> courseList = courseSvc.selectAllRateUser(courseExample);

		courseExample.pageCalculate(courseSvc.countAllRateUser(courseExample));

		modelMap.addAttribute("listview", courseList);
		modelMap.addAttribute("searchVO", courseExample);

		return "course/rate";
	}

	@RequestMapping(value = "/PackageList")
	public String PackageList(CourseExample courseExample, ModelMap modelMap) {
		

		courseExample.pageCalculate(courseSvc.countAllPackage(courseExample));
		List<CourseVO> courseList = courseSvc.selectAllPackage(courseExample);

		modelMap.addAttribute("courseList", courseList);
		modelMap.addAttribute("searchVO", courseExample);

		return "course/pkglist";
	}

	@RequestMapping(value = "/PackageForm")
	public String PackageForm(CourseExample courseExample, ModelMap modelMap, CourseVO cvo) {

		List<CourseVO> seltag1 = courseSvc.selTaG();

		List<CourseVO> seltag2 = courseSvc.selTaG();

		List<CourseVO> seltag3 = courseSvc.selTaG();

		modelMap.addAttribute("seltag1", seltag1);
		modelMap.addAttribute("seltag2", seltag2);
		modelMap.addAttribute("seltag3", seltag3);

		cvo.setSn(0);

		modelMap.addAttribute("cvo", cvo);

		return "course/pkgForm";
	}
	
	@RequestMapping(value = "/CosUserForm")
	public String CosUserForm(CourseExample courseExample, ModelMap modelMap, CourseVO cvo) {

		List<ChapterVO> courseList = chapterSvc.selListCourse();

		modelMap.addAttribute("courseList", courseList);

		return "course/CosUserForm";
	}
	
	@RequestMapping(value = "/vwpopupuser")
	public String vwstpopup(CourseExample courseExample, ModelMap modelMap, CourseVO cvo) {

		

		return "course/vwpopupuser";
	}
	
	
	
	@RequestMapping(value = "/CosUserSave")
	public String CosUserSave(CourseExample courseExample, ModelMap modelMap, CourseVO cvo,RedirectAttributes redirect) {

		courseSvc.insCosUserAdmin(cvo);
		
		redirect.addAttribute("code2", cvo.getCourseid());  

		return "redirect:CosUserList";
	}

	@RequestMapping(value = "/pkgSave")
	public String pkgSave(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap, CourseVO cvo,
			RedirectAttributes redirect) {

		FileUtil fs = new FileUtil();

		if (!cvo.getImg1file().isEmpty() && (cvo.getImg1file().getSize() > 10)) {
			cvo.setImg1(fs.saveImgFile(cvo.getImg1file(), cvo.getImg1()));
		}
		if (!cvo.getImg2file().isEmpty() && (cvo.getImg2file().getSize() > 10)) {
			cvo.setImg2(fs.saveImgFile(cvo.getImg2file(), cvo.getImg2()));
		}
		if (!cvo.getImg3file().isEmpty() && (cvo.getImg3file().getSize() > 10)) {
			cvo.setImg3(fs.saveImgFile(cvo.getImg3file(), cvo.getImg3()));
		}

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}
		
		if ( cvo.getCotag1().indexOf("XXX") > 0 ) cvo.setCotag1("");
		if ( cvo.getCotag2().indexOf("XXX") > 0 ) cvo.setCotag2("");
		if ( cvo.getCotag3().indexOf("XXX") > 0 ) cvo.setCotag3("");

		if ("0".equals(sn)) {
			courseSvc.insertPkg(cvo);
		} else {
			courseSvc.updatePkg(cvo);
		}

		
		return "redirect:PackageList";
	}

	@RequestMapping(value = "/PackCosSave")
	public String PackCosSave(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap,
			RedirectAttributes redirect,
			CourseVO cvo) {

		String pkgid = "0";
		if (request.getParameter("pkgid") != null) {
			pkgid = request.getParameter("pkgid");
		}
		String cosid = "0";
		if (request.getParameter("cosid") != null) {
			cosid = request.getParameter("cosid");
		}
		String ord = "0";
		if (request.getParameter("ord") != null) {
			ord = request.getParameter("ord");
		}

		cvo.setPkgid2(Integer.parseInt(pkgid));
		cvo.setCosid2(Integer.parseInt(cosid));
		cvo.setOrd2(Integer.parseInt(ord));
		
		courseSvc.insertPkgCos(cvo);
		
		redirect.addAttribute("code2", pkgid);  

		

		return "redirect:PackCosList";
	}

	@RequestMapping(value = "/courseForm")
	public String courseForm(CourseExample courseExample, ModelMap modelMap, CourseVO cvo) {

		List<CourseVO> selctype = courseSvc.selCodeType();
		List<CourseVO> selctt = courseSvc.selCTT();

		List<CourseVO> seltag1 = courseSvc.selTaG();
		List<CourseVO> seltgc1 = courseSvc.selTGCode();

		List<CourseVO> seltag2 = courseSvc.selTaG();
		List<CourseVO> seltgc2 = courseSvc.selTGCode();

		List<CourseVO> seltag3 = courseSvc.selTaG();
		List<CourseVO> seltgc3 = courseSvc.selTGCode();

		modelMap.addAttribute("selctype", selctype);

		modelMap.addAttribute("seltag1", seltag1);
		modelMap.addAttribute("seltag2", seltag2);
		modelMap.addAttribute("seltag3", seltag3);
		modelMap.addAttribute("seltgc1", seltgc1);
		modelMap.addAttribute("seltgc2", seltgc2);
		modelMap.addAttribute("seltgc3", seltgc3);

		modelMap.addAttribute("selctt", selctt);

		cvo.setSn(0);

		modelMap.addAttribute("cvo", cvo);
		return "course/courseForm";
	}

	@RequestMapping(value = "/courseSave")
	public String courseSave(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap, CourseVO cvo) {

		FileUtil fs = new FileUtil();

		if (!cvo.getCosimg1file().isEmpty() && (cvo.getCosimg1file().getSize() > 10)) {
			cvo.setCosimg1(fs.saveImgFile(cvo.getCosimg1file(), cvo.getCosimg1()));
		}
		if (!cvo.getCosimg2file().isEmpty() && (cvo.getCosimg2file().getSize() > 10)) {
			cvo.setCosimg2(fs.saveImgFile(cvo.getCosimg2file(), cvo.getCosimg2()));
		}
		if (!cvo.getCosimg3file().isEmpty() && (cvo.getCosimg3file().getSize() > 10)) {
			cvo.setCosimg3(fs.saveImgFile(cvo.getCosimg3file(), cvo.getCosimg3()));
		}
		
		if ( cvo.getCotag1().indexOf("XXX") > 0 ) cvo.setCotag1("");
		if ( cvo.getCotag2().indexOf("XXX") > 0 ) cvo.setCotag2("");
		if ( cvo.getCotag3().indexOf("XXX") > 0 ) cvo.setCotag3("");
		
		if ( cvo.getCotarget1().indexOf("XXX") > 0 ) cvo.setCotarget1("");
		if ( cvo.getCotarget2().indexOf("XXX") > 0 ) cvo.setCotarget2("");
		if ( cvo.getCotarget3().indexOf("XXX") > 0 ) cvo.setCotarget3("");
		

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		if ("0".equals(sn)) {
			courseSvc.insertCourse(cvo);
		} else {
			
						
			courseSvc.updateCourse(cvo);
		}

		return "redirect:courseList";
	}

	@RequestMapping(value = "/courseRead")
	public String courseRead(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap, CourseVO cvo) {

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}
		cvo = courseSvc.selCourseOne(Integer.parseInt(sn));
		cvo.setSn(Integer.parseInt(sn));

		modelMap.addAttribute("cvo", cvo);

		List<CourseVO> selctype = courseSvc.selCodeType();
		List<CourseVO> selctt = courseSvc.selCTT();

		List<CourseVO> seltag1 = courseSvc.selTaG();
		List<CourseVO> seltgc1 = courseSvc.selTGCode();

		List<CourseVO> seltag2 = courseSvc.selTaG();
		List<CourseVO> seltgc2 = courseSvc.selTGCode();

		List<CourseVO> seltag3 = courseSvc.selTaG();
		List<CourseVO> seltgc3 = courseSvc.selTGCode();

		modelMap.addAttribute("selctype", selctype);

		modelMap.addAttribute("seltag1", seltag1);
		modelMap.addAttribute("seltag2", seltag2);
		modelMap.addAttribute("seltag3", seltag3);
		modelMap.addAttribute("seltgc1", seltgc1);
		modelMap.addAttribute("seltgc2", seltgc2);
		modelMap.addAttribute("seltgc3", seltgc3);

		modelMap.addAttribute("selctt", selctt);
		
		
		
		
		

		return "course/courseForm";
	}

	@RequestMapping(value = "/PackageRead")
	public String PackageRead(HttpServletRequest request, CourseExample courseExample, ModelMap modelMap,
			CourseVO cvo) {

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}
		cvo = courseSvc.selPackageOne(Integer.parseInt(sn));
		cvo.setSn(Integer.parseInt(sn));

		modelMap.addAttribute("cvo", cvo);

		List<CourseVO> seltag1 = courseSvc.selTaG();

		List<CourseVO> seltag2 = courseSvc.selTaG();

		List<CourseVO> seltag3 = courseSvc.selTaG();

		modelMap.addAttribute("seltag1", seltag1);
		modelMap.addAttribute("seltag2", seltag2);
		modelMap.addAttribute("seltag3", seltag3);

		return "course/pkgForm";
	}
	
	
	
}
