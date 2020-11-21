package com.icebergv01.modelhelper;

import com.icebergv01.model.UomMaterial;

public class UomMaterialHelper extends UomMaterial{
public String notes;
public int qty;



public int getQty() {
	return qty;
}

public void setQty(int qty) {
	this.qty = qty;
}

public String getNotes() {
	return notes;
}

public void setNotes(String notes) {
	this.notes = notes;
}

}
