package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the uom_comp database table.
 * 
 */
@Entity
@Table(name="uom_comp")
@NamedQuery(name="UomComp.findAll", query="SELECT u FROM UomComp u")
public class UomComp implements Serializable {
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

	private String name;

	@Column(name="TAX_NUMBER")
	private String taxNumber;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to UomUifComp
	@OneToMany(mappedBy="uomComp")
	private List<UomUifComp> uomUifComps;

	//bi-directional many-to-one association to UosCompAddr
	@OneToMany(mappedBy="uomComp")
	private List<UosCompAddr> uosCompAddrs;

	//bi-directional many-to-one association to UosCompPhon
	@OneToMany(mappedBy="uomComp")
	private List<UosCompPhon> uosCompPhons;

	public UomComp() {
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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTaxNumber() {
		return this.taxNumber;
	}

	public void setTaxNumber(String taxNumber) {
		this.taxNumber = taxNumber;
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

	public List<UomUifComp> getUomUifComps() {
		return this.uomUifComps;
	}

	public void setUomUifComps(List<UomUifComp> uomUifComps) {
		this.uomUifComps = uomUifComps;
	}

	public UomUifComp addUomUifComp(UomUifComp uomUifComp) {
		getUomUifComps().add(uomUifComp);
		uomUifComp.setUomComp(this);

		return uomUifComp;
	}

	public UomUifComp removeUomUifComp(UomUifComp uomUifComp) {
		getUomUifComps().remove(uomUifComp);
		uomUifComp.setUomComp(null);

		return uomUifComp;
	}

	public List<UosCompAddr> getUosCompAddrs() {
		return this.uosCompAddrs;
	}

	public void setUosCompAddrs(List<UosCompAddr> uosCompAddrs) {
		this.uosCompAddrs = uosCompAddrs;
	}

	public UosCompAddr addUosCompAddr(UosCompAddr uosCompAddr) {
		getUosCompAddrs().add(uosCompAddr);
		uosCompAddr.setUomComp(this);

		return uosCompAddr;
	}

	public UosCompAddr removeUosCompAddr(UosCompAddr uosCompAddr) {
		getUosCompAddrs().remove(uosCompAddr);
		uosCompAddr.setUomComp(null);

		return uosCompAddr;
	}

	public List<UosCompPhon> getUosCompPhons() {
		return this.uosCompPhons;
	}

	public void setUosCompPhons(List<UosCompPhon> uosCompPhons) {
		this.uosCompPhons = uosCompPhons;
	}

	public UosCompPhon addUosCompPhon(UosCompPhon uosCompPhon) {
		getUosCompPhons().add(uosCompPhon);
		uosCompPhon.setUomComp(this);

		return uosCompPhon;
	}

	public UosCompPhon removeUosCompPhon(UosCompPhon uosCompPhon) {
		getUosCompPhons().remove(uosCompPhon);
		uosCompPhon.setUomComp(null);

		return uosCompPhon;
	}

}