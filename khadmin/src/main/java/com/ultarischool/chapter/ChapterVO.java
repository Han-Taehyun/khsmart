package com.ultarischool.chapter;

import org.springframework.web.multipart.MultipartFile;

public class ChapterVO {
	private Integer sn;

	private String prv;
	
	private String memo;
	
	private String chpimg1;
	public String getChpimg1() {
		return chpimg1;
	}

	public void setChpimg1(String chpimg1) {
		this.chpimg1 = chpimg1;
	}

	public String getChpimg2() {
		return chpimg2;
	}

	public void setChpimg2(String chpimg2) {
		this.chpimg2 = chpimg2;
	}

	public MultipartFile getChpimg1file() {
		return chpimg1file;
	}

	public void setChpimg1file(MultipartFile chpimg1file) {
		this.chpimg1file = chpimg1file;
	}

	public MultipartFile getChpimg2file() {
		return chpimg2file;
	}

	public void setChpimg2file(MultipartFile chpimg2file) {
		this.chpimg2file = chpimg2file;
	}

	private String chpimg2;
	
	private MultipartFile chpimg1file;
	private MultipartFile chpimg2file;
	
	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	private String title;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	private String mp4url;

	public String getMp4url() {
		return mp4url;
	}

	public void setMp4url(String mp4url) {
		this.mp4url = mp4url;
	}

	public String getPrv() {
		return prv;
	}

	public void setPrv(String prv) {
		this.prv = prv;
	}

	private String cosn;

	public String getCosn() {
		return cosn;
	}

	public void setCosn(String cosn) {
		this.cosn = cosn;
	}

	private String coid;
	private String cotitle; // 강좌 제목
	private String chaptitle; // 강의 제목
	private Integer ord;
	private Integer runtime;
	private String typecode;

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

	public String getCotitle() {
		return cotitle;
	}

	public void setCotitle(String cotitle) {
		this.cotitle = cotitle;
	}

	public String getChaptitle() {
		return chaptitle;
	}

	public void setChaptitle(String chaptitle) {
		this.chaptitle = chaptitle;
	}

	public Integer getOrd() {
		return ord;
	}

	public void setOrd(Integer ord) {
		this.ord = ord;
	}

	public Integer getRuntime() {
		return runtime;
	}

	public void setRuntime(Integer runtime) {
		this.runtime = runtime;
	}

	public String getTypecode() {
		return typecode;
	}

	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}

	@Override
	public String toString() {
		return "ChapterVO [sn=" + sn + ", coid=" + coid + ", cotitle=" + cotitle + ", chaptitle=" + chaptitle + ", ord="
				+ ord + ", runtime=" + runtime + ", typecode=" + typecode + "]/n";
	}

}
