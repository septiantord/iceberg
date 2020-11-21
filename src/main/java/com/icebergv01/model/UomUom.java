package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the uom_uom database table.
 * 
 */
@Entity
@Table(name="uom_uom")
@NamedQuery(name="UomUom.findAll", query="SELECT u FROM UomUom u")
public class UomUom implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String description;

	private String language;

	public UomUom() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

}