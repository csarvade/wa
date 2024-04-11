package com.worldartx.dto;


public class Tracker{
	private Long id;
	private Long oid;
    private String ddate;
    private String edate;
    private String status;
	public Tracker(Long id, Long oid, String ddate, String edate, String status) {
		this.id = id;
		this.oid = oid;
		this.ddate = ddate;
		this.edate = edate;
		this.status = status;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "Tracker [id=" + id + ", oid=" + oid + ", ddate=" + ddate + ", edate=" + edate + ", status=" + status
				+ "]";
	}
}