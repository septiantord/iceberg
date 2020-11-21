package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the uom_role database table.
 * 
 */
@Entity
@Table(name="uom_role")
@NamedQuery(name="UomRole.findAll", query="SELECT u FROM UomRole u")
public class UomRole implements Serializable {
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

	//bi-directional many-to-one association to UomMenuRole
	@OneToMany(mappedBy="uomRole")
	private List<UomMenuRole> uomMenuRoles;

	//bi-directional many-to-one association to UomUifRole
	@OneToMany(mappedBy="uomRole")
	private List<UomUifRole> uomUifRoles;

	public UomRole() {
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

	public List<UomMenuRole> getUomMenuRoles() {
		return this.uomMenuRoles;
	}

	public void setUomMenuRoles(List<UomMenuRole> uomMenuRoles) {
		this.uomMenuRoles = uomMenuRoles;
	}

	public UomMenuRole addUomMenuRole(UomMenuRole uomMenuRole) {
		getUomMenuRoles().add(uomMenuRole);
		uomMenuRole.setUomRole(this);

		return uomMenuRole;
	}

	public UomMenuRole removeUomMenuRole(UomMenuRole uomMenuRole) {
		getUomMenuRoles().remove(uomMenuRole);
		uomMenuRole.setUomRole(null);

		return uomMenuRole;
	}

	public List<UomUifRole> getUomUifRoles() {
		return this.uomUifRoles;
	}

	public void setUomUifRoles(List<UomUifRole> uomUifRoles) {
		this.uomUifRoles = uomUifRoles;
	}

	public UomUifRole addUomUifRole(UomUifRole uomUifRole) {
		getUomUifRoles().add(uomUifRole);
		uomUifRole.setUomRole(this);

		return uomUifRole;
	}

	public UomUifRole removeUomUifRole(UomUifRole uomUifRole) {
		getUomUifRoles().remove(uomUifRole);
		uomUifRole.setUomRole(null);

		return uomUifRole;
	}

}