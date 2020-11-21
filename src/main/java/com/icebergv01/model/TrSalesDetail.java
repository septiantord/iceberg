package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the tr_sales_detail database table.
 * 
 */
@Entity
@Table(name="tr_sales_detail")
@NamedQuery(name="TrSalesDetail.findAll", query="SELECT t FROM TrSalesDetail t")
public class TrSalesDetail implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private String id;

	private String notes;

	private BigDecimal price;

	private int qty;

	@Column(name="SUB_TOTAL_PRICE")
	private BigDecimal subTotalPrice;

	//bi-directional many-to-one association to UomMaterial
	@ManyToOne
	@JoinColumn(name="UOM_MATERIAL_ID")
	private UomMaterial uomMaterial;

	//bi-directional many-to-one association to TrSales
	@ManyToOne
	@JoinColumn(name="TR_SALES_ID", referencedColumnName="ID")
	private TrSales trSales;

	public TrSalesDetail() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getQty() {
		return this.qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public BigDecimal getSubTotalPrice() {
		return this.subTotalPrice;
	}

	public void setSubTotalPrice(BigDecimal subTotalPrice) {
		this.subTotalPrice = subTotalPrice;
	}

	public UomMaterial getUomMaterial() {
		return this.uomMaterial;
	}

	public void setUomMaterial(UomMaterial uomMaterial) {
		this.uomMaterial = uomMaterial;
	}

	public TrSales getTrSales() {
		return this.trSales;
	}

	public void setTrSales(TrSales trSales) {
		this.trSales = trSales;
	}

}