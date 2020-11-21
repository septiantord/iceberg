package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the uom_movement_type database table.
 * 
 */
@Entity
@Table(name="uom_movement_type")
@NamedQuery(name="UomMovementType.findAll", query="SELECT u FROM UomMovementType u")
public class UomMovementType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@Column(name="DEBIT_CREDIT_INDICATOR_TO_STOCK")
	private String debitCreditIndicatorToStock;

	@Column(name="TRANSACTION_KEY_ID")
	private String transactionKeyId;

	public UomMovementType() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDebitCreditIndicatorToStock() {
		return this.debitCreditIndicatorToStock;
	}

	public void setDebitCreditIndicatorToStock(String debitCreditIndicatorToStock) {
		this.debitCreditIndicatorToStock = debitCreditIndicatorToStock;
	}

	public String getTransactionKeyId() {
		return this.transactionKeyId;
	}

	public void setTransactionKeyId(String transactionKeyId) {
		this.transactionKeyId = transactionKeyId;
	}

}