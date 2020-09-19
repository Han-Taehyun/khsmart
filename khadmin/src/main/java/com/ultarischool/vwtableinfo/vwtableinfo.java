package com.ultarischool.vwtableinfo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class vwtableinfo {
	
	private List<MultipartFile> uploadfile;

	public List<MultipartFile> getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(List<MultipartFile> uploadfile) {
		this.uploadfile = uploadfile;
	}
	
	private String contcnt;
	private String progmemo;
	
	public String getProgmemo() {
		return progmemo;
	}

	public void setProgmemo(String progmemo) {
		this.progmemo = progmemo;
	}

	private String snstype;
	
	public String getSnstype() {
		return snstype;
	}

	public void setSnstype(String snstype) {
		this.snstype = snstype;
	}

	private String infsns;
	public String getInfsns() {
		return infsns;
	}

	public void setInfsns(String infsns) {
		this.infsns = infsns;
	}

	public String getInfmessage() {
		return infmessage;
	}

	public void setInfmessage(String infmessage) {
		this.infmessage = infmessage;
	}

	private String infmessage;
	
	private String mxwdt;
	
	public String getMxwdt() {
		return mxwdt;
	}

	public void setMxwdt(String mxwdt) {
		this.mxwdt = mxwdt;
	}

	private String fucheck;
	
	public String getFucheck() {
		return fucheck;
	}
	public void setFucheck(String fucheck) {
		this.fucheck = fucheck;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImgfile() {
		return imgfile;
	}
	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}
	private String category;
	private String imgfile;
	public String getContcnt() {
		return contcnt;
	}
	public void setContcnt(String contcnt) {
		this.contcnt = contcnt;
	}
	public String getTimecnt() {
		return timecnt;
	}
	public void setTimecnt(String timecnt) {
		this.timecnt = timecnt;
	}
	public String getTodaycnt() {
		return todaycnt;
	}
	public void setTodaycnt(String todaycnt) {
		this.todaycnt = todaycnt;
	}
	public String getUsercnt() {
		return usercnt;
	}
	public void setUsercnt(String usercnt) {
		this.usercnt = usercnt;
	}
	private String timecnt;
	private String todaycnt;
	private String usercnt;
	
	
	private String progname;
	
	
	
	public String getProgname() {
		return progname;
	}

	public void setProgname(String progname) {
		this.progname = progname;
	}

	private String looktime;
	
	public String getLooktime() {
		return looktime;
	}
	public void setLooktime(String looktime) {
		this.looktime = looktime;
	}
	private String code1memo="";
	
	public String getCode1memo() {
		return code1memo;
	}
	public void setCode1memo(String code1memo) {
		this.code1memo = code1memo;
	}
	private String userid="";
	
	private String ccnt="";
	
	public String getCcnt() {
		return ccnt;
	}
	public void setCcnt(String ccnt) {
		this.ccnt = ccnt;
	}
	private String sn="";
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public String getCode1() {
		return code1;
	}
	public void setCode1(String code1) {
		this.code1 = code1;
	}
	public String getCode2() {
		return code2;
	}
	public void setCode2(String code2) {
		this.code2 = code2;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	private String code1="";
	
	private String url="";
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	private String code2="";
	private String title="";
	private String memo="";
	
	
	private String mobile="";
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	private String email="";
	private String wdate="";
	
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	private String userpw="";
	private String username="";
	private String usertype="";
    
	

	private String columntype;

	public String getColumntype() {
		return columntype;
	}

	public void setColumntype(String columntype) {
		this.columntype = columntype;
	}

	public String getColumndefault() {
		return columndefault;
	}

	public void setColumndefault(String columndefault) {
		this.columndefault = columndefault;
	}

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.columndefault
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String columndefault;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.tablename
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String tablename;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.tablecomment
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String tablecomment;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.columnname
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String columnname;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.datatype
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String datatype;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.columnkey
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String columnkey;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.isnullable
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String isnullable;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.extra
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String extra;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.columncomment
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private String columncomment;

	/**
	 *
	 * This field was generated by MyBatis Generator.
	 * This field corresponds to the database column vwtableinfo.tablerows
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	private Long tablerows;

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.tablename
	 *
	 * @return the value of vwtableinfo.tablename
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getTablename() {
		return tablename;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.tablename
	 *
	 * @param tablename the value for vwtableinfo.tablename
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setTablename(String tablename) {
		this.tablename = tablename == null ? null : tablename.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.tablecomment
	 *
	 * @return the value of vwtableinfo.tablecomment
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getTablecomment() {
		return tablecomment;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.tablecomment
	 *
	 * @param tablecomment the value for vwtableinfo.tablecomment
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setTablecomment(String tablecomment) {
		this.tablecomment = tablecomment == null ? null : tablecomment.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.columnname
	 *
	 * @return the value of vwtableinfo.columnname
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getColumnname() {
		return columnname;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.columnname
	 *
	 * @param columnname the value for vwtableinfo.columnname
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setColumnname(String columnname) {
		this.columnname = columnname == null ? null : columnname.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.datatype
	 *
	 * @return the value of vwtableinfo.datatype
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getDatatype() {
		return datatype;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.datatype
	 *
	 * @param datatype the value for vwtableinfo.datatype
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setDatatype(String datatype) {
		this.datatype = datatype == null ? null : datatype.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.columnkey
	 *
	 * @return the value of vwtableinfo.columnkey
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getColumnkey() {
		return columnkey;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.columnkey
	 *
	 * @param columnkey the value for vwtableinfo.columnkey
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setColumnkey(String columnkey) {
		this.columnkey = columnkey == null ? null : columnkey.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.isnullable
	 *
	 * @return the value of vwtableinfo.isnullable
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getIsnullable() {
		return isnullable;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.isnullable
	 *
	 * @param isnullable the value for vwtableinfo.isnullable
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setIsnullable(String isnullable) {
		this.isnullable = isnullable == null ? null : isnullable.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.extra
	 *
	 * @return the value of vwtableinfo.extra
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getExtra() {
		return extra;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.extra
	 *
	 * @param extra the value for vwtableinfo.extra
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setExtra(String extra) {
		this.extra = extra == null ? null : extra.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.columncomment
	 *
	 * @return the value of vwtableinfo.columncomment
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public String getColumncomment() {
		return columncomment;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.columncomment
	 *
	 * @param columncomment the value for vwtableinfo.columncomment
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setColumncomment(String columncomment) {
		this.columncomment = columncomment == null ? null : columncomment.trim();
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method returns the value of the database column vwtableinfo.tablerows
	 *
	 * @return the value of vwtableinfo.tablerows
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public Long getTablerows() {
		return tablerows;
	}

	/**
	 * This method was generated by MyBatis Generator.
	 * This method sets the value of the database column vwtableinfo.tablerows
	 *
	 * @param tablerows the value for vwtableinfo.tablerows
	 *
	 * @mbg.generated Thu Jan 16 21:06:46 KST 2020
	 */
	public void setTablerows(Long tablerows) {
		this.tablerows = tablerows;
	}
}