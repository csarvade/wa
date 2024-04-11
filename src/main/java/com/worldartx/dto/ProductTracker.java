package com.worldartx.dto;

public class ProductTracker {
private	String vendor ;
private	String artistname ;
private	String description;
private	Long oid;
private	String ddate;
private	String edate;
private	String status;
public ProductTracker(String vendor, String artistname, String description, Long oid, String ddate, String edate,
		String status) {
	this.vendor = vendor;
	this.artistname = artistname;
	this.description = description;
	this.oid = oid;
	this.ddate = ddate;
	this.edate = edate;
	this.status = status;
}
public String getVendor() {
	return vendor;
}
public void setVendor(String vendor) {
	this.vendor = vendor;
}
public String getArtistname() {
	return artistname;
}
public void setArtistname(String artistname) {
	this.artistname = artistname;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Long getOid() {
	return oid;
}
public void setOid(Long oid) {
	this.oid = oid;
}
public String getDdate() {
	return ddate;
}
public void setDdate(String ddate) {
	this.ddate = ddate;
}
public String getEdate() {
	return edate;
}
public void setEdate(String edate) {
	this.edate = edate;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}


}
