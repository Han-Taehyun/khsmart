package com.khsmart.kr;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.khsmart.kr.Member1VO;
import edumgt.common.util.*;

@Controller
public class Member1Ctr {

	@Autowired
	private Member1Svc member1Svc;

	// @Value("#{fileinfo['file.path']}")
	private String path;

	@RequestMapping(value = "/MemberPermi")
	public String MemberPermi(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		String srchusertype = "SA";
		if (request.getParameter("srchusertype") != null) {
			srchusertype = request.getParameter("srchusertype");

		}

		searchVO.setSrchusertype(srchusertype);

		List<?> listview = member1Svc.selectMemberPermiList(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		searchVO.setUsertype((String) session.getAttribute("USERTYPE"));
		searchVO.setProgname("member1/MemberPermi");
		if (member1Svc.selectMemberPermiOne(searchVO) != null
				&& !member1Svc.selectMemberPermiOne(searchVO).equals("")) {
			return "member1/MemberPermi";

		} else {

			return "common/Permi";
		}
	}

	@RequestMapping(value = "/MemberPermiReg")
	public String MemberPermiReg(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap) {

		String usertype = "SA";
		if (request.getParameter("usertype") != null) {
			usertype = request.getParameter("usertype");

		}

		modelMap.addAttribute("usertype", usertype);

		return "member1/MemberPermiReg";
	}

	@RequestMapping(value = "/MemberPermiSave")
	public String MemberPermiSave(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap) {

		String usertype = "SA";
		if (request.getParameter("usertype") != null) {
			usertype = request.getParameter("usertype");

		}

		String progname = "";
		if (request.getParameter("progname") != null) {
			progname = request.getParameter("progname");

		}

		Member1VO mvo = new Member1VO();
		mvo.setUsertype(usertype);
		mvo.setProgname(progname);
		member1Svc.insertPermi(mvo);

		searchVO.setUsertype(usertype);

		List<?> listview = member1Svc.selectMemberPermiList(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "member1/MemberPermi";
	}

	@RequestMapping(value = "/MemberPermiDel")
	public String MemberPermiDel(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap) {

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");

		}

		String srchusertype = "CP";
		if (request.getParameter("srchusertype") != null) {
			srchusertype = request.getParameter("srchusertype");

		}

		searchVO.setSrchusertype(srchusertype);
		searchVO.setSn(sn);

		member1Svc.delMemberPermiDel(searchVO);

		List<?> listview = member1Svc.selectMemberPermiList(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "member1/MemberPermi";
	}

	@RequestMapping(value = "/MemberPermiAdd")
	public String MemberPermiAdd(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap) {

		String sn = "0";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");

		}

		String srchusertype = "CP";
		if (request.getParameter("srchusertype") != null) {
			srchusertype = request.getParameter("srchusertype");

		}

		searchVO.setSrchusertype(srchusertype);
		searchVO.setSn(sn);

		member1Svc.delMemberPermiAdd(searchVO);

		List<?> listview = member1Svc.selectMemberPermiList(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "member1/MemberPermi";
	}

	@RequestMapping(value = "/ExSaveForm")
	public String ExSaveForm(SearchVO searchVO, HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap,
			HttpSession session, HttpServletResponse response) {

		String alertMsg = "";
		modelMap.addAttribute("alertMsg", alertMsg);
		return "posts/ExUpForm";

	}

	@RequestMapping(value = "/ExSave")
	public String ExSave(SearchVO searchVO, HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap,
			HttpSession session, HttpServletResponse response) {

		@SuppressWarnings("unused")
		String[] fileno = request.getParameterValues("fileno");

		FileUtil fs = new edumgt.common.util.FileUtil();

		List<FileVO> filelist = fs.saveAllFilesBB(posts1Info.getUploadfile(), request, response, path);

		for (FileVO f : filelist) {

			posts1Info.setImgfile(f.getFilename());
		}

		String rr = "0";

		String rtn = "posts/ExUpForm";

		String alertMsg = "엑셀파일 업로드 및 저장하였습니다.";
		modelMap.addAttribute("alertMsg", alertMsg);

		if (request.getParameter("rr") != null) {
			rr = request.getParameter("rr");
		}
		if (rr.equals("1")) {
			readXlsx(path + posts1Info.getImgfile());
		}
		if (rr.equals("2")) {
			readXlsx2(path + posts1Info.getImgfile());
		}
		if (rr.equals("3")) {
			readXlsx3(path + posts1Info.getImgfile());
			// rtn = "redirect:customer2List";
		}

		return rtn;

	}

	public void readXlsx(String file1) {

		Customer1VO cvo = new Customer1VO();

		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file1);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		XSSFWorkbook workbook = null;
		try {
			workbook = new XSSFWorkbook(fis);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		int rowindex = 0;
		int columnindex = 0;

		String value = "";

		XSSFSheet sheet = workbook.getSheetAt(0);
		XSSFCell cell;

		int rows = sheet.getPhysicalNumberOfRows();

		@SuppressWarnings("unused")
		String rtnVal = "0";

		for (rowindex = 0; rowindex < rows; rowindex++) {

			XSSFRow row = sheet.getRow(rowindex);

			int cells = row.getPhysicalNumberOfCells();

			if (cells > 0) {

				for (columnindex = 0; columnindex < cells; columnindex++) {

					cell = row.getCell(columnindex);

					if (cell != null) {
						value = cell.getStringCellValue();

						if (value != null && !value.equals("")) {

							if (columnindex == 2) {
								cvo.setCompanyname(value);
								// cvo = customer1Svc.selectCustomerIdxCP(value);

							}

							if (columnindex == 3) {
								cvo.setIndate(value);
							}

							if (columnindex == 4) {
								cvo.setPaykind(value);
							}

							if (columnindex == 5) {
								cvo.setPayment(value);
							}

							if (columnindex == 6) {
								cvo.setPaymonth(value);
							}

						}

						value = "";

					}

				}
				/*
				 * if (customer1Svc.selectBillExcelData(cvo) != null) { rtnVal =
				 * customer1Svc.selectBillExcelData(cvo); } if (rtnVal.equals("0")) {
				 * customer1Svc.insertBillExcelData(cvo); }
				 */
			}

		}

		try {
			workbook.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void readXlsx2(String file1) {

		Customer1VO cvo = new Customer1VO();

		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file1);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		XSSFWorkbook workbook = null;
		try {
			workbook = new XSSFWorkbook(fis);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		int rowindex = 0;
		int columnindex = 0;

		String value = "";

		XSSFSheet sheet = workbook.getSheetAt(0);
		XSSFCell cell;

		int rows = sheet.getPhysicalNumberOfRows();

		@SuppressWarnings("unused")
		String rtnVal = "0";

		for (rowindex = 0; rowindex < rows; rowindex++) {

			XSSFRow row = sheet.getRow(rowindex);

			int cells = row.getPhysicalNumberOfCells();

			if (cells > 0) {

				for (columnindex = 0; columnindex < cells; columnindex++) {

					cell = row.getCell(columnindex);

					if (cell != null) {
						value = cell.getStringCellValue();

						if (value != null && !value.equals("")) {

							if (columnindex == 2) {
								cvo.setCompanyname(value);
								// cvo = customer1Svc.selectCustomerIdxCP(value);

							}

							if (columnindex == 4) {
								cvo.setPaykind(value);
							}

							if (columnindex == 5) {
								cvo.setIndate(value);
								cvo.setPaymonth(value.substring(0, 6));
							}

							if (columnindex == 6) {
								cvo.setPayment(value);
							}

						}

						value = "";

					}

				}

				/*
				 * if (customer1Svc.selectTaxExcelData(cvo) != null) { rtnVal =
				 * customer1Svc.selectTaxExcelData(cvo); } if (rtnVal.equals("0")) {
				 * customer1Svc.insertTaxExcelData(cvo); }
				 */

			}

		}

		try {
			workbook.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void readXlsx3(String file1) {

		Customer1VO cvo = new Customer1VO();

		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file1);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		XSSFWorkbook workbook = null;
		try {
			workbook = new XSSFWorkbook(fis);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		int rowindex = 0;
		int columnindex = 0;

		String value = "";

		XSSFSheet sheet = workbook.getSheetAt(0);
		XSSFCell cell;

		int rows = sheet.getPhysicalNumberOfRows();

		@SuppressWarnings("unused")
		String rtnVal = "0";

		for (rowindex = 0; rowindex < rows; rowindex++) {

			XSSFRow row = sheet.getRow(rowindex);

			int cells = row.getPhysicalNumberOfCells();

			if (cells > 0) {

				for (columnindex = 0; columnindex < cells; columnindex++) {

					cell = row.getCell(columnindex);

					if (cell != null) {
						value = cell.getStringCellValue();

						if (value != null && !value.equals("")) {

							if (columnindex == 0) {
								cvo.setCompanyname(value);

							}

							if (columnindex == 1) {
								cvo.setCeoname(value);

							}

							if (columnindex == 2) {
								cvo.setMaintel1(value);

							}

							if (columnindex == 3) {
								cvo.setMaintel2(value);
							}

							if (columnindex == 4) {
								cvo.setAddr(value);
							}
							if (columnindex == 5) {
								cvo.setSeller(value);
							}

							if (columnindex == 6) {
								cvo.setIndate(value);
							}

							if (columnindex == 7) {
								cvo.setArea(value);
							}

							if (columnindex == 8) {
								cvo.setComtype(value);
							}

						}

						value = "";

					}

				}

				/*
				 * if (customer1Svc.selectCstExcelData(cvo) != null) { rtnVal =
				 * customer1Svc.selectCstExcelData(cvo); } if (rtnVal.equals("0")) {
				 * customer1Svc.insertCstExcelData(cvo); }
				 */

			}

		}

		try {
			workbook.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
