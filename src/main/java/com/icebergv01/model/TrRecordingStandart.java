package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the tr_recording_standart database table.
 * 
 */
@Entity
@Table(name="tr_recording_standart")
@NamedQuery(name="TrRecordingStandart.findAll", query="SELECT t FROM TrRecordingStandart t")
public class TrRecordingStandart implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="BODY_WEIGHT")
	private BigDecimal bodyWeight;

	@Column(name="BROILER_AGE")
	private int broilerAge;

	@Column(name="DEPLETION_PERCENTAGE")
	private BigDecimal depletionPercentage;

	private String description;

	@Column(name="FEED_CONSUMPTION_CUMULATIVE_QTY")
	private BigDecimal feedConsumptionCumulativeQty;

	@Column(name="FEED_CONSUMPTION_QTY")
	private BigDecimal feedConsumptionQty;

	@Column(name="FEED_CONSUMPTION_RATIO")
	private BigDecimal feedConsumptionRatio;

	@Column(name="HUMIDITY_MAX")
	private BigDecimal humidityMax;

	@Column(name="HUMIDITY_MIN")
	private BigDecimal humidityMin;

	@Column(name="MORTALITY_QTY")
	private int mortalityQty;

	private String notes;

	@Column(name="TEMPERATURE_MAX")
	private BigDecimal temperatureMax;

	@Column(name="TEMPERATURE_MIN")
	private BigDecimal temperatureMin;

	public TrRecordingStandart() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
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

	public BigDecimal getDepletionPercentage() {
		return this.depletionPercentage;
	}

	public void setDepletionPercentage(BigDecimal depletionPercentage) {
		this.depletionPercentage = depletionPercentage;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public BigDecimal getHumidityMax() {
		return this.humidityMax;
	}

	public void setHumidityMax(BigDecimal humidityMax) {
		this.humidityMax = humidityMax;
	}

	public BigDecimal getHumidityMin() {
		return this.humidityMin;
	}

	public void setHumidityMin(BigDecimal humidityMin) {
		this.humidityMin = humidityMin;
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

	public BigDecimal getTemperatureMax() {
		return this.temperatureMax;
	}

	public void setTemperatureMax(BigDecimal temperatureMax) {
		this.temperatureMax = temperatureMax;
	}

	public BigDecimal getTemperatureMin() {
		return this.temperatureMin;
	}

	public void setTemperatureMin(BigDecimal temperatureMin) {
		this.temperatureMin = temperatureMin;
	}

}