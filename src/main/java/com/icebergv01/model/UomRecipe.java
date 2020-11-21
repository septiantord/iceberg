package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the uom_recipe database table.
 * 
 */
@Entity
@Table(name="uom_recipe")
@NamedQuery(name="UomRecipe.findAll", query="SELECT u FROM UomRecipe u")
public class UomRecipe implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="ACTUAL_PRODUCT_TRT")
	private BigDecimal actualProductTrt;

	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="GROSS_MARGIN")
	private BigDecimal grossMargin;

	@Column(name="GROSS_PROFIT_PERCENT")
	private BigDecimal grossProfitPercent;

	@Column(name="IS_SUB")
	private String isSub;

	@Column(name="SELLING_PRICE")
	private BigDecimal sellingPrice;

	@Column(name="SELLING_PRICE_INCLUDE_TAX")
	private BigDecimal sellingPriceIncludeTax;

	@Column(name="TRT_PERCENT")
	private BigDecimal trtPercent;

	@Column(name="UOM_MATERIAL_ID")
	private String uomMaterialId;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	public UomRecipe() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BigDecimal getActualProductTrt() {
		return this.actualProductTrt;
	}

	public void setActualProductTrt(BigDecimal actualProductTrt) {
		this.actualProductTrt = actualProductTrt;
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

	public BigDecimal getGrossMargin() {
		return this.grossMargin;
	}

	public void setGrossMargin(BigDecimal grossMargin) {
		this.grossMargin = grossMargin;
	}

	public BigDecimal getGrossProfitPercent() {
		return this.grossProfitPercent;
	}

	public void setGrossProfitPercent(BigDecimal grossProfitPercent) {
		this.grossProfitPercent = grossProfitPercent;
	}

	public String getIsSub() {
		return this.isSub;
	}

	public void setIsSub(String isSub) {
		this.isSub = isSub;
	}

	public BigDecimal getSellingPrice() {
		return this.sellingPrice;
	}

	public void setSellingPrice(BigDecimal sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public BigDecimal getSellingPriceIncludeTax() {
		return this.sellingPriceIncludeTax;
	}

	public void setSellingPriceIncludeTax(BigDecimal sellingPriceIncludeTax) {
		this.sellingPriceIncludeTax = sellingPriceIncludeTax;
	}

	public BigDecimal getTrtPercent() {
		return this.trtPercent;
	}

	public void setTrtPercent(BigDecimal trtPercent) {
		this.trtPercent = trtPercent;
	}

	public String getUomMaterialId() {
		return this.uomMaterialId;
	}

	public void setUomMaterialId(String uomMaterialId) {
		this.uomMaterialId = uomMaterialId;
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