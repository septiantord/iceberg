package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the tr_recording_detail database table.
 * 
 */
@Entity
@Table(name="tr_recording_detail")
@NamedQuery(name="TrRecordingDetail.findAll", query="SELECT t FROM TrRecordingDetail t")
public class TrRecordingDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="BODY_WEIGHT")
	private BigDecimal bodyWeight;

	@Column(name="BROILER_AGE")
	private int broilerAge;

	private BigDecimal cogs;

	@Column(name="COGS_TO_REVENUE")
	private BigDecimal cogsToRevenue;

	@Column(name="FEED_CONSUMPTION_CUMULATIVE_QTY")
	private BigDecimal feedConsumptionCumulativeQty;

	@Column(name="FEED_CONSUMPTION_QTY")
	private BigDecimal feedConsumptionQty;

	@Column(name="FEED_CONSUMPTION_RATIO")
	private BigDecimal feedConsumptionRatio;

	@Column(name="FEED_TRT")
	private BigDecimal feedTrt;

	@Column(name="HARVEST_QTY")
	private int harvestQty;
	
	@Id
	private String id;

	@Column(name="MORTALITY_QTY")
	private int mortalityQty;

	private String notes;

	@Column(name="RECORDING_DATE")
	private Timestamp recordingDate;

	@Column(name="TR_RECORDING_ID")
	private String trRecordingId;

	@Column(name="UOM_MATERIAL_ID")
	private String uomMaterialId;

	public TrRecordingDetail() {
	}

	public BigDecimal getBodyWeight() {
		return this.bodyWeight;
	}

	public void setBodyWeight(BigDecimal bodyWeight) {
		this.bodyWeight = bodyWeight;
	}

	public int getBroilerAge() {
		return this.broilerAge;
	}

	public void setBroilerAge(int broilerAge) {
		this.broilerAge = broilerAge;
	}

	public BigDecimal getCogs() {
		return this.cogs;
	}

	public void setCogs(BigDecimal cogs) {
		this.cogs = cogs;
	}

	public BigDecimal getCogsToRevenue() {
		return this.cogsToRevenue;
	}

	public void setCogsToRevenue(BigDecimal cogsToRevenue) {
		this.cogsToRevenue = cogsToRevenue;
	}

	public BigDecimal getFeedConsumptionCumulativeQty() {
		return this.feedConsumptionCumulativeQty;
	}

	public void setFeedConsumptionCumulativeQty(BigDecimal feedConsumptionCumulativeQty) {
		this.feedConsumptionCumulativeQty = feedConsumptionCumulativeQty;
	}

	public BigDecimal getFeedConsumptionQty() {
		return this.feedConsumptionQty;
	}

	public void setFeedConsumptionQty(BigDecimal feedConsumptionQty) {
		this.feedConsumptionQty = feedConsumptionQty;
	}

	public BigDecimal getFeedConsumptionRatio() {
		return this.feedConsumptionRatio;
	}

	public void setFeedConsumptionRatio(BigDecimal feedConsumptionRatio) {
		this.feedConsumptionRatio = feedConsumptionRatio;
	}

	public BigDecimal getFeedTrt() {
		return this.feedTrt;
	}

	public void setFeedTrt(BigDecimal feedTrt) {
		this.feedTrt = feedTrt;
	}

	public int getHarvestQty() {
		return this.harvestQty;
	}

	public void setHarvestQty(int harvestQty) {
		this.harvestQty = harvestQty;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMortalityQty() {
		return this.mortalityQty;
	}

	public void setMortalityQty(int mortalityQty) {
		this.mortalityQty = mortalityQty;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Timestamp getRecordingDate() {
		return this.recordingDate;
	}

	public void setRecordingDate(Timestamp recordingDate) {
		this.recordingDate = recordingDate;
	}

	public String getTrRecordingId() {
		return this.trRecordingId;
	}

	public void setTrRecordingId(String trRecordingId) {
		this.trRecordingId = trRecordingId;
	}

	public String getUomMaterialId() {
		return this.uomMaterialId;
	}

	public void setUomMaterialId(String uomMaterialId) {
		this.uomMaterialId = uomMaterialId;
	}

}