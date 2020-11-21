package com.icebergv01.modelhelper;

import com.icebergv01.model.UosBusinessPartner;
import com.icebergv01.model.UosBusinessPartnerAddr;
import com.icebergv01.model.UosBusinessPartnerPhon;

public class UosBusinessPartnerHelper {
	private UosBusinessPartner uosBusinessPartner;
	private UosBusinessPartnerAddr uosBusinessPartnerAddr;
	private UosBusinessPartnerPhon uosBusinessPartnerPhon;

	private String uosBusinessPartnerId;
	private String uosBusinessPartnerAddrId;
	private String uosBusinessPartnerPhonId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String address;
	private String city;
	private String phoneNumber;
	public String getUosBusinessPartnerId() {
		return uosBusinessPartnerId;
	}
	public void setUosBusinessPartnerId(String uosBusinessPartnerId) {
		this.uosBusinessPartnerId = uosBusinessPartnerId;
	}
	public String getUosBusinessPartnerAddrId() {
		return uosBusinessPartnerAddrId;
	}
	public void setUosBusinessPartnerAddrId(String uosBusinessPartnerAddrId) {
		this.uosBusinessPartnerAddrId = uosBusinessPartnerAddrId;
	}
	public String getUosBusinessPartnerPhonId() {
		return uosBusinessPartnerPhonId;
	}
	public void setUosBusinessPartnerPhonId(String uosBusinessPartnerPhonId) {
		this.uosBusinessPartnerPhonId = uosBusinessPartnerPhonId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
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
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public UosBusinessPartner getUosBusinessPartner() {
		return uosBusinessPartner;
	}
	public void setUosBusinessPartner(UosBusinessPartner uosBusinessPartner) {
		this.uosBusinessPartner = uosBusinessPartner;
	}
	public UosBusinessPartnerAddr getUosBusinessPartnerAddr() {
		return uosBusinessPartnerAddr;
	}
	public void setUosBusinessPartnerAddr(UosBusinessPartnerAddr uosBusinessPartnerAddr) {
		this.uosBusinessPartnerAddr = uosBusinessPartnerAddr;
	}
	public UosBusinessPartnerPhon getUosBusinessPartnerPhon() {
		return uosBusinessPartnerPhon;
	}
	public void setUosBusinessPartnerPhon(UosBusinessPartnerPhon uosBusinessPartnerPhon) {
		this.uosBusinessPartnerPhon = uosBusinessPartnerPhon;
	}
	
}
