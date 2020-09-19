package com.ultarischool.utpafter;

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
import com.ultarischool.utprogram.utprogram;

import edumgt.common.util.FileUtil;
import edumgt.common.util.FileVO;




@Controller 
public class UtpafterCtr {

	@Autowired
	private UtpafterSvc utpafterSvc;


	@RequestMapping(value = "/utpafterList")
	public String utpdetailList(HttpServletRequest request,
			utpafterExample example, ModelMap modelMap,HttpSession session,utpafter utpafter, utprogram utprogram) {

		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}
		utpafter.setSn(Integer.parseInt(utpsn));


		List<?> listrel3  = utpafterSvc.selectListSelDtlprog(utprogram);
		modelMap.addAttribute("listrel3", listrel3);

		example.setUtpsn(Integer.parseInt(utpsn));
		example.pageCalculate( utpafterSvc.countByExampleUtpd(example) ); // startRow, endRow

		List<?> listview  = utpafterSvc.selectByExampleUtpd(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);


		return "utpafter/list";
	}

	@RequestMapping(value = "/utpafterRead")
	public String utpdetailRead(HttpServletRequest request, utpafter utpafter, 
			ModelMap modelMap) {


		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}

		

		utpafter.setUtpsn(Integer.parseInt(utpsn));
		


		utpafter = utpafterSvc.selectByKeyUtpd(utpafter);


		modelMap.addAttribute("utpafter", utpafter);



		return "utpafter/detail";
	}

	@RequestMapping(value = "/utpafterForm")
	public String utpdetailForm(HttpServletRequest request, utpafter utpafter, 
			ModelMap modelMap) {

		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}

		utpafter.setUtpsn(Integer.parseInt(utpsn));
		
		utpafter = utpafterSvc.selectByUtpdForm(utpafter);

		
		modelMap.addAttribute("utpafter", utpafter);

		return "utpafter/detail";
	}


	@RequestMapping(value = "/utpafterSave")
	public String utpdetailSave( HttpServletRequest request, utpafter utpafter, 
			ModelMap modelMap,utprogram utprogram,utpafterExample example) {


		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}
		
		
		
		
		
		if ( utpafter.getSn() != null ) {
			utpafterSvc.updateByPrimaryKeyUtpd(utpafter);
		} else {
			utpafterSvc.insertUtpd(utpafter);
		}

		
		
		
		utprogram.setSn(Integer.parseInt(utpsn));


		List<?> listrel3  = utpafterSvc.selectListSelDtlprog(utprogram);


		modelMap.addAttribute("listrel3", listrel3);

		example.setUtpsn(Integer.parseInt(utpsn));
		example.pageCalculate( utpafterSvc.countByExampleUtpd(example) ); // startRow, endRow

		List<?> listview  = utpafterSvc.selectByExampleUtpd(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);


		return "utpafter/list";


	}
	
	@RequestMapping(value = "/utpafterDelete")
	public String utpdetailDelete(HttpServletRequest request, utpafter utpafter, 
			ModelMap modelMap,utpafterExample example, utprogram utprogram) {


		String utpsn = "0";

		if ( request.getParameter("utpsn") != null ) {
			utpsn = request.getParameter("utpsn");
		}

		String chasi = "0";

		if ( request.getParameter("chasi") != null ) {
			chasi = request.getParameter("chasi");
		}

		utpafter.setUtpsn(Integer.parseInt(utpsn));
		utpafter.setChasi(chasi);
		


		utpafterSvc.deleteByExampleUtpd(utpafter);


		List<?> listrel3  = utpafterSvc.selectListSelDtlprog(utprogram);


		modelMap.addAttribute("listrel3", listrel3);

		example.setUtpsn(Integer.parseInt(utpsn));
		example.pageCalculate( utpafterSvc.countByExampleUtpd(example) ); // startRow, endRow

		List<?> listview  = utpafterSvc.selectByExampleUtpd(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);



		return "utpafter/list";
	}



}
