package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the uom_menu database table.
 * 
 */
@Entity
@Table(name="uom_menu")
@NamedQuery(name="UomMenu.findAll", query="SELECT u FROM UomMenu u")
public class UomMenu implements Serializable {
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

	@Column(name="`LABEL`")
	private String label;

	@Column(name="PARENT_ID")
	private String parentId;

	private String target;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	@Column(name="URL_ADDR")
	private String urlAddr;

	//bi-directional many-to-one association to UomMenuRole
	@OneToMany(mappedBy="uomMenu")
	private List<UomMenuRole> uomMenuRoles;

	public UomMenu() {
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

	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getParentId() {
		return this.parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getTarget() {
		return this.target;
	}

	public void setTarget(String target) {
		this.target = target;
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

	public String getUrlAddr() {
		return this.urlAddr;
	}

	public void setUrlAddr(String urlAddr) {
		this.urlAddr = urlAddr;
	}

	public List<UomMenuRole> getUomMenuRoles() {
		return this.uomMenuRoles;
	}

	public void setUomMenuRoles(List<UomMenuRole> uomMenuRoles) {
		this.uomMenuRoles = uomMenuRoles;
	}

	public UomMenuRole addUomMenuRole(UomMenuRole uomMenuRole) {
		getUomMenuRoles().add(uomMenuRole);
		uomMenuRole.setUomMenu(this);

		return uomMenuRole;
	}

	public UomMenuRole removeUomMenuRole(UomMenuRole uomMenuRole) {
		getUomMenuRoles().remove(uomMenuRole);
		uomMenuRole.setUomMenu(null);

		return uomMenuRole;
	}

}