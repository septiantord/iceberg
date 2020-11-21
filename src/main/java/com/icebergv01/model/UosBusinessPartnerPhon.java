package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the uos_business_partner_phon database table.
 * 
 */
@Entity
@Table(name="uos_business_partner_phon")
@NamedQuery(name="UosBusinessPartnerPhon.findAll", query="SELECT u FROM UosBusinessPartnerPhon u")
public class UosBusinessPartnerPhon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="IS_ACTIVE")
	private String isActive;

	private String number;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to UomPhonTyp
	@ManyToOne
	@JoinColumn(name="UOM_PHON_TYP_ID")
	private UomPhonTyp uomPhonTyp;

	//bi-directional many-to-one association to UosBusinessPartner
	@ManyToOne
	@JoinColumn(name="UOS_BUSINESS_PARTNER_ID")
	private UosBusinessPartner uosBusinessPartner;

	public UosBusinessPartnerPhon() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCreatedBy() {
		return this.createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Timestamp getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getUpdatedBy() {
		return this.updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	public Timestamp getUpdatedDate() {
		return this.updatedDate;
	}

	public void setUpdatedDate(Timestamp updatedDate) {
		this.updatedDate = updatedDate;
	}

	public UomPhonTyp getUomPhonTyp() {
		return this.uomPhonTyp;
	}

	public void setUomPhonTyp(UomPhonTyp uomPhonTyp) {
		this.uomPhonTyp = uomPhonTyp;
	}

	public UosBusinessPartner getUosBusinessPartner() {
		return this.uosBusinessPartner;
	}

	public void setUosBusinessPartner(UosBusinessPartner uosBusinessPartner) {
		this.uosBusinessPartner = uosBusinessPartner;
	}

}