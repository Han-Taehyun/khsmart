package com.ultarischool.surveypool;

import java.util.List;

public class SurveypoolResponse {
	private List<SurveypoolVO> items;

	public List<SurveypoolVO> getItems() {
		return items;
	}

	public void setItems(List<SurveypoolVO> items) {
		this.items = items;
	}

	@Override
	public String toString() {
		return "SurveypoolResponse [items=" + items + "]";
	}

}
