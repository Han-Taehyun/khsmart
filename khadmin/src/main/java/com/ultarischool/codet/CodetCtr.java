package com.ultarischool.codet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

//import org.apache.fontbox.ttf.TrueTypeCollection;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType0Font;
//import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


//import java.io.File;
import java.io.FileInputStream;
//import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
//import java.io.StringReader;
import java.net.URLEncoder;
//import java.nio.charset.Charset;

import javax.servlet.http.HttpServletResponse;






@Controller 
public class CodetCtr  {



	@Autowired
	private CodetSvc codetSvc;



	@RequestMapping(value = "/codetList", method = {RequestMethod.GET, RequestMethod.POST})
	public String codetList(HttpServletRequest request, codetExample example, ModelMap modelMap,codet codet) {


		List<?> listrel3  = codetSvc.selectListCodeType();
		modelMap.addAttribute("listrel3", listrel3);

		String category = "";
		if ( request.getParameter("category") != null ) { 
			category = request.getParameter("category");

		}
		List<?> listview  = null;
		if( !"0".equals(category) ) {
			example.pageCalculate( codetSvc.countByExample2(example) ); 
			listview  = codetSvc.selectByExample2(example);

		}else {
			example.pageCalculate( codetSvc.countByExample(example) ); 
			listview  = codetSvc.selectByExample(example);

		}

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", example);



		return "codet/list";
	}


	@RequestMapping(value = "/codetForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String codetForm(HttpServletRequest request, codet codet, 
			ModelMap modelMap) {


		return "usercode/detail";
	}

	@RequestMapping(value = "/codetRead", method = {RequestMethod.GET, RequestMethod.POST})
	public String codetRead(HttpServletRequest request,  codet codet, 
			ModelMap modelMap) {


		String sn = request.getParameter("sn");
		codet = codetSvc.selectByPrimaryKey(Integer.parseInt(sn));

		modelMap.addAttribute("codet", codet);

		return "codet/detail";
	}




	@RequestMapping(value = "/codetSave", method = {RequestMethod.GET, RequestMethod.POST})
	public String codetSave(codetExample example, 
			HttpServletRequest request, codet codet,  
			ModelMap modelMap, RedirectAttributes redirectAttributes) {



		if ( codet.getSn() == null ) {

			codetSvc.insert(codet);


		} else { 
			codetSvc.updateByPrimaryKeyCodet(codet);

		}

		redirectAttributes.addAttribute("category", codet.getCategory());
		return "redirect:codetList";



	}



	@RequestMapping(value = "/codetDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String codetDelete(codetExample example, 
			HttpServletRequest request, codet codet,  
			ModelMap modelMap, RedirectAttributes redirectAttributes) {


		String sn = request.getParameter("sn");

		codetSvc.deleteByPrimaryKey(Integer.parseInt(sn));


		redirectAttributes.addAttribute("category", codet.getCategory());
		return "redirect:codetList";

	}

	@RequestMapping(value = "/codetExcel", method = {RequestMethod.GET, RequestMethod.POST})
	public String downloadCsv(ModelMap modelMap, HttpServletResponse response) throws IOException {




		List<codet> listview  = codetSvc.selectAll();
		modelMap.addAttribute("listview", listview);
		return "codet/excel";



	}


	

