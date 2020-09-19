package com.ultarischool.chapter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edumgt.common.util.FileUtil;


@Controller
public class ChapterCtr {
	@Autowired
	private ChapterSvc chapterSvc;

	
	@RequestMapping(value = "/chapterList")
	public String chapterList(HttpServletRequest request, 
			ChapterExample example, ModelMap modelMap) {

		String code2="0";
		if ( request.getParameter("code2") != null ) {
			code2 = request.getParameter("code2");
			
		}
		
		example.setCosn(code2);

		example.pageCalculate(chapterSvc.countAllChapter(example));
		List<ChapterVO> chapterList = chapterSvc.selectAllChapter(example);

		modelMap.addAttribute("chapterList", chapterList);

		List<ChapterVO> courseList = chapterSvc.selListCourse();

		modelMap.addAttribute("courseList", courseList);

		modelMap.addAttribute("searchVO", example);

		return "chapter/list";
	}
	
	@RequestMapping(value = "/chapterForm")
	public String chapterForm(HttpServletRequest request, 
			ChapterExample example, ModelMap modelMap, ChapterVO cvo) {

		String code2="0";
		if ( request.getParameter("code2") != null ) {
			code2 = request.getParameter("code2");
			
		}
		

		ChapterVO courseinfo = chapterSvc.selCourseTitle(Integer.parseInt(code2));
		modelMap.addAttribute("courseinfo", courseinfo);
		
		cvo.setSn(0);

		modelMap.addAttribute("cvo", cvo);
		

		return "chapter/cform";
	}
	
	@RequestMapping(value = "/chapterSave")
	public String chapterSave(HttpServletRequest request, 
			ChapterExample example, ModelMap modelMap, ChapterVO cvo,RedirectAttributes redirect) {

		
		
		
		FileUtil fs = new FileUtil();

		if (!cvo.getChpimg1file().isEmpty() && (cvo.getChpimg1file().getSize() > 10)) {
			cvo.setChpimg1(fs.saveImgFile(cvo.getChpimg1file(), cvo.getChpimg1()));
		}
		
		if (!cvo.getChpimg2file().isEmpty() && (cvo.getChpimg2file().getSize() > 10)) {
			cvo.setChpimg2(fs.saveImgFile(cvo.getChpimg2file(), cvo.getChpimg2()));
		}
		

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		if ("0".equals(sn)) {
			chapterSvc.insertChapter(cvo);
		} else {
			chapterSvc.updateChapter(cvo);
		}

		redirect.addAttribute("code2", cvo.getCoid());  
		return "redirect:chapterList";

		
	}
	
	@RequestMapping(value = "/chapterRead")
	public String chapterRead(HttpServletRequest request, 
			ChapterExample example, ModelMap modelMap, ChapterVO cvo) {

		
		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}
		
		@SuppressWarnings("unused")
		String code2="0";
		if ( request.getParameter("code2") != null ) {
			code2 = request.getParameter("code2");
			
		}
		
		cvo = chapterSvc.selectChapterOne(Integer.parseInt(sn));
		cvo.setSn(Integer.parseInt(sn));
		
		ChapterVO courseinfo = chapterSvc.selCourseTitle(Integer.parseInt(cvo.getCoid()));
		modelMap.addAttribute("courseinfo", courseinfo);

		modelMap.addAttribute("cvo", cvo);
		

		return "chapter/cform";
	}
}
