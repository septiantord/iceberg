package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the tr_recording database table.
 * 
 */
@Entity
@Table(name="tr_recording")
@NamedQuery(name="TrRecording.findAll", query="SELECT t FROM TrRecording t")
public class TrRecording implements Serializable {
	private static final long serialVersionUID = 1L;

	private String addr;

	private String breeder;

	@Column(name="CHICK_IN_DATE")
	private Timestamp chickInDate;

	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="DOC_PRICE")
	private BigDecimal docPrice;

	@Column(name="FINISHER_PRICE")
	private BigDecimal finisherPrice;

	@Id
	private String id;

	@Column(name="MANAGE_BY")
	private String manageBy;

	@Column(name="OVK_PRICE")
	private BigDecimal ovkPrice;

	private String owner;

	@Column(name="PRE_STARTER_PRICE")
	private BigDecimal preStarterPrice;

	private BigDecimal qty;

	@Column(name="STARTER_PRICE")
	private BigDecimal starterPrice;

	@Column(name="STRAIN_GRADE")
	private String strainGrade;

	@Column(name="UOM_COMP_ID")
	private String uomCompId;

	@Column(name="UOS_UIF_USERNAME")
	private String uosUifUsername;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	public TrRecording() {
	}

	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBreeder() {
		return this.breeder;
	}

	public void setBreeder(String breeder) {
		this.breeder = breeder;
	}

	public Timestamp getChickInDate() {
		return this.chickInDate;
	}

	public void setChickInDate(Timestamp chickInDate) {
		this.chickInDate = chickInDate;
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

	public BigDecimal getDocPrice() {
		return this.docPrice;
	}

	public void setDocPrice(BigDecimal docPrice) {
		this.docPrice = docPrice;
	}

	public BigDecimal getFinisherPrice() {
		return this.finisherPrice;
	}

	public void setFinisherPrice(BigDecimal finisherPrice) {
		this.finisherPrice = finisherPrice;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getManageBy() {
		return this.manageBy;
	}

	public void setManageBy(String manageBy) {
		this.manageBy = manageBy;
	}

	public BigDecimal getOvkPrice() {
		return this.ovkPrice;
	}

	public void setOvkPrice(BigDecimal ovkPrice) {
		this.ovkPrice = ovkPrice;
	}

	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public BigDecimal getPreStarterPrice() {
		return this.preStarterPrice;
	}

	public void setPreStarterPrice(BigDecimal preStarterPrice) {
		this.preStarterPrice = preStarterPrice;
	}

	public BigDecimal getQty() {
		return this.qty;
	}

	public void setQty(BigDecimal qty) {
		this.qty = qty;
	}

	public BigDecimal getStarterPrice() {
		return this.starterPrice;
	}

	public void setStarterPrice(BigDecimal starterPrice) {
		this.starterPrice = starterPrice;
	}

	public String getStrainGrade() {
		return this.strainGrade;
	}

	public void setStrainGrade(String strainGrade) {
		this.strainGrade = strainGrade;
	}

	public String getUomCompId() {
		return this.uomCompId;
	}

	public void setUomCompId(String uomCompId) {
		this.uomCompId = uomCompId;
	}

	public String getUosUifUsername() {
		return this.uosUifUsername;
	}

	public void setUosUifUsername(String uosUifUsername) {
		this.uosUifUsername = uosUifUsername;
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

}