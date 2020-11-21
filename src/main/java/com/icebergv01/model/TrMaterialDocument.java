package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the tr_material_document database table.
 * 
 */
@Entity
@Table(name="tr_material_document")
@NamedQuery(name="TrMaterialDocument.findAll", query="SELECT t FROM TrMaterialDocument t")
public class TrMaterialDocument implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="IS_REVERSE")
	private String isReverse;

	private String notes;

	@Column(name="TR_MATERIAL_DOCUMENT_ID_REVERSED")
	private String trMaterialDocumentIdReversed;

	@Column(name="TR_PURCHASE_ORDER_DETAIL_ID")
	private String trPurchaseOrderDetailId;

	@Column(name="TR_PURCHASE_ORDER_ID")
	private String trPurchaseOrderId;

	@Column(name="TR_SALES_DETAIL_ID")
	private String trSalesDetailId;

	@Column(name="TR_SALES_ID")
	private String trSalesId;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	public TrMaterialDocument() {
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

	public String getIsReverse() {
		return this.isReverse;
	}

	public void setIsReverse(String isReverse) {
		this.isReverse = isReverse;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getTrMaterialDocumentIdReversed() {
		return this.trMaterialDocumentIdReversed;
	}

	public void setTrMaterialDocumentIdReversed(String trMaterialDocumentIdReversed) {
		this.trMaterialDocumentIdReversed = trMaterialDocumentIdReversed;
	}

	public String getTrPurchaseOrderDetailId() {
		return this.trPurchaseOrderDetailId;
	}

	public void setTrPurchaseOrderDetailId(String trPurchaseOrderDetailId) {
		this.trPurchaseOrderDetailId = trPurchaseOrderDetailId;
	}

	public String getTrPurchaseOrderId() {
		return this.trPurchaseOrderId;
	}

	public void setTrPurchaseOrderId(String trPurchaseOrderId) {
		this.trPurchaseOrderId = trPurchaseOrderId;
	}

	public String getTrSalesDetailId() {
		return this.trSalesDetailId;
	}

	public void setTrSalesDetailId(String trSalesDetailId) {
		this.trSalesDetailId = trSalesDetailId;
	}

	public String getTrSalesId() {
		return this.trSalesId;
	}

	public void setTrSalesId(String trSalesId) {
		this.trSalesId = trSalesId;
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