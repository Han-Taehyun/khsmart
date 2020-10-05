package com.ultarischool.surveypool;

import java.util.List;

public class SurveypoolVO {
	private Integer sn;
	private String svyno;
	private String odrno;
	private String title;
	private String type1;
	private List<SurveyBogi> bogiList;

	public Integer getSn() {
		return sn;
	}

	public void setSn(Integer sn) {
		this.sn = sn;
	}

	public String getSvyno() {
		return svyno;
	}

	public void setSvyno(String svyno) {
		this.svyno = svyno;
	}

	public String getOdrno() {
		return odrno;
	}

	public void setOdrno(String odrno) {
		this.odrno = odrno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public List<SurveyBogi> getBogiList() {
		return bogiList;
	}

	public void setBogiList(List<SurveyBogi> bogiList) {
		this.bogiList = bogiList;
	}

	@Override
	public String toString() {
		return "SurveypoolVO [sn=" + sn + ", svyno=" + svyno + ", odrno=" + odrno + ", title=" + title + ", type1="
				+ type1 + ", bogiList=" + bogiList + "]";
	}

}
