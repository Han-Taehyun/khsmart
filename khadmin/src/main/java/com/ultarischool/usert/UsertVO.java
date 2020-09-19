package com.ultarischool.usert;

import java.util.Date;

public class UsertVO {

	public String getCucnt() {
		return cucnt;
	}

	public void setCucnt(String cucnt) {
		this.cucnt = cucnt;
	}

	private String cucnt;
	
	private String zzcnt;

	public String getZzcnt() {
		return zzcnt;
	}

	public void setZzcnt(String zzcnt) {
		this.zzcnt = zzcnt;
	}

	private String ttcnt;
	
	
	public String getTtcnt() {
		return ttcnt;
	}

	public void setTtcnt(String ttcnt) {
		this.ttcnt = ttcnt;
	}

	private Integer sn;
	private String usertypecode;
	private String codename;
	private String userid;
	private String userpw;
	private String regdate;
	private String username;
	private String email;
	private String mobile;
	private String birthyyyymmdd;
	private Integer etcgoid;
	private String elsname;
	private Integer ucodeid;
	private String large;
	private String medium;
	private String small;
	private Integer lectnum;
	private String logindate;
	private String smsyn;
	private String emailyn;
	private String telyn;

	public Integer getSn() {
		return sn;
	}

	public void setSn(Integer sn) {
		this.sn = sn;
	}

	public String getUsertypecode() {
		return usertypecode;
	}

	public void setUsertypecode(String usertypecode) {
		this.usertypecode = usertypecode;
	}

	public String getCodename() {
		return codename;
	}

	public void setCodename(String codename) {
		this.codename = codename;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBirthyyyymmdd() {
		return birthyyyymmdd;
	}

	public void setBirthyyyymmdd(String birthyyyymmdd) {
		this.birthyyyymmdd = birthyyyymmdd;
	}

	public Integer getEtcgoid() {
		return etcgoid;
	}

	public void setEtcgoid(Integer etcgoid) {
		this.etcgoid = etcgoid;
	}

	public String getElsname() {
		return elsname;
	}

	public void setElsname(String elsname) {
		this.elsname = elsname;
	}

	public Integer getUcodeid() {
		return ucodeid;
	}

	public void setUcodeid(Integer ucodeid) {
		this.ucodeid = ucodeid;
	}

	public String getLarge() {
		return large;
	}

	public void setLarge(String large) {
		this.large = large;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public String getSmall() {
		return small;
	}

	public void setSmall(String small) {
		this.small = small;
	}

	public String getLogindate() {
		return logindate;
	}

	public void setLogindate(String logindate) {
		this.logindate = logindate;
	}

	public Integer getLectnum() {
		return lectnum;
	}

	public void setLectnum(Integer lectnum) {
		this.lectnum = lectnum;
	}

	public String getSmsyn() {
		return smsyn;
	}

	public void setSmsyn(String smsyn) {
		this.smsyn = smsyn;
	}

	public String getEmailyn() {
		return emailyn;
	}

	public void setEmailyn(String emailyn) {
		this.emailyn = emailyn;
	}

	public String getTelyn() {
		return telyn;
	}

	public void setTelyn(String telyn) {
		this.telyn = telyn;
	}

	@Override
	public String toString() {
		return "UsertVO [sn=" + sn + ", usertypecode=" + usertypecode + ", codename=" + codename + ", userid=" + userid
				+ ", userpw=" + userpw + ", regdate=" + regdate + ", username=" + username + ", email=" + email
				+ ", mobile=" + mobile + ", birthyyyymmdd=" + birthyyyymmdd + ", etcgoid=" + etcgoid + ", elsname="
				+ elsname + ", ucodeid=" + ucodeid + ", large=" + large + ", medium=" + medium + ", small=" + small
				+ ", lectnum=" + lectnum + ", logindate=" + logindate + ", smsyn=" + smsyn + ", emailyn=" + emailyn
				+ ", telyn=" + telyn + "]\n";
	}

}
