package com.ultarischool.course;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.ultarischool.cotag.CotagVO;
import com.ultarischool.cotarget.CotargetVO;

public class CourseVO {
	
	private MultipartFile img1file;
	public MultipartFile getImg1file() {
		return img1file;
	}

	public void setImg1file(MultipartFile img1file) {
		this.img1file = img1file;
	}

	public MultipartFile getImg2file() {
		return img2file;
	}

	public void setImg2file(MultipartFile img2file) {
		this.img2file = img2file;
	}

	public MultipartFile getImg3file() {
		return img3file;
	}

	public void setImg3file(MultipartFile img3file) {
		this.img3file = img3file;
	}

	private MultipartFile img2file;
	private MultipartFile img3file;
	
	private String img1;
	
	private Integer pkgcosn;
	
	public Integer getPkgcosn() {
		return pkgcosn;
	}

	public void setPkgcosn(Integer pkgcosn) {
		this.pkgcosn = pkgcosn;
	}

	private Integer cosid2;
	public Integer getCosid2() {
		return cosid2;
	}

	public void setCosid2(Integer cosid2) {
		this.cosid2 = cosid2;
	}

	public Integer getPkgid2() {
		return pkgid2;
	}

	public void setPkgid2(Integer pkgid2) {
		this.pkgid2 = pkgid2;
	}

	public Integer getOrd2() {
		return ord2;
	}

	public void setOrd2(Integer ord2) {
		this.ord2 = ord2;
	}

	private Integer pkgid2;
	private Integer ord2;
	
	private String cosid;
	private String ord;
	
	public String getOrd() {
		return ord;
	}

	public void setOrd(String ord) {
		this.ord = ord;
	}

	public String getCosid() {
		return cosid;
	}

