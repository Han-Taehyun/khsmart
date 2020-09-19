package com.ultarischool.vwtableinfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.fontbox.ttf.TrueTypeCollection;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType0Font;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URLEncoder;
import java.nio.charset.Charset;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;






@Controller 
public class VwtableinfoCtr  {



	@Autowired
	private VwtableinfoSvc vwtableinfoSvc;

	@RequestMapping(value = "/statdash")
	public String MainStatDash(vwtableinfoExample example,vwtableinfo mvo, HttpServletRequest request, ModelMap modelMap,
			HttpSession session) {

		mvo = vwtableinfoSvc.selectMainDashBoard();

		
		modelMap.addAttribute("mvo", mvo);

		
		return "vwtableinfo/list2";

		

	}

	@RequestMapping(value = "/vwtableinfoList", method = {RequestMethod.GET, RequestMethod.POST})
	public String codetList(HttpServletRequest request, vwtableinfoExample example, ModelMap modelMap,vwtableinfo vwtableinfo) {


		List<?> listrel3  = vwtableinfoSvc.selectListTb();
		modelMap.addAttribute("listrel3", listrel3);

		String tablename = "";
		if ( request.getParameter("tablename") != null ) { 
			tablename = request.getParameter("tablename");

		}
		
		example.setTablename(tablename);
		
		List<?> listview  = null;

		
		example.setDisplayRowCount(20);
		example.pageCalculate( vwtableinfoSvc.countByExample(example) ); 
		listview  = vwtableinfoSvc.selectByExample(example);



		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);



		return "vwtableinfo/list";
	}









}
