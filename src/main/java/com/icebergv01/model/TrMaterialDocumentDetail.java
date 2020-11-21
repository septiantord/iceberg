package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;

import javax.persistence.*;

import java.math.BigDecimal;


/**
 * The persistent class for the tr_material_document_detail database table.
 * 
 */
@Entity
@Table(name="tr_material_document_detail")
@NamedQuery(name="TrMaterialDocumentDetail.findAll", query="SELECT t FROM TrMaterialDocumentDetail t")
public class TrMaterialDocumentDetail implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private String id;

	private BigDecimal price;

	private BigDecimal qty;

	@Column(name="SUB_TOTAL_PRICE")
	private BigDecimal subTotalPrice;

	@Column(name="TR_MATERIAL_DOCUMENT_DETAIL_ID_REVERSED")
	private String trMaterialDocumentDetailIdReversed;

	@Column(name="TR_MATERIAL_DOCUMENT_ID")
	private String trMaterialDocumentId;

	@Column(name="TR_MATERIAL_DOCUMENT_ID_REVERSED")
	private String trMaterialDocumentIdReversed;

	@Column(name="UOM_MATERIAL_ID")
	private String uomMaterialId;

	@Column(name="UOM_MOVEMENT_TYPE_ID")
	private String uomMovementTypeId;

	@Column(name="UOM_UOM_ID")
	private String uomUomId;

	public TrMaterialDocumentDetail() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getQty() {
		return this.qty;
	}

	public void setQty(BigDecimal qty) {
		this.qty = qty;
	}

	public BigDecimal getSubTotalPrice() {
		return this.subTotalPrice;
	}

	public void setSubTotalPrice(BigDecimal subTotalPrice) {
		this.subTotalPrice = subTotalPrice;
	}

	public String getTrMaterialDocumentDetailIdReversed() {
		return this.trMaterialDocumentDetailIdReversed;
	}

	public void setTrMaterialDocumentDetailIdReversed(String trMaterialDocumentDetailIdReversed) {
		this.trMaterialDocumentDetailIdReversed = trMaterialDocumentDetailIdReversed;
	}

	public String getTrMaterialDocumentId() {
		return this.trMaterialDocumentId;
	}

	public void setTrMaterialDocumentId(String trMaterialDocumentId) {
		this.trMaterialDocumentId = trMaterialDocumentId;
	}

	public String getTrMaterialDocumentIdReversed() {
		return this.trMaterialDocumentIdReversed;
	}

	public void setTrMaterialDocumentIdReversed(String trMaterialDocumentIdReversed) {
		this.trMaterialDocumentIdReversed = trMaterialDocumentIdReversed;
	}

	public String getUomMaterialId() {
		return this.uomMaterialId;
	}

	public void setUomMaterialId(String uomMaterialId) {
		this.uomMaterialId = uomMaterialId;
	}

	public String getUomMovementTypeId() {
		return this.uomMovementTypeId;
	}

	public void setUomMovementTypeId(String uomMovementTypeId) {
		this.uomMovementTypeId = uomMovementTypeId;
	}

	public String getUomUomId() {
		return this.uomUomId;
	}

	public void setUomUomId(String uomUomId) {
		this.uomUomId = uomUomId;
	}

}