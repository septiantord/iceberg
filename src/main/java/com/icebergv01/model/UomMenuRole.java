package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the uom_menu_role database table.
 * 
 */
@Entity
@Table(name="uom_menu_role")
@NamedQuery(name="UomMenuRole.findAll", query="SELECT u FROM UomMenuRole u")
public class UomMenuRole implements Serializable {
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

	//bi-directional many-to-one association to UomMenu
	@ManyToOne
	@JoinColumn(name="UOM_MENU_ID")
	private UomMenu uomMenu;

	//bi-directional many-to-one association to UomRole
	@ManyToOne
	@JoinColumn(name="UOM_ROLE_ID")
	private UomRole uomRole;

	public UomMenuRole() {
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

	public UomMenu getUomMenu() {
		return this.uomMenu;
	}

	public void setUomMenu(UomMenu uomMenu) {
		this.uomMenu = uomMenu;
	}

	public UomRole getUomRole() {
		return this.uomRole;
	}

	public void setUomRole(UomRole uomRole) {
		this.uomRole = uomRole;
	}

}