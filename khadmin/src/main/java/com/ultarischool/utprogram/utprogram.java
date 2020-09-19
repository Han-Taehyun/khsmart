package com.ultarischool.utprogram;

import org.springframework.web.multipart.MultipartFile;

public class utprogram {
	
	private String regsdate = "";
	public String getRegsdate() {
		return regsdate;
	}

	public void setRegsdate(String regsdate) {
		this.regsdate = regsdate;
	}

	public String getRegedate() {
		return regedate;
	}

	public void setRegedate(String regedate) {
		this.regedate = regedate;
	}

	public String getHpurl() {
		return hpurl;
	}

	public void setHpurl(String hpurl) {
		this.hpurl = hpurl;
	}

	private String regedate = "";
	private String hpurl = "";

	private String ujcnt = "";

	public String getUjcnt() {
		return ujcnt;
	}

	public void setUjcnt(String ujcnt) {
		this.ujcnt = ujcnt;
	}

	private String yyyy = "";

	private String ujno = "";

	public String getUjno() {
		return ujno;
	}

	public void setUjno(String ujno) {
		this.ujno = ujno;
	}

	public String getYyyy() {
		return yyyy;
	}

	public void setYyyy(String yyyy) {
		this.yyyy = yyyy;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	public String getHumancount() {
		return humancount;
	}

	public void setHumancount(String humancount) {
		this.humancount = humancount;
	}

	public String getSutarget() {
		return sutarget;
	}

	public void setSutarget(String sutarget) {
		this.sutarget = sutarget;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	private String teacherid = "";

	public String getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}

	private String mm = "";

	private String dd = "";

	public String getExpsel() {
		return expsel;
	}

	public void setExpsel(String expsel) {
		this.expsel = expsel;
	}

	public String getClssel() {
		return clssel;
	}

	public void setClssel(String clssel) {
		this.clssel = clssel;
	}

	private String expsel = "";
	private String clssel = "";

	private String humancount = "";

	private String sutarget = "";

	private String addman = "";

	public String getAddman() {
		return addman;
	}

	public void setAddman(String addman) {
		this.addman = addman;
	}

	private String money = "";

	private String utpsn = "";

	private String studytime = "";

	public String getStudytime() {
		return studytime;
	}

	public void setStudytime(String studytime) {
		this.studytime = studytime;
	}

	private String writer = "";

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	private String wdate = "";

	public String getUtpsn() {
		return utpsn;
	}

	public void setUtpsn(String utpsn) {
		this.utpsn = utpsn;
	}

	public String getChasi() {
		return chasi;
	}

	public void setChasi(String chasi) {
		this.chasi = chasi;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBigo() {
		return bigo;
	}

	public void setBigo(String bigo) {
		this.bigo = bigo;
	}

	private String chasi = "";
	private String subject = "";

	private String bigo = "";

	private MultipartFile topimgFile;

	public MultipartFile getTopimgFile() {
		return topimgFile;
	}

	public void setTopimgFile(MultipartFile topimgFile) {
		this.topimgFile = topimgFile;
	}

	public MultipartFile getSmlimgFile() {
		return smlimgFile;
	}

	public void setSmlimgFile(MultipartFile smlimgFile) {
		this.smlimgFile = smlimgFile;
	}

	public MultipartFile getStudyimg1File() {
		return studyimg1File;
	}

	public void setStudyimg1File(MultipartFile studyimg1File) {
		this.studyimg1File = studyimg1File;
	}

	public MultipartFile getStudyimg2File() {
		return studyimg2File;
	}

	public void setStudyimg2File(MultipartFile studyimg2File) {
		this.studyimg2File = studyimg2File;
	}

	private MultipartFile smlimgFile;
	private MultipartFile studyimg1File;
	private MultipartFile studyimg2File;
	private MultipartFile studyimg3File;

	public MultipartFile getStudyimg3File() {
		return studyimg3File;
	}

	public void setStudyimg3File(MultipartFile studyimg3File) {
		this.studyimg3File = studyimg3File;
	}

	public MultipartFile getTopimg2File() {
		return topimg2File;
	}

	public void setTopimg2File(MultipartFile topimg2File) {
		this.topimg2File = topimg2File;
	}

	public MultipartFile getTopimg3File() {
		return topimg3File;
	}

	public void setTopimg3File(MultipartFile topimg3File) {
		this.topimg3File = topimg3File;
	}

	private MultipartFile topimg2File;
	private MultipartFile topimg3File;

	private Integer sn;

	private String proid;

	private String uptype;

	public String getUptype() {
		return uptype;
	}

	public void setUptype(String uptype) {
		this.uptype = uptype;
	}

	private String protitle;

	private String protype;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.price
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String price;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.tag
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String tag;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.memo1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String memo1;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.memo2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String memo2;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.memo3
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String memo3;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.memo4
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String memo4;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.relprog1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String relprog1;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.relprog2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String relprog2;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.relprog3
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String relprog3;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.topimg
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String topimg;

	public String getTopimg2() {
		return topimg2;
	}

	public void setTopimg2(String topimg2) {
		this.topimg2 = topimg2;
	}

	public String getTopimg3() {
		return topimg3;
	}

	public void setTopimg3(String topimg3) {
		this.topimg3 = topimg3;
	}

	private String topimg2;
	private String topimg3;

	private String smlimg;

	private String studyimg3;

	public String getStudyimg3() {
		return studyimg3;
	}

	public void setStudyimg3(String studyimg3) {
		this.studyimg3 = studyimg3;
	}

	private String studyimg1;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.studyimg2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String studyimg2;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column utprogram.cont
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	private String cont;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.sn
	 *
	 * @return the value of utprogram.sn
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public Integer getSn() {
		return sn;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.sn
	 *
	 * @param sn the value for utprogram.sn
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setSn(Integer sn) {
		this.sn = sn;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.proid
	 *
	 * @return the value of utprogram.proid
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getProid() {
		return proid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.proid
	 *
	 * @param proid the value for utprogram.proid
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setProid(String proid) {
		this.proid = proid == null ? null : proid.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.protitle
	 *
	 * @return the value of utprogram.protitle
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getProtitle() {
		return protitle;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.protitle
	 *
	 * @param protitle the value for utprogram.protitle
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setProtitle(String protitle) {
		this.protitle = protitle == null ? null : protitle.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.protype
	 *
	 * @return the value of utprogram.protype
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getProtype() {
		return protype;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.protype
	 *
	 * @param protype the value for utprogram.protype
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setProtype(String protype) {
		this.protype = protype == null ? null : protype.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.price
	 *
	 * @return the value of utprogram.price
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.price
	 *
	 * @param price the value for utprogram.price
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setPrice(String price) {
		this.price = price == null ? null : price.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.tag
	 *
	 * @return the value of utprogram.tag
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getTag() {
		return tag;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.tag
	 *
	 * @param tag the value for utprogram.tag
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setTag(String tag) {
		this.tag = tag == null ? null : tag.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.memo1
	 *
	 * @return the value of utprogram.memo1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getMemo1() {
		return memo1;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.memo1
	 *
	 * @param memo1 the value for utprogram.memo1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setMemo1(String memo1) {
		this.memo1 = memo1 == null ? null : memo1.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.memo2
	 *
	 * @return the value of utprogram.memo2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getMemo2() {
		return memo2;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.memo2
	 *
	 * @param memo2 the value for utprogram.memo2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setMemo2(String memo2) {
		this.memo2 = memo2 == null ? null : memo2.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.memo3
	 *
	 * @return the value of utprogram.memo3
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getMemo3() {
		return memo3;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.memo3
	 *
	 * @param memo3 the value for utprogram.memo3
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setMemo3(String memo3) {
		this.memo3 = memo3 == null ? null : memo3.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.memo4
	 *
	 * @return the value of utprogram.memo4
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getMemo4() {
		return memo4;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.memo4
	 *
	 * @param memo4 the value for utprogram.memo4
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setMemo4(String memo4) {
		this.memo4 = memo4 == null ? null : memo4.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.relprog1
	 *
	 * @return the value of utprogram.relprog1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getRelprog1() {
		return relprog1;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.relprog1
	 *
	 * @param relprog1 the value for utprogram.relprog1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setRelprog1(String relprog1) {
		this.relprog1 = relprog1 == null ? null : relprog1.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.relprog2
	 *
	 * @return the value of utprogram.relprog2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getRelprog2() {
		return relprog2;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.relprog2
	 *
	 * @param relprog2 the value for utprogram.relprog2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setRelprog2(String relprog2) {
		this.relprog2 = relprog2 == null ? null : relprog2.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.relprog3
	 *
	 * @return the value of utprogram.relprog3
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getRelprog3() {
		return relprog3;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.relprog3
	 *
	 * @param relprog3 the value for utprogram.relprog3
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setRelprog3(String relprog3) {
		this.relprog3 = relprog3 == null ? null : relprog3.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.topimg
	 *
	 * @return the value of utprogram.topimg
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getTopimg() {
		return topimg;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.topimg
	 *
	 * @param topimg the value for utprogram.topimg
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setTopimg(String topimg) {
		this.topimg = topimg == null ? null : topimg.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.smlimg
	 *
	 * @return the value of utprogram.smlimg
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getSmlimg() {
		return smlimg;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.smlimg
	 *
	 * @param smlimg the value for utprogram.smlimg
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setSmlimg(String smlimg) {
		this.smlimg = smlimg == null ? null : smlimg.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.studyimg1
	 *
	 * @return the value of utprogram.studyimg1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getStudyimg1() {
		return studyimg1;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.studyimg1
	 *
	 * @param studyimg1 the value for utprogram.studyimg1
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setStudyimg1(String studyimg1) {
		this.studyimg1 = studyimg1 == null ? null : studyimg1.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.studyimg2
	 *
	 * @return the value of utprogram.studyimg2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getStudyimg2() {
		return studyimg2;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.studyimg2
	 *
	 * @param studyimg2 the value for utprogram.studyimg2
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setStudyimg2(String studyimg2) {
		this.studyimg2 = studyimg2 == null ? null : studyimg2.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column utprogram.cont
	 *
	 * @return the value of utprogram.cont
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public String getCont() {
		return cont;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column utprogram.cont
	 *
	 * @param cont the value for utprogram.cont
	 *
	 * @mbg.generated Thu Jan 02 20:55:06 KST 2020
	 */
	public void setCont(String cont) {
		this.cont = cont == null ? null : cont.trim();
	}
}