package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the uom_uif_comp database table.
 * 
 */
@Entity
@Table(name="uom_uif_comp")
@NamedQuery(name="UomUifComp.findAll", query="SELECT u FROM UomUifComp u")
public class UomUifComp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="IS_ACTIVE")
	private String isActive;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to UomComp
	@ManyToOne
	@JoinColumn(name="UOM_COMP_ID")
	private UomComp uomComp;

	//bi-directional many-to-one association to UosUif
	@ManyToOne
	@JoinColumn(name="UOS_UIF_USERNAME")
	private UosUif uosUif;

	public UomUifComp() {
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

	public UomComp getUomComp() {
		return this.uomComp;
	}

	public void setUomComp(UomComp uomComp) {
		this.uomComp = uomComp;
	}

	public UosUif getUosUif() {
		return this.uosUif;
	}

	public void setUosUif(UosUif uosUif) {
		this.uosUif = uosUif;
	}

}