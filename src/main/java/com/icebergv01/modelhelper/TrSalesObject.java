package com.icebergv01.modelhelper;

import com.icebergv01.model.TrSales;
import com.icebergv01.model.UosBusinessPartner;

public class TrSalesObject extends TrSales{
	private UosBusinessPartner uosBusinessPartner;

	public UosBusinessPartner getUosBusinessPartner() {
		return uosBusinessPartner;
	}

	public void setUosBusinessPartner(UosBusinessPartner uosBusinessPartner) {
		this.uosBusinessPartner = uosBusinessPartner;
	}

}
