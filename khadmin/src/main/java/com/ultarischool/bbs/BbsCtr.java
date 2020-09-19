package com.ultarischool.bbs;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller 
public class BbsCtr {

	@Autowired
	private BbsSvc bbsSvc;
	
	@RequestMapping("/FileDown")
    public ModelAndView download(@RequestParam("filecol")String filecol){
        
        
		String path = "C:\\tom99\\webapps\\ROOT\\"; 
        String fullPath = path + filecol;
         
        File file = new File(fullPath);
        
        
         
        return new ModelAndView("download", "downloadFile", file);
    }


	


	@RequestMapping(value = "/bbsList", method = {RequestMethod.GET, RequestMethod.POST})
	public String bbsList(HttpServletRequest request,bbsExample example, ModelMap modelMap) {

		example.pageCalculate( bbsSvc.countByExample(example) );
		
		List<?> listview  = bbsSvc.selectByExample(example);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);
		

		return "bbs/list";
	}


	@RequestMapping(value = "/bbsRead")
	public String posts1Read(HttpServletRequest request, bbs bbs, 
			ModelMap modelMap) {
		
		
		String sn = request.getParameter("sn");
		
		

		bbs = bbsSvc.selectByPrimaryKey(Integer.parseInt(sn));

		modelMap.addAttribute("bbs", bbs);
		
		return "bbs/detail";
	}
	
	
	@RequestMapping(value = "/bbsDelete")
	public String bbsDelete(HttpServletRequest request, bbs bbs, 
			ModelMap modelMap) {
		
		
		String sn = request.getParameter("sn");
		
		

		bbsSvc.deleteByPrimaryKey(Integer.parseInt(sn));

		
		
		return "redirect:bbsList";
	}
	
	
	@RequestMapping(value = "/bbsSave")
	public String bbsSave(HttpServletRequest request, bbs bbs, 
			ModelMap modelMap) {
		
		bbs.setAnsyn(request.getParameter("ansyn"));

		bbsSvc.updateByExampleBbs(bbs);

		return "redirect:bbsList";
	}







}
