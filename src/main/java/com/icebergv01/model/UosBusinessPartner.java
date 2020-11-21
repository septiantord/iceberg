package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the uos_business_partner database table.
 * 
 */
@Entity
@Table(name="uos_business_partner")
@NamedQuery(name="UosBusinessPartner.findAll", query="SELECT u FROM UosBusinessPartner u")
public class UosBusinessPartner implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Temporal(TemporalType.DATE)
	@Column(name="BIRTH_DATE")
	private Date birthDate;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	private String email;

	@Column(name="FIRST_NAME")
	private String firstName;

	@Column(name="ID_CARD_NO")
	private String idCardNo;

	@Column(name="IS_ACTIVE")
	private String isActive;

	@Column(name="LAST_NAME")
	private String lastName;

	@Column(name="MIDDLE_NAME")
	private String middleName;

	private String password;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to UosBusinessPartnerAddr
	@OneToMany(mappedBy="uosBusinessPartner")
	private List<UosBusinessPartnerAddr> uosBusinessPartnerAddrs;

	//bi-directional many-to-one association to UosBusinessPartnerPhon
	@OneToMany(mappedBy="uosBusinessPartner")
	private List<UosBusinessPartnerPhon> uosBusinessPartnerPhons;

	public UosBusinessPartner() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Timestamp getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getIdCardNo() {
		return this.idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return this.middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getUpdatedDate() {
		return this.updatedDate;
	}

	public void setUpdatedDate(Timestamp updatedDate) {
		this.updatedDate = updatedDate;
	}

	public List<UosBusinessPartnerAddr> getUosBusinessPartnerAddrs() {
		return this.uosBusinessPartnerAddrs;
	}

	public void setUosBusinessPartnerAddrs(List<UosBusinessPartnerAddr> uosBusinessPartnerAddrs) {
		this.uosBusinessPartnerAddrs = uosBusinessPartnerAddrs;
	}

	public UosBusinessPartnerAddr addUosBusinessPartnerAddr(UosBusinessPartnerAddr uosBusinessPartnerAddr) {
		getUosBusinessPartnerAddrs().add(uosBusinessPartnerAddr);
		uosBusinessPartnerAddr.setUosBusinessPartner(this);

		return uosBusinessPartnerAddr;
	}

	public UosBusinessPartnerAddr removeUosBusinessPartnerAddr(UosBusinessPartnerAddr uosBusinessPartnerAddr) {
		getUosBusinessPartnerAddrs().remove(uosBusinessPartnerAddr);
		uosBusinessPartnerAddr.setUosBusinessPartner(null);

		return uosBusinessPartnerAddr;
	}

	public List<UosBusinessPartnerPhon> getUosBusinessPartnerPhons() {
		return this.uosBusinessPartnerPhons;
	}

	public void setUosBusinessPartnerPhons(List<UosBusinessPartnerPhon> uosBusinessPartnerPhons) {
		this.uosBusinessPartnerPhons = uosBusinessPartnerPhons;
	}

	public UosBusinessPartnerPhon addUosBusinessPartnerPhon(UosBusinessPartnerPhon uosBusinessPartnerPhon) {
		getUosBusinessPartnerPhons().add(uosBusinessPartnerPhon);
		uosBusinessPartnerPhon.setUosBusinessPartner(this);

		return uosBusinessPartnerPhon;
	}

	public UosBusinessPartnerPhon removeUosBusinessPartnerPhon(UosBusinessPartnerPhon uosBusinessPartnerPhon) {
		getUosBusinessPartnerPhons().remove(uosBusinessPartnerPhon);
		uosBusinessPartnerPhon.setUosBusinessPartner(null);

		return uosBusinessPartnerPhon;
	}

}