	public void setCosid(String cosid) {
		this.cosid = cosid;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	private String img2;
	private String img3;
	
	private String cotag1;
	public String getCotag1() {
		return cotag1;
	}

	public void setCotag1(String cotag1) {
		this.cotag1 = cotag1;
	}

	public String getCotag2() {
		return cotag2;
	}

	public void setCotag2(String cotag2) {
		this.cotag2 = cotag2;
	}

	public String getCotag3() {
		return cotag3;
	}

	public void setCotag3(String cotag3) {
		this.cotag3 = cotag3;
	}

	public String getCotarget1() {
		return cotarget1;
	}

	public void setCotarget1(String cotarget1) {
		this.cotarget1 = cotarget1;
	}

	public String getCotarget2() {
		return cotarget2;
	}

	public void setCotarget2(String cotarget2) {
		this.cotarget2 = cotarget2;
	}

	public String getCotarget3() {
		return cotarget3;
	}

	public void setCotarget3(String cotarget3) {
		this.cotarget3 = cotarget3;
	}

	private String cotag2;
	private String cotag3;
	private String cotarget1;
	private String cotarget2;
	private String cotarget3;
	
	
	private String cont;
	public String getCont() {
		return cont;
	}

	public void setCont(String cont) {
		this.cont = cont;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	private String target;
	
	private String pkgtag;
	private String tutorid;
	public String getTutorid() {
		return tutorid;
	}

	public void setTutorid(String tutorid) {
		this.tutorid = tutorid;
	}

	private String ctcode;
	public String getCtcode() {
		return ctcode;
	}

	public void setCtcode(String ctcode) {
		this.ctcode = ctcode;
	}

	private String ttname;
	
	public String getTtname() {
		return ttname;
	}

	public void setTtname(String ttname) {
		this.ttname = ttname;
	}

	private String code;
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCodename() {
		return codename;
	}

	public void setCodename(String codename) {
		this.codename = codename;
	}

	private String codename;
	
	private String pucnt;
	
	
	public String getPucnt() {
		return pucnt;
	}

	public void setPucnt(String pucnt) {
		this.pucnt = pucnt;
	}

	public String getPkgtag() {
		return pkgtag;
	}

	public void setPkgtag(String pkgtag) {
		this.pkgtag = pkgtag;
	}

	public String getPkgprice() {
		return pkgprice;
	}

	public void setPkgprice(String pkgprice) {
		this.pkgprice = pkgprice;
	}

	public String getPkgmemo() {
		return pkgmemo;
	}

	public void setPkgmemo(String pkgmemo) {
		this.pkgmemo = pkgmemo;
	}

	public String getCscnt() {
		return cscnt;
	}

	public void setCscnt(String cscnt) {
		this.cscnt = cscnt;
	}

	public String getPzcnt() {
		return pzcnt;
	}

	public void setPzcnt(String pzcnt) {
		this.pzcnt = pzcnt;
	}

	private String pkgprice;
	private String pkgmemo;
	
	private String cscnt;
	private String pzcnt;

	private Integer pgsn;

	public Integer getPgsn() {
		return pgsn;
	}

	public void setPgsn(Integer pgsn) {
		this.pgsn = pgsn;
	}

	private String cucnt;
	private String cpcnt;

	public String getCpcnt() {
		return cpcnt;
	}

	public void setCpcnt(String cpcnt) {
		this.cpcnt = cpcnt;
	}

	public String getCucnt() {
		return cucnt;
	}

	public void setCucnt(String cucnt) {
		this.cucnt = cucnt;
	}

	public String getUsid() {
		return usid;
	}

	public void setUsid(String usid) {
		this.usid = usid;
	}

	public String getChapid() {
		return chapid;
	}

	public void setChapid(String chapid) {
		this.chapid = chapid;
	}

	public String getStudtime() {
		return studtime;
	}

	public void setStudtime(String studtime) {
		this.studtime = studtime;
	}

	public String getRuntime() {
		return runtime;
	}

	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}

	private String cptitle;
	public String getCptitle() {
		return cptitle;
	}

	public void setCptitle(String cptitle) {
		this.cptitle = cptitle;
	}

	public String getCpruntime() {
		return cpruntime;
	}

	public void setCpruntime(String cpruntime) {
		this.cpruntime = cpruntime;
	}

	private String cpruntime;
	
	private String rate;
	
	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	private String usid;
	private String chapid;
	private String studtime;
	private String runtime;

	private String pkgid;

	public String getPkgid() {
		return pkgid;
	}

	public void setPkgid(String pkgid) {
		this.pkgid = pkgid;
	}

	public String getPkgtitle() {
		return pkgtitle;
	}

	public void setPkgtitle(String pkgtitle) {
		this.pkgtitle = pkgtitle;
	}

	private String pkgtitle;

	private String courseid;

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getBilltype() {
		return billtype;
	}

	public void setBilltype(String billtype) {
		this.billtype = billtype;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getOrgprice() {
		return orgprice;
	}

	public void setOrgprice(String orgprice) {
		this.orgprice = orgprice;
	}

	public String getTx() {
		return tx;
	}

	public void setTx(String tx) {
		this.tx = tx;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	private String userid;
	
	private String cosimg1;
	public String getCosimg1() {
		return cosimg1;
	}

	public void setCosimg1(String cosimg1) {
		this.cosimg1 = cosimg1;
	}

	public String getCosimg2() {
		return cosimg2;
	}

	public void setCosimg2(String cosimg2) {
		this.cosimg2 = cosimg2;
	}

	public String getCosimg3() {
		return cosimg3;
	}

	public void setCosimg3(String cosimg3) {
		this.cosimg3 = cosimg3;
	}

	private String cosimg2;
	private String cosimg3;
	
	private MultipartFile cosimg1file;
	private MultipartFile cosimg2file;
	public MultipartFile getCosimg2file() {
		return cosimg2file;
	}

	public void setCosimg2file(MultipartFile cosimg2file) {
		this.cosimg2file = cosimg2file;
	}

	public MultipartFile getCosimg3file() {
		return cosimg3file;
	}

	public void setCosimg3file(MultipartFile cosimg3file) {
		this.cosimg3file = cosimg3file;
	}

	private MultipartFile cosimg3file;
	
	public MultipartFile getCosimg1file() {
		return cosimg1file;
	}

	public void setCosimg1file(MultipartFile cosimg1file) {
		this.cosimg1file = cosimg1file;
	}

	private String billtype;
	private String wdate;

	private String orgprice;
	private String tx;
	private String username;

	private Integer sn;
	private String coid;
	private String title;
	private String tottime;
	private String typecode;
	private String totheartnum;
	
	private String tgcode;
	public String getTgcode() {
		return tgcode;
	}

	public void setTgcode(String tgcode) {
		this.tgcode = tgcode;
	}

	public String getTgname() {
		return tgname;
	}

	public void setTgname(String tgname) {
		this.tgname = tgname;
	}

	private String tgname;
	
	private String intro;
	private String price;
	private String curriculum;
	private String detaildesc;
	private String dday;
	private List<CotagVO> tagList;
	private List<CotargetVO> targetList;
	private String large;

	public Integer getSn() {
		return sn;
	}

	public void setSn(Integer sn) {
		this.sn = sn;
	}

	public String getCoid() {
		return coid;
	}

	public void setCoid(String coid) {
		this.coid = coid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTottime() {
		return tottime;
	}

	public void setTottime(String tottime) {
		this.tottime = tottime;
	}

	public String getTypecode() {
		return typecode;
	}

	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}

	public String getTotheartnum() {
		return totheartnum;
	}

	public void setTotheartnum(String totheartnum) {
		this.totheartnum = totheartnum;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCurriculum() {
		return curriculum;
	}

	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}

	public String getDetaildesc() {
		return detaildesc;
	}

	public void setDetaildesc(String detaildesc) {
		this.detaildesc = detaildesc;
	}

	public String getDday() {
		return dday;
	}

	public void setDday(String dday) {
		this.dday = dday;
	}

	public List<CotagVO> getTagList() {
		return tagList;
	}

	public void setTagList(List<CotagVO> tagList) {
		this.tagList = tagList;
	}

	public List<CotargetVO> getTargetList() {
		return targetList;
	}

	public void setTargetList(List<CotargetVO> targetList) {
		this.targetList = targetList;
	}

	public String getLarge() {
		return large;
	}

	public void setLarge(String large) {
		this.large = large;
	}

	@Override
	public String toString() {
		return "CourseVO [sn=" + sn + ", coid=" + coid + ", title=" + title + ", tottime=" + tottime + ", typecode="
				+ typecode + ", totheartnum=" + totheartnum + ", intro=" + intro + ", price=" + price + ", curriculum="
				+ curriculum + ", detaildesc=" + detaildesc + ", dday=" + dday + ", tagList=" + tagList
				+ ", targetList=" + targetList + ", large=" + large + "]\n";
	}

}
