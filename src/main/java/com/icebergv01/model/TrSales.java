package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;



import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


/**
 * The persistent class for the tr_sales database table.
 * 
 */
@Entity
@Table(name="tr_sales")
@NamedQuery(name="TrSales.findAll", query="SELECT t FROM TrSales t")
public class TrSales implements Serializable {
	private static final long serialVersionUID = 1L;

////	@Id
//	@Column(name="IDENTITY_NO")
////	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int identityNo;
	
	@Column(name="IDENTITY_NO")
	private Long identityNo;
	public Long getIdentityNo() {
		return identityNo;
	}

	public void setIdentityNo(Long identityNo) {
		this.identityNo = identityNo;
	}
	

	@Column(name="DELIVERY_COST")
	private BigDecimal deliveryCost;
	@Column(name="SUB_TOTAL_BEFORE_TAX")
	private BigDecimal subTotalBeforeTax;
	
	public BigDecimal getDeliveryCost() {
		return deliveryCost;
	}

	public void setDeliveryCost(BigDecimal deliveryCost) {
		this.deliveryCost = deliveryCost;
	}

	public BigDecimal getSubTotalBeforeTax() {
		return subTotalBeforeTax;
	}

	public void setSubTotalBeforeTax(BigDecimal subTotalBeforeTax) {
		this.subTotalBeforeTax = subTotalBeforeTax;
	}


	@Column(name="CREATED_BY")
	private String createdBy;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	@Column(name="DELIVERED_BY")
	private String deliveredBy;

	@Column(name="PAYMENT_RECEIVED_BY")
	private String paymentReceivedBy;

	@Column(name="TOTAL_PRICE")
	private BigDecimal totalPrice;

	@Column(name="UOM_COMP_ID")
	private String uomCompId;

	@Column(name="UOS_BUSINESS_PARTNER_ID")
	private String uosBusinessPartnerId;

	@Column(name="UOS_UIF_USERNAME")
	private String uosUifUsername;

	@Column(name="UPDATED_BY")
	private String updatedBy;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to TrSalesDetail
	@OneToMany(mappedBy="trSales")
	private List<TrSalesDetail> trSalesDetails;

	//bi-directional many-to-one association to TrSalesBox
	@OneToMany(mappedBy="trSales")
	private List<TrSalesBox> trSalesBoxs;
	
	@Id
	@Column(name="ID")
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public TrSales() {
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

	public String getDeliveredBy() {
		return this.deliveredBy;
	}

	public void setDeliveredBy(String deliveredBy) {
		this.deliveredBy = deliveredBy;
	}

	public String getPaymentReceivedBy() {
		return this.paymentReceivedBy;
	}

	public void setPaymentReceivedBy(String paymentReceivedBy) {
		this.paymentReceivedBy = paymentReceivedBy;
	}

	public BigDecimal getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getUomCompId() {
		return this.uomCompId;
	}

	public void setUomCompId(String uomCompId) {
		this.uomCompId = uomCompId;
	}

	public String getUosBusinessPartnerId() {
		return this.uosBusinessPartnerId;
	}

	public void setUosBusinessPartnerId(String uosBusinessPartnerId) {
		this.uosBusinessPartnerId = uosBusinessPartnerId;
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

	public List<TrSalesDetail> getTrSalesDetails() {
		if(this.trSalesDetails == null ) {
			trSalesDetails = new ArrayList<TrSalesDetail>();
		}
		return this.trSalesDetails;
	}

	public void setTrSalesDetails(List<TrSalesDetail> trSalesDetails) {
		this.trSalesDetails = trSalesDetails;
	}

	public TrSalesDetail addTrSalesDetail(TrSalesDetail trSalesDetail) {
		getTrSalesDetails().add(trSalesDetail);
		trSalesDetail.setTrSales(this);

		return trSalesDetail;
	}

	public TrSalesDetail removeTrSalesDetail(TrSalesDetail trSalesDetail) {
		getTrSalesDetails().remove(trSalesDetail);
		trSalesDetail.setTrSales(null);

		return trSalesDetail;
	}

	public List<TrSalesBox> getTrSalesBoxs() {
		return this.trSalesBoxs;
	}

	public void setTrSalesBoxs(List<TrSalesBox> trSalesBoxs) {
		this.trSalesBoxs = trSalesBoxs;
	}

	public TrSalesBox addTrSalesBox(TrSalesBox trSalesBox) {
		getTrSalesBoxs().add(trSalesBox);
		trSalesBox.setTrSales(this);

		return trSalesBox;
	}

	public TrSalesBox removeTrSalesBox(TrSalesBox trSalesBox) {
		getTrSalesBoxs().remove(trSalesBox);
		trSalesBox.setTrSales(null);

		return trSalesBox;
	}

}