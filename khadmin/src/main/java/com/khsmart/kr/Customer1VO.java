package com.khsmart.kr;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Customer1VO {

	private List<MultipartFile> uploadfile;

	public List<MultipartFile> getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(List<MultipartFile> uploadfile) {
		this.uploadfile = uploadfile;
	}

	private String taxday;
	
	private String paymonth;
	
	
	public String getPaymonth() {
		return paymonth;
	}

	public void setPaymonth(String paymonth) {
		this.paymonth = paymonth;
	}

	private String worker;
	
	private String server2;

	public String getServer2() {
		return server2;
	}

	public void setServer2(String server2) {
		this.server2 = server2;
	}

	private String comcode2;


	public String getComcode2() {
		return comcode2;
	}

	public void setComcode2(String comcode2) {
		this.comcode2 = comcode2;
	}

	public String getWorker() {
		return worker;
	}

	public void setWorker(String worker) {
		this.worker = worker;
	}

	public String getTaxday() {
		return taxday;
	}

	public void setTaxday(String taxday) {
		this.taxday = taxday;
	}

	public String getCeoname() {
		return ceoname;
	}

	public void setCeoname(String ceoname) {
		this.ceoname = ceoname;
	}
	private String addmsg;

	private String minapcnt;

	public String getMinapcnt() {
		return minapcnt;
	}

	public void setMinapcnt(String minapcnt) {
		this.minapcnt = minapcnt;
	}
	private String userid;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAddmsg() {
		return addmsg;
	}

	public void setAddmsg(String addmsg) {
		this.addmsg = addmsg;
	}
	private String statustype;

	private String area;

	private String ceodtel1;
	public String getCeodtel1() {
		return ceodtel1;
	}

	public void setCeodtel1(String ceodtel1) {
		this.ceodtel1 = ceodtel1;
	}

	public String getCeodtel2() {
		return ceodtel2;
	}

	public void setCeodtel2(String ceodtel2) {
		this.ceodtel2 = ceodtel2;
	}

	private String ceodtel2;

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getStatustype() {
		return statustype;
	}

	public void setStatustype(String statustype) {
		this.statustype = statustype;
	}

	private String ceoemail;

	public String getCeoemail() {
		return ceoemail;
	}

	public void setCeoemail(String ceoemail) {
		this.ceoemail = ceoemail;
	}

	public String getClerkname() {
		return clerkname;
	}

	public void setClerkname(String clerkname) {
		this.clerkname = clerkname;
	}

	public String getClerkdtel1() {
		return clerkdtel1;
	}

	public void setClerkdtel1(String clerkdtel1) {
		this.clerkdtel1 = clerkdtel1;
	}

	public String getClerkdtel2() {
		return clerkdtel2;
	}

	public void setClerkdtel2(String clerkdtel2) {
		this.clerkdtel2 = clerkdtel2;
	}

	private String clerkname;


	private String fax;
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	private String statuschange;

	private String indate;

	public String getIndate() {
		return indate;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}

	private String server;
	public String getServer() {
		return server;
	}

	public void setServer(String server) {
		this.server = server;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	private String contents;


	public String getStatuschange() {
		return statuschange;
	}

	public void setStatuschange(String statuschange) {
		this.statuschange = statuschange;
	}

	private String dmsend;
	public String getDmsend() {
		return dmsend;
	}

	public void setDmsend(String dmsend) {
		this.dmsend = dmsend;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	private String course;

	private String lifeincom;
	public String getLifeincom() {
		return lifeincom;
	}

	private String acctel;
	public String getAcctel() {
		return acctel;
	}

	public void setAcctel(String acctel) {
		this.acctel = acctel;
	}

	public String getAccname() {
		return accname;
	}

	public void setAccname(String accname) {
		this.accname = accname;
	}

	public String getAccemail() {
		return accemail;
	}

	public void setAccemail(String accemail) {
		this.accemail = accemail;
	}

	private String accname;
	private String accemail;

	public void setLifeincom(String lifeincom) {
		this.lifeincom = lifeincom;
	}

	public String getGeneincom() {
		return geneincom;
	}

	public void setGeneincom(String geneincom) {
		this.geneincom = geneincom;
	}

	public String getLifecompany() {
		return lifecompany;
	}

	public void setLifecompany(String lifecompany) {
		this.lifecompany = lifecompany;
	}

	public String getLongcompany() {
		return longcompany;
	}

	public void setLongcompany(String longcompany) {
		this.longcompany = longcompany;
	}

	private String geneincom;
	private String lifecompany;
	private String longcompany;
	private String comno;
	public String getComno() {
		return comno;
	}

	public void setComno(String comno) {
		this.comno = comno;
	}

	public String getMancount() {
		return mancount;
	}

	public void setMancount(String mancount) {
		this.mancount = mancount;
	}

	public String getCarincom() {
		return carincom;
	}

	public void setCarincom(String carincom) {
		this.carincom = carincom;
	}

	public String getLongincom() {
		return longincom;
	}

	public void setLongincom(String longincom) {
		this.longincom = longincom;
	}

	private String mancount;
	private String carincom;
	private String longincom;

	private String zip;
	private String areatype;

	public String getAreatype() {
		return areatype;
	}

	public void setAreatype(String areatype) {
		this.areatype = areatype;
	}

	private String addr;

	private String clerkemail;

	private String clerkhtel;

	private String wdate;

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getClerkhtel() {
		return clerkhtel;
	}

	public void setClerkhtel(String clerkhtel) {
		this.clerkhtel = clerkhtel;
	}

	public String getClerkemail() {
		return clerkemail;
	}

	public void setClerkemail(String clerkemail) {
		this.clerkemail = clerkemail;
	}

	private String clerkdtel1;
	private String clerkdtel2;

	private String ceohtel;

	public String getCeohtel() {
		return ceohtel;
	}

	public void setCeohtel(String ceohtel) {
		this.ceohtel = ceohtel;
	}

	private String maintel1;

	public String getMaintel1() {
		return maintel1;
	}

	public void setMaintel1(String maintel1) {
		this.maintel1 = maintel1;
	}

	public String getMaintel2() {
		return maintel2;
	}

	public void setMaintel2(String maintel2) {
		this.maintel2 = maintel2;
	}

	private String maintel2;

	private String cnt;

	public String getCnt() {
		return cnt;
	}

	public void setCnt(String cnt) {
		this.cnt = cnt;
	}

	public String getPaysum() {
		return paysum;
	}

	public void setPaysum(String paysum) {
		this.paysum = paysum;
	}

	private String paysum;

	private String ceoname;

	private String comtype;

	public String getComtype() {
		return comtype;
	}

	public void setComtype(String comtype) {
		this.comtype = comtype;
	}

	public String getAdmincall() {
		return admincall;
	}

	public void setAdmincall(String admincall) {
		this.admincall = admincall;
	}

	private String admincall;

	private String idx;

	private String payname;

	public String getPayname() {
		return payname;
	}

	public void setPayname(String payname) {
		this.payname = payname;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getAgreekind() {
		return agreekind;
	}

	public void setAgreekind(String agreekind) {
		this.agreekind = agreekind;
	}

	public String getPayday() {
		return payday;
	}

	public void setPayday(String payday) {
		this.payday = payday;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getPaykind() {
		return paykind;
	}

	public void setPaykind(String paykind) {
		this.paykind = paykind;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getComcode() {
		return comcode;
	}

	public void setComcode(String comcode) {
		this.comcode = comcode;
	}

	private String startdate;
	private String companyname;
	private String payment;
	private String agreekind;
	private String payday;
	private String bankname;
	private String paykind;
	private String status;
	private String seller;
	private String comcode;

}
