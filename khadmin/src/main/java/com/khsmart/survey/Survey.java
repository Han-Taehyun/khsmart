package com.khsmart.survey;

public class Survey {
	private Integer sn;
	private String svname;
	private String svmemo;
	private String svtype;
	private String svtypename;
	private String svcnt;

	public Integer getSn() {
		return sn;
	}

	public void setSn(Integer sn) {
		this.sn = sn;
	}

	public String getSvname() {
		return svname;
	}

	public void setSvname(String svname) {
		this.svname = svname;
	}

	public String getSvmemo() {
		return svmemo;
	}

	public void setSvmemo(String svmemo) {
		this.svmemo = svmemo;
	}

	public String getSvtype() {
		return svtype;
	}

	public void setSvtype(String svtype) {
		this.svtype = svtype;
	}

	public String getSvtypename() {
		return svtypename;
	}

	public void setSvtypename(String svtypename) {
		this.svtypename = svtypename;
	}

	public String getSvcnt() {
		return svcnt;
	}

	public void setSvcnt(String svcnt) {
		this.svcnt = svcnt;
	}

	@Override
	public String toString() {
		return "Survey [sn=" + sn + ", svname=" + svname + ", svmemo=" + svmemo + ", svtype=" + svtype + ", svtypename="
				+ svtypename + ", svcnt=" + svcnt + "]\n";
	}

}
