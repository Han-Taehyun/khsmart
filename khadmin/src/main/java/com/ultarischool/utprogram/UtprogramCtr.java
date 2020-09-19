package com.ultarischool.utprogram;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.ultarischool.codet.codet;
import com.ultarischool.codet.codetExample;

import edumgt.common.util.FileUtil;
import edumgt.common.util.FileVO;




@Controller 
public class UtprogramCtr {

	@Autowired
	private UtprogramSvc utprogramSvc;



	@RequestMapping(value = "/utprogramList")
	public String utprogramList(utprogramExample example, ModelMap modelMap,HttpSession session) {

		example.pageCalculate( utprogramSvc.countByExample(example) ); // startRow, endRow



		List<?> listview  = utprogramSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);


		return "utprogram/list";
	}

	@RequestMapping(value = "/utprogramForm")
	public String utprogramForm(HttpServletRequest request, utprogram utprogram, 
			ModelMap modelMap) {

		List<?> listsel  = utprogramSvc.selectListSelPtype("프로그램분류");
		modelMap.addAttribute("listsel", listsel);
		List<?> listrel1  = utprogramSvc.selectListSelRelprog("0");
		modelMap.addAttribute("listrel1", listrel1);
		List<?> listrel2  = utprogramSvc.selectListSelRelprog("0");
		modelMap.addAttribute("listrel2", listrel2);
		List<?> listrel3  = utprogramSvc.selectListSelRelprog("0");
		modelMap.addAttribute("listrel3", listrel3);

		utprogram.setTopimg("");
		utprogram.setSmlimg("");
		utprogram.setStudyimg1("");
		utprogram.setStudyimg2("");

		modelMap.addAttribute("utprogram", utprogram);

		return "utprogram/detail";
	}


	@RequestMapping(value = "/utprogramSave")
	public String utprogramSave(utprogramExample example, HttpServletRequest request, utprogram utprogram, 
			ModelMap modelMap) {


		String sn = "";
		if ( request.getParameter("sn") != null ) {
			sn = request.getParameter("sn");}

		FileUtil fs = new FileUtil();
		

		

		if ( !"".equals(sn) ) {
			utprogramSvc.updateByPrimaryKey(utprogram);
		} else {

			utprogramSvc.insert(utprogram);
		}


		example.pageCalculate( utprogramSvc.countByExample(example) ); // startRow, endRow

		List<?> listview  = utprogramSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);

		return "utprogram/list";


	}


	@RequestMapping(value = "/utprogramRead")
	public String utprogramRead(HttpServletRequest request, utprogram utprogram, 
			ModelMap modelMap) {


		String sn = request.getParameter("sn");
		utprogram = utprogramSvc.selectByPrimaryKey(Integer.parseInt(sn));

		List<?> listsel  = utprogramSvc.selectListSelPtype("프로그램분류");
		modelMap.addAttribute("listsel", listsel);
		List<?> listrel1  = utprogramSvc.selectListSelRelprog(sn);
		modelMap.addAttribute("listrel1", listrel1);
		List<?> listrel2  = utprogramSvc.selectListSelRelprog(sn);
		modelMap.addAttribute("listrel2", listrel2);
		List<?> listrel3  = utprogramSvc.selectListSelRelprog(sn);
		modelMap.addAttribute("listrel3", listrel3);


		modelMap.addAttribute("utprogram", utprogram);

		return "utprogram/detail";
	}



	@RequestMapping(value = "/utpdetailList")
	public String utpdetailList(HttpServletRequest request,utpdetailExample example, ModelMap modelMap,HttpSession session,utprogram utprogram) {

		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}
		utprogram.setSn(Integer.parseInt(utpsn));


		List<?> listrel3  = utprogramSvc.selectListSelDtlprog(utprogram);


		modelMap.addAttribute("listrel3", listrel3);

		example.setUtpsn(Integer.parseInt(utpsn));
		example.pageCalculate( utprogramSvc.countByExampleUtpd(example) ); // startRow, endRow

		List<?> listview  = utprogramSvc.selectByExampleUtpd(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);


		return "utpdetail/list";
	}

	@RequestMapping(value = "/utpdetailRead")
	public String utpdetailRead(HttpServletRequest request, utpdetail utpdetail, 
			ModelMap modelMap) {


		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}

		String chasi = "0";

		if ( request.getParameter("chasi") != null ) {
			chasi = request.getParameter("chasi");
		}

		utpdetail.setUtpsn(Integer.parseInt(utpsn));
		utpdetail.setChasi(chasi);
		utpdetail.setNewchasi("UPDATE");


		utpdetail = utprogramSvc.selectByKeyUtpd(utpdetail);


		modelMap.addAttribute("utpdetail", utpdetail);



		return "utpdetail/detail";
	}

	@RequestMapping(value = "/utpdetailForm")
	public String utpdetailForm(HttpServletRequest request, utpdetail utpdetail, 
			ModelMap modelMap) {

		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}

		utpdetail.setUtpsn(Integer.parseInt(utpsn));
		
		
		
		utpdetail = utprogramSvc.selectByUtpdForm(utpdetail);
		
		utpdetail.setChasi( String.valueOf( Integer.parseInt(utpdetail.getChasi()) + 1) );
		utpdetail.setNewchasi("NEW");
		
		
		modelMap.addAttribute("utpdetail", utpdetail);

		return "utpdetail/detail";
	}


	@RequestMapping(value = "/utpdetailSave")
	public String utpdetailSave( HttpServletRequest request, utpdetail utpdetail, 
			ModelMap modelMap,utprogram utprogram,utpdetailExample example) {


		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}
		
		String chasi = "0";

		if ( request.getParameter("chasi") != null ) {
			chasi = request.getParameter("chasi");
		}
		
		String newchasi = "";

		if ( request.getParameter("newchasi") != null ) {
			newchasi = request.getParameter("newchasi");
		}
		
		
		
		if ( !"NEW".equals(newchasi) ) {
			utprogramSvc.updateByPrimaryKeyUtpd(utpdetail);
		} else {
			utprogramSvc.insertUtpd(utpdetail);
		}

		
		
		
		utprogram.setSn(Integer.parseInt(utpsn));


		List<?> listrel3  = utprogramSvc.selectListSelDtlprog(utprogram);


		modelMap.addAttribute("listrel3", listrel3);

		example.setUtpsn(Integer.parseInt(utpsn));
		example.pageCalculate( utprogramSvc.countByExampleUtpd(example) ); // startRow, endRow

		List<?> listview  = utprogramSvc.selectByExampleUtpd(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);


		return "utpdetail/list";


	}
	
	@RequestMapping(value = "/utpdetailDelete")
	public String utpdetailDelete(HttpServletRequest request, utpdetail utpdetail, 
			ModelMap modelMap,utprogram utprogram,utpdetailExample example) {


		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}

		String chasi = "0";

		if ( request.getParameter("chasi") != null ) {
			chasi = request.getParameter("chasi");
		}

		utpdetail.setUtpsn(Integer.parseInt(utpsn));
		utpdetail.setChasi(chasi);
		


		utprogramSvc.deleteByExampleUtpd(utpdetail);


		List<?> listrel3  = utprogramSvc.selectListSelDtlprog(utprogram);


		modelMap.addAttribute("listrel3", listrel3);

		example.setUtpsn(Integer.parseInt(utpsn));
		example.pageCalculate( utprogramSvc.countByExampleUtpd(example) ); // startRow, endRow

		List<?> listview  = utprogramSvc.selectByExampleUtpd(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);



		return "utpdetail/list";
	}



}
