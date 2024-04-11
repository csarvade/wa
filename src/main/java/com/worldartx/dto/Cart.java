package com.worldartx.dto;

public class Cart {
	private String email; 
	private String mobno; 
	private Long pid; 
	private Integer quantity;
	private String price; 
	private String catagory; 
	private String cgst;
	private String sgst;
	private String total;
	private String address;
	private String city;
	private String state;
	private String country;
	private String pincode;
	private String odate;
	private String ddate;
	private String pmttype;
	private String tid;
	private String pmtid;
	private String status;
	public Cart(String email, String mobno, Long pid, Integer quantity, String price, String catagory, String cgst,
			String sgst, String total, String address, String city, String state, String country, String pincode,
			String odate, String ddate, String pmttype, String tid, String pmtid, String status) {
		this.email = email;
		this.mobno= mobno;
		this.pid = pid;
		this.quantity = quantity;
		this.price = price;
		this.catagory= catagory;
		this.cgst = cgst;
		this.sgst = sgst;
		this.total = total;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
		this.odate = odate;
		this.ddate = ddate;
		this.pmttype = pmttype;
		this.tid = tid;
		this.pmtid = pmtid;
		this.status = status;
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public Long getPid() {
		return pid;
	}
	public void setPid(Long pid) {
		this.pid = pid;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public String getPmttype() {
		return pmttype;
	}
	public void setPmttype(String pmttype) {
		this.pmttype = pmttype;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getPmtid() {
		return pmtid;
	}
	public void setPmtid(String pmtid) {
		this.pmtid = pmtid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}


}