	@RequestMapping(value = "/tutorPdf", method = {RequestMethod.GET, RequestMethod.POST})
	public void tutorPdf(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) throws IOException {

		com.ultarischool.usert.usert usert = new com.ultarischool.usert.usert();


		String sn = "";
		if ( request.getParameter("sn") != null ) {
			sn = request.getParameter("sn");}

		usert = codetSvc.selectByPrimaryKeyTutor(Integer.parseInt(sn));



		final PDDocument doc = new PDDocument();


		PDImageXObject pdImage = PDImageXObject.createFromFile("C:\\tom99\\webapps\\ROOT\\images\\"+usert.getRegimg(), doc);


		InputStream fontStream = new FileInputStream("C:\\tom99\\webapps\\ROOT\\fonts\\NanumGothic-Regular.ttf");
		PDType0Font fontGulim = PDType0Font.load(doc, fontStream);


		PDPage blankPage = new PDPage(PDRectangle.A4);
		doc.addPage(blankPage);

		// 현재 페이지 설정
		PDPage page = doc.getPage(0);

		// 컨텐츠 스트림 열기
		PDPageContentStream contentStream = new PDPageContentStream(doc, page);


		String utjobstr = "";
		if ( usert.getUtjcode1() != null) utjobstr += usert.getUtjcode1() +",";
		if ( usert.getUtjcode2() != null) utjobstr += usert.getUtjcode2() +",";
		if ( usert.getUtjcode3() != null) utjobstr += usert.getUtjcode3() +",";

		try {
			// 글씨 쓰기
			drawText("강사지원서", fontGulim, 14, 263, 790, contentStream);


			// 테이블 그리기
			String[][] contents = {
					{ "이름", usert.getUsername(), "아이디" , usert.getUserid()},
					{ "연락처", usert.getMobile(), "생년월일" ,   usert.getBirthyyyymmdd() },
					{ "강사유형", usert.getTutortype(), "활동지역" ,   usert.getActivearea() },
					{ "최종학력", usert.getGradu() , "이메일" ,   usert.getEmail() }

			};

			drawTable2(page, contentStream, 750, 0, contents, doc, 111);

			String[][] contents1 = {

					{ "직업분야", usert.getKocode(), "직업" ,   utjobstr }
			};

			drawTable(page, contentStream, 660, 28, contents1, doc);

			contentStream.drawImage(pdImage, 28, 670, 80, 80);


			drawLine(contentStream, 28, 620, 569, 620);

			drawText("주소 : " + usert.getAddr(), fontGulim, 9, 33, 603, contentStream);

			drawLine(contentStream, 28, 590, 569, 590);

			drawText("강의이력 : " + usert.getMemo1(), fontGulim, 9, 33, 573, contentStream);

			drawLine(contentStream, 28, 560, 569, 560);

			drawText("은행 : " + usert.getBankacc(), fontGulim, 9, 33, 543, contentStream);

			drawLine(contentStream, 28, 530, 569, 530);


			// 테이블 그리기
			String[][] contents2 = {
					{ "학교명", "	학과(전공)", "	입학일자" , 	"졸업일자"	, "최종학력" },
					{ usert.getSch1(), usert.getGrd1(), usert.getSchsdate1() , 	 usert.getSchedate1()	, usert.getResult1()},
					{ usert.getSch2(), usert.getGrd2(), usert.getSchsdate2() , 	 usert.getSchedate2()	, usert.getResult2() },
					{ usert.getSch3(), usert.getGrd3(), usert.getSchsdate3() , 	 usert.getSchedate3()	, usert.getResult3() }
					

			};
			
			drawTable(page, contentStream, 520, 28, contents2, doc);
			
			
			String[][] contents3 = {
					{ "근무(강의)기관", "근무(강의)기간", "직급/직책" ,  "근무(강의내용)"},
					{ usert.getJob1(), usert.getJobsdate1()+"~"+usert.getJobedate1(), usert.getJobg1() , 	 usert.getJobm1()	},
					{ usert.getJob2(), usert.getJobsdate2()+"~"+usert.getJobedate2(), usert.getJobg2() , 	 usert.getJobm2()	 },
					{ usert.getJob3(), usert.getJobsdate3()+"~"+usert.getJobedate3(), usert.getJobg3() , 	 usert.getJobm3()	 }
					

			};
			
			drawTable(page, contentStream, 430, 28, contents3, doc);
			
			
			String[][] contents4 = {
					{ "취득일자","자격/면허명","발행처/발행기관"},
					{ usert.getSppsdate1(), usert.getSpp1(),usert.getSppg1()	},
					{ usert.getSppsdate2(), usert.getSpp2(),usert.getSppg2()	 },
					{ usert.getSppsdate3(), usert.getSpp3(),usert.getSppg3()	 }
					

			};
			
			drawTable(page, contentStream, 340, 28, contents4, doc);


		}catch(Exception eee) {

		}




		// 컨텐츠 스트림 닫기
		contentStream.close();


		// 파일 다운로드 설정
		response.setContentType("application/pdf");
		String fileName = URLEncoder.encode(usert.getUsername()+"_강사지원서", "UTF-8");
		response.setHeader("Content-Disposition", "inline; filename=" + fileName + ".pdf");

		// PDF 파일 출력
		doc.save(response.getOutputStream());
		doc.close();







	}





