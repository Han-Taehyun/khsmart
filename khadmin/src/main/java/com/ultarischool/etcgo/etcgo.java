package com.ultarischool.etcgo;

import org.springframework.web.multipart.MultipartFile;

public class etcgo {
	
	public MultipartFile getRegimgFile() {
		return regimgFile;
	}

	public void setRegimgFile(MultipartFile regimgFile) {
		this.regimgFile = regimgFile;
	}
	
	private MultipartFile regimgFile;

	private String regimg = "";

	public String getRegimg() {
		return regimg;
	}

	public void setRegimg(String regimg) {
		this.regimg = regimg;
	}

	private String zipcode = "";

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	private String phone;

	private String ddphone;

	public String getDdphone() {
		return ddphone;
	}

	public void setDdphone(String ddphone) {
		this.ddphone = ddphone;
	}

	public String getDdname() {
		return ddname;
	}

	public void setDdname(String ddname) {
		this.ddname = ddname;
	}

	private String ddname;

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	private String chief;

	private String email2;

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getChief() {
		return chief;
	}

	public void setChief(String chief) {
		this.chief = chief;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String email;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.sn
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private Integer sn;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.elsid
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String elsid;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.elsname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String elsname;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.gubun
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String gubun;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.elstype1
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String elstype1;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.elstype2
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String elstype2;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.elsjiaddr
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String elsjiaddr;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.elsroaddr
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String elsroaddr;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.sidogocode
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String sidogocode;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.sidogoname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String sidogoname;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.eduspcode
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String eduspcode;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.eduspname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String eduspname;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.latitude
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String latitude;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.longitude
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String longitude;

	/**
	 *
	 * This field was generated by MyBatis Generator. This field corresponds to the
	 * database column school.comregno
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	private String comregno;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.sn
	 *
	 * @return the value of school.sn
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public Integer getSn() {
		return sn;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.sn
	 *
	 * @param sn the value for school.sn
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setSn(Integer sn) {
		this.sn = sn;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.elsid
	 *
	 * @return the value of school.elsid
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getElsid() {
		return elsid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.elsid
	 *
	 * @param elsid the value for school.elsid
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setElsid(String elsid) {
		this.elsid = elsid == null ? null : elsid.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.elsname
	 *
	 * @return the value of school.elsname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getElsname() {
		return elsname;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.elsname
	 *
	 * @param elsname the value for school.elsname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setElsname(String elsname) {
		this.elsname = elsname == null ? null : elsname.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.gubun
	 *
	 * @return the value of school.gubun
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getGubun() {
		return gubun;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.gubun
	 *
	 * @param gubun the value for school.gubun
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setGubun(String gubun) {
		this.gubun = gubun == null ? null : gubun.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.elstype1
	 *
	 * @return the value of school.elstype1
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getElstype1() {
		return elstype1;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.elstype1
	 *
	 * @param elstype1 the value for school.elstype1
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setElstype1(String elstype1) {
		this.elstype1 = elstype1 == null ? null : elstype1.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.elstype2
	 *
	 * @return the value of school.elstype2
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getElstype2() {
		return elstype2;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.elstype2
	 *
	 * @param elstype2 the value for school.elstype2
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setElstype2(String elstype2) {
		this.elstype2 = elstype2 == null ? null : elstype2.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.elsjiaddr
	 *
	 * @return the value of school.elsjiaddr
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getElsjiaddr() {
		return elsjiaddr;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.elsjiaddr
	 *
	 * @param elsjiaddr the value for school.elsjiaddr
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setElsjiaddr(String elsjiaddr) {
		this.elsjiaddr = elsjiaddr == null ? null : elsjiaddr.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.elsroaddr
	 *
	 * @return the value of school.elsroaddr
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getElsroaddr() {
		return elsroaddr;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.elsroaddr
	 *
	 * @param elsroaddr the value for school.elsroaddr
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setElsroaddr(String elsroaddr) {
		this.elsroaddr = elsroaddr == null ? null : elsroaddr.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.sidogocode
	 *
	 * @return the value of school.sidogocode
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getSidogocode() {
		return sidogocode;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.sidogocode
	 *
	 * @param sidogocode the value for school.sidogocode
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setSidogocode(String sidogocode) {
		this.sidogocode = sidogocode == null ? null : sidogocode.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.sidogoname
	 *
	 * @return the value of school.sidogoname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getSidogoname() {
		return sidogoname;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.sidogoname
	 *
	 * @param sidogoname the value for school.sidogoname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setSidogoname(String sidogoname) {
		this.sidogoname = sidogoname == null ? null : sidogoname.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.eduspcode
	 *
	 * @return the value of school.eduspcode
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getEduspcode() {
		return eduspcode;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.eduspcode
	 *
	 * @param eduspcode the value for school.eduspcode
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setEduspcode(String eduspcode) {
		this.eduspcode = eduspcode == null ? null : eduspcode.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.eduspname
	 *
	 * @return the value of school.eduspname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getEduspname() {
		return eduspname;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.eduspname
	 *
	 * @param eduspname the value for school.eduspname
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setEduspname(String eduspname) {
		this.eduspname = eduspname == null ? null : eduspname.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.latitude
	 *
	 * @return the value of school.latitude
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getLatitude() {
		return latitude;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.latitude
	 *
	 * @param latitude the value for school.latitude
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setLatitude(String latitude) {
		this.latitude = latitude == null ? null : latitude.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.longitude
	 *
	 * @return the value of school.longitude
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getLongitude() {
		return longitude;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.longitude
	 *
	 * @param longitude the value for school.longitude
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setLongitude(String longitude) {
		this.longitude = longitude == null ? null : longitude.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value
	 * of the database column school.comregno
	 *
	 * @return the value of school.comregno
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public String getComregno() {
		return comregno;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of
	 * the database column school.comregno
	 *
	 * @param comregno the value for school.comregno
	 *
	 * @mbg.generated Thu Jan 02 11:19:48 KST 2020
	 */
	public void setComregno(String comregno) {
		this.comregno = comregno == null ? null : comregno.trim();
	}
}