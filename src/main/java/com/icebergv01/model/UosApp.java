package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the uos_app database table.
 * 
 */
@Entity
@Table(name="uos_app")
@NamedQuery(name="UosApp.findAll", query="SELECT u FROM UosApp u")
public class UosApp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="IS_ACTIVE")
	private String isActive;

	@Column(name="IS_CHECK_TERM_CONDITION")
	private String isCheckTermCondition;

	@Column(name="UOS_UIF_USERNAME")
	private String uosUifUsername;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	public UosApp() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getIsCheckTermCondition() {
		return this.isCheckTermCondition;
	}

	public void setIsCheckTermCondition(String isCheckTermCondition) {
		this.isCheckTermCondition = isCheckTermCondition;
	}

	public String getUosUifUsername() {
		return this.uosUifUsername;
	}

	public void setUosUifUsername(String uosUifUsername) {
		this.uosUifUsername = uosUifUsername;
	}

	public Timestamp getUpdatedDate() {
		return this.updatedDate;
	}

	public void setUpdatedDate(Timestamp updatedDate) {
		this.updatedDate = updatedDate;
	}

}