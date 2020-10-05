package com.ultarischool.surveypool;

public class SurveyBogi {
	private Integer index;
	private String bogi;
	private String bogiType;
	
	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public String getBogi() {
		return bogi;
	}

	public void setBogi(String bogi) {
		this.bogi = bogi;
	}

	public String getBogiType() {
		return bogiType;
	}

	public void setBogiType(String bogiType) {
		this.bogiType = bogiType;
	}

	@Override
	public String toString() {
		return "SurveyBogi [index=" + index + ", bogi=" + bogi + ", bogiType=" + bogiType + "]";
	}

}
