package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the uom_uif_role database table.
 * 
 */
@Entity
@Table(name="uom_uif_role")
@NamedQuery(name="UomUifRole.findAll", query="SELECT u FROM UomUifRole u")
public class UomUifRole implements Serializable {
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

	//bi-directional many-to-one association to UomRole
	@ManyToOne
	@JoinColumn(name="UOM_ROLE_ID")
	private UomRole uomRole;

	//bi-directional many-to-one association to UosUif
	@ManyToOne
	@JoinColumn(name="UOS_UIF_USERNAME")
	private UosUif uosUif;

	public UomUifRole() {
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

	public UomRole getUomRole() {
		return this.uomRole;
	}

	public void setUomRole(UomRole uomRole) {
		this.uomRole = uomRole;
	}

	public UosUif getUosUif() {
		return this.uosUif;
	}

	public void setUosUif(UosUif uosUif) {
		this.uosUif = uosUif;
	}

}