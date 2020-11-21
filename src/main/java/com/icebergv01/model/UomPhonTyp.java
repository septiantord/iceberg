package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the uom_phon_typ database table.
 * 
 */
@Entity
@Table(name="uom_phon_typ")
@NamedQuery(name="UomPhonTyp.findAll", query="SELECT u FROM UomPhonTyp u")
public class UomPhonTyp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	private String detail;

	@Column(name="IS_ACTIVE")
	private String isActive;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to UosBusinessPartnerPhon
	@OneToMany(mappedBy="uomPhonTyp")
	private List<UosBusinessPartnerPhon> uosBusinessPartnerPhons;

	//bi-directional many-to-one association to UosUifPhon
	@OneToMany(mappedBy="uomPhonTyp")
	private List<UosUifPhon> uosUifPhons;

	public UomPhonTyp() {
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

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
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

	public List<UosBusinessPartnerPhon> getUosBusinessPartnerPhons() {
		return this.uosBusinessPartnerPhons;
	}

	public void setUosBusinessPartnerPhons(List<UosBusinessPartnerPhon> uosBusinessPartnerPhons) {
		this.uosBusinessPartnerPhons = uosBusinessPartnerPhons;
	}

	public UosBusinessPartnerPhon addUosBusinessPartnerPhon(UosBusinessPartnerPhon uosBusinessPartnerPhon) {
		getUosBusinessPartnerPhons().add(uosBusinessPartnerPhon);
		uosBusinessPartnerPhon.setUomPhonTyp(this);

		return uosBusinessPartnerPhon;
	}

	public UosBusinessPartnerPhon removeUosBusinessPartnerPhon(UosBusinessPartnerPhon uosBusinessPartnerPhon) {
		getUosBusinessPartnerPhons().remove(uosBusinessPartnerPhon);
		uosBusinessPartnerPhon.setUomPhonTyp(null);

		return uosBusinessPartnerPhon;
	}

	public List<UosUifPhon> getUosUifPhons() {
		return this.uosUifPhons;
	}

	public void setUosUifPhons(List<UosUifPhon> uosUifPhons) {
		this.uosUifPhons = uosUifPhons;
	}

	public UosUifPhon addUosUifPhon(UosUifPhon uosUifPhon) {
		getUosUifPhons().add(uosUifPhon);
		uosUifPhon.setUomPhonTyp(this);

		return uosUifPhon;
	}

	public UosUifPhon removeUosUifPhon(UosUifPhon uosUifPhon) {
		getUosUifPhons().remove(uosUifPhon);
		uosUifPhon.setUomPhonTyp(null);

		return uosUifPhon;
	}

}