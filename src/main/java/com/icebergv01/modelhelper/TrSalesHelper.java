package com.icebergv01.modelhelper;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.icebergv01.model.TrSales;
import com.icebergv01.model.TrSalesBox;
import com.icebergv01.model.TrSalesDetail;
import com.icebergv01.model.UomMaterial;

public class TrSalesHelper {
	private UosBusinessPartnerHelper uosBusinessPartnerHelper;
	private TrSales trSales;
	private TrSalesBox trSalesBox;
	private TrSalesDetail trSalesDetail;
	private UomMaterial uomMaterial;
	private List<UomMaterial>listUomMaterial;
	private List<UomMaterialHelper>listUomMaterialHelper;
	private List<UosBusinessPartnerHelper>listUosBusinessPartnerHelper;
	private List<TrSalesDetail>listTrSalesDetail;
	private List<TrSalesObject>listTrSales;
	private List<TrSalesDetailObject>listTrSalesDetailObject;
	private long SubtotalBeforeTax;
	private int tax;
	private long totalPrice;
	private DateRange dateRange;
	
	
	public List<TrSalesDetailObject> getListTrSalesDetailObject() {
		return listTrSalesDetailObject;
	}
	public void setListTrSalesDetailObject(List<TrSalesDetailObject> listTrSalesDetailObject) {
		this.listTrSalesDetailObject = listTrSalesDetailObject;
	}
	public List<TrSalesObject> getListTrSales() {
		return listTrSales;
	}
	public void setListTrSales(List<TrSalesObject> listTrSales) {
		this.listTrSales = listTrSales;
	}
	public DateRange getDateRange() {
		return dateRange;
	}
	public void setDateRange(DateRange dateRange) {
		this.dateRange = dateRange;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	
	public long getSubtotalBeforeTax() {
		return SubtotalBeforeTax;
	}
	public void setSubtotalBeforeTax(long subtotalBeforeTax) {
		SubtotalBeforeTax = subtotalBeforeTax;
	}
	public long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public List<TrSalesDetail> getListTrSalesDetail() {
		return listTrSalesDetail;
	}
	public void setListTrSalesDetail(List<TrSalesDetail> listTrSalesDetail) {
		this.listTrSalesDetail = listTrSalesDetail;
	}
	public List<UomMaterial> getListUomMaterial() {
		return listUomMaterial;
	}
	public void setListUomMaterial(List<UomMaterial> listUomMaterial) {
		this.listUomMaterial = listUomMaterial;
	}
	public List<UomMaterialHelper> getListUomMaterialHelper() {
		return listUomMaterialHelper;
	}
	public void setListUomMaterialHelper(List<UomMaterialHelper> listUomMaterialHelper) {
		this.listUomMaterialHelper = listUomMaterialHelper;
	}
	public List<UosBusinessPartnerHelper> getListUosBusinessPartnerHelper() {
		return listUosBusinessPartnerHelper;
	}
	public void setListUosBusinessPartnerHelper(List<UosBusinessPartnerHelper> listUosBusinessPartnerHelper) {
		this.listUosBusinessPartnerHelper = listUosBusinessPartnerHelper;
	}
	public UosBusinessPartnerHelper getUosBusinessPartnerHelper() {
		return uosBusinessPartnerHelper;
	}
	public void setUosBusinessPartnerHelper(UosBusinessPartnerHelper uosBusinessPartnerHelper) {
		this.uosBusinessPartnerHelper = uosBusinessPartnerHelper;
	}
	public TrSales getTrSales() {
		return trSales;
	}
	public void setTrSales(TrSales trSales) {
		this.trSales = trSales;
	}
	public TrSalesBox getTrSalesBox() {
		return trSalesBox;
	}
	public void setTrSalesBox(TrSalesBox trSalesBox) {
		this.trSalesBox = trSalesBox;
	}
	public TrSalesDetail getTrSalesDetail() {
		return trSalesDetail;
	}
	public void setTrSalesDetail(TrSalesDetail trSalesDetail) {
		this.trSalesDetail = trSalesDetail;
	}
	public UomMaterial getUomMaterial() {
		return uomMaterial;
	}
	public void setUomMaterial(UomMaterial uomMaterial) {
		this.uomMaterial = uomMaterial;
	}
	
	
}
