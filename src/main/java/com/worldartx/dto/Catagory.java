package com.worldartx.dto;

public class Catagory {
	private Long cid;
	private String cname;
	private String cgst;
	private String sgst;
	public Catagory(Long cid, String cname, String cgst, String sgst) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cgst = cgst;
		this.sgst = sgst;
	}
	public Long getCid() {
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCgst() {
		return cgst;
	}
	public void setCgst(String cgst) {
		this.cgst = cgst;
	}
	public String getSgst() {
		return sgst;
	}
	public void setSgst(String sgst) {
		this.sgst = sgst;
	}
	
}