	private void drawText(String text, PDFont font, int fontSize, float left, float bottom, PDPageContentStream contentStream) throws Exception {
		contentStream.beginText(); 
		contentStream.setFont(font, fontSize);
		contentStream.newLineAtOffset(left, bottom);
		contentStream.showText(text);
		contentStream.endText();
	}

	private void drawLine(PDPageContentStream contentStream, float xStart, float yStart, float xEnd, float yEnd) throws IOException {
		contentStream.moveTo(xStart,yStart);
		contentStream.lineTo(xEnd,yEnd);
		contentStream.setLineWidth(1);
		contentStream.stroke();
	}


	public void drawTable(PDPage page, PDPageContentStream contentStream, float y, float margin, String[][] content,PDDocument doc) throws Exception {

		InputStream fontStream = new FileInputStream("C:\\tom99\\webapps\\ROOT\\fonts\\NanumGothic-Regular.ttf");
		PDType0Font fontGulim = PDType0Font.load(doc, fontStream);


		final int rows = content.length;
		final int cols = content[0].length;

		final float rowHeight = 20f;

		final float tableWidth = page.getMediaBox().getWidth() - (2 * margin);

		final float tableHeight = rowHeight * rows;


		float colWidth = tableWidth / (float)cols;

		final float cellMargin = 5f;

		// 행을 그린다.
		float nexty = y ;
		for(int i = 0; i <= rows; i++) {
			drawLine(contentStream, margin, nexty, margin + tableWidth, nexty);
			nexty -= rowHeight;
		}

		// 열을 그린다.
		float nextx = margin;
		for(int i = 0; i <= cols; i++) {


			drawLine(contentStream, nextx, y, nextx, y - tableHeight);


			nextx += colWidth ;

		}

		float textx = margin + cellMargin;
		float texty = y - 15;
		for(int i = 0; i < content.length; i++) {
			for(int j = 0 ; j < content[i].length; j++) {
				String text = content[i][j];

				drawText(text, fontGulim, 9, textx, texty, contentStream);

				textx += colWidth;
			}
			texty -= rowHeight;
			textx = margin + cellMargin;
		}
	}

	public void drawTable2(PDPage page, PDPageContentStream contentStream, float y, float margin, String[][] content,PDDocument doc, float leftmargin) throws Exception {

		InputStream fontStream = new FileInputStream("C:\\tom99\\webapps\\ROOT\\fonts\\NanumGothic-Regular.ttf");
		PDType0Font fontGulim = PDType0Font.load(doc, fontStream);


		final int rows = content.length;
		final int cols = content[0].length;

		final float rowHeight = 20f;

		//final float tableWidth = page.getMediaBox().getWidth() - leftmargin;
		final float tableWidth = 456;

		final float tableHeight = rowHeight * rows;

		final float colWidth = tableWidth / (float)cols;
		final float cellMargin = 5f;

		// 행을 그린다.
		float nexty = y ;
		for(int i = 0; i <= rows; i++) {
			drawLine(contentStream, leftmargin, nexty, leftmargin + tableWidth, nexty);
			nexty -= rowHeight;
		}

		// 열을 그린다.
		float nextx = leftmargin;
		for(int i = 0; i <= cols; i++) {
			drawLine(contentStream, nextx, y, nextx, y - tableHeight);
			nextx += colWidth;
		}

		float textx = leftmargin + cellMargin;
		float texty = y - 14;
		for(int i = 0; i < content.length; i++) {
			for(int j = 0 ; j < content[i].length; j++) {
				String text = content[i][j];

				drawText(text, fontGulim, 9, textx, texty, contentStream);

				textx += colWidth;
			}
			texty -= rowHeight;
			textx = leftmargin + cellMargin;
		}
	}




}
