package com.icebergv01.model;

public class Navbar extends UomMenu{
	private String isParent;
	private String hasChild;
	private String status;
	public String getIsParent() {
		return isParent;
	}
	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}
	public String getHasChild() {
		return hasChild;
	}
	public void setHasChild(String hasChild) {
		this.hasChild = hasChild;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String prevStatus) {
		this.status = prevStatus;
	}
	

}
