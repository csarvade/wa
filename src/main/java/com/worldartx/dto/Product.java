package com.worldartx.dto;

import java.io.Serializable;

public class Product implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	private Long pid;

	private String path;

	private String vendor;

	private String artistName;

	private String description;

	private String usd;

	private String exchange;
	
    private String quantity;
    
	private String inr;
	
	private String catagory;
	
	private String cgst;
	
	private String sgst;
	
	private String total;
	
	public Product(){}

	public Product(Long pid, String path, String vendor, String artistName,
			String description, String usd, String exchange, String quantity,
			String inr,String catagory,String cgst,String sgst,String total) {
		super();
		this.pid = pid;
		this.path = path;
		this.vendor = vendor;
		this.artistName = artistName;
		this.description = description;
		this.usd = usd;
		this.exchange = exchange;
		this.quantity = quantity;
		this.inr = inr;
		this.catagory = catagory;
		this.cgst = cgst;
		this.sgst = sgst;
		this.total = total;
	}

	public Long getPid() {
		return pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public String getArtistName() {
		return artistName;
	}

	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUsd() {
		return usd;
	}

	public void setUsd(String usd) {
		this.usd = usd;
	}

	public String getExchange() {
		return exchange;
	}

	public void setExchange(String exchange) {
		this.exchange = exchange;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getInr() {
		return inr;
	}

	public void setInr(String inr) {
		this.inr = inr;
	}
	public String getCatagory() {
		return catagory;
	}

	public void setCatagory(String catagory) {
		this.catagory = catagory;
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

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	



	

}