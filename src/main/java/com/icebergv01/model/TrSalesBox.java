package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tr_sales_box database table.
 * 
 */
@Entity
@Table(name="tr_sales_box")
@NamedQuery(name="TrSalesBox.findAll", query="SELECT t FROM TrSalesBox t")
public class TrSalesBox implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private String id;

	@Column(name="UOM_BOX_ID")
	private String uomBoxId;

	//bi-directional many-to-one association to TrSales
	@ManyToOne
	@JoinColumn(name="TR_SALES_ID", referencedColumnName="ID")
	private TrSales trSales;

	public TrSalesBox() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUomBoxId() {
		return this.uomBoxId;
	}

	public void setUomBoxId(String uomBoxId) {
		this.uomBoxId = uomBoxId;
	}

	public TrSales getTrSales() {
		return this.trSales;
	}

	public void setTrSales(TrSales trSales) {
		this.trSales = trSales;
	}

}