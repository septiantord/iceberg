package com.icebergv01.model;

import java.io.Serializable;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;


import java.util.Date;
import java.util.HashSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;


/**
 * The persistent class for the uos_uif database table.
 * 
 */

/**
 * The persistent class for the uos_uif database table.
 * 
 */
@Entity
@Table(name="uos_uif")
@NamedQuery(name="UosUif.findAll", query="SELECT u FROM UosUif u")
public class UosUif implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;

	@Temporal(TemporalType.DATE)
	@Column(name="BIRTH_DATE")
	private Date birthDate;

	@Column(name="CREATED_DATE")
	private Timestamp createdDate;

	private String email;

	@Column(name="FIRST_NAME")
	private String firstName;

	@Column(name="ID_CARD_NO")
	private String idCardNo;

	@Column(name="IS_ACTIVE")
	private String isActive;

	@Column(name="LAST_NAME")
	private String lastName;

	@Column(name="MIDDLE_NAME")
	private String middleName;

	private String password;

	@Column(name="UPDATED_DATE")
	private Timestamp updatedDate;

	//bi-directional many-to-one association to UomUifComp
	@OneToMany(mappedBy="uosUif")
	private List<UomUifComp> uomUifComps;

	//bi-directional many-to-one association to UomUifRole
	@OneToMany(mappedBy="uosUif")
	private List<UomUifRole> uomUifRoles;

	//bi-directional many-to-one association to UosUifAddr
	@OneToMany(mappedBy="uosUif")
	private List<UosUifAddr> uosUifAddrs;

	//bi-directional many-to-one association to UosUifPhon
	@OneToMany(mappedBy="uosUif")
	private List<UosUifPhon> uosUifPhons;

	public UosUif() {
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Timestamp getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getIdCardNo() {
		return this.idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return this.middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getUpdatedDate() {
		return this.updatedDate;
	}

	public void setUpdatedDate(Timestamp updatedDate) {
		this.updatedDate = updatedDate;
	}

	public List<UomUifComp> getUomUifComps() {
		return this.uomUifComps;
	}

	public void setUomUifComps(List<UomUifComp> uomUifComps) {
		this.uomUifComps = uomUifComps;
	}

	public UomUifComp addUomUifComp(UomUifComp uomUifComp) {
		getUomUifComps().add(uomUifComp);
		uomUifComp.setUosUif(this);

		return uomUifComp;
	}

	public UomUifComp removeUomUifComp(UomUifComp uomUifComp) {
		getUomUifComps().remove(uomUifComp);
		uomUifComp.setUosUif(null);

		return uomUifComp;
	}

	public List<UomUifRole> getUomUifRoles() {
		return this.uomUifRoles;
	}

	public void setUomUifRoles(List<UomUifRole> uomUifRoles) {
		this.uomUifRoles = uomUifRoles;
	}

	public UomUifRole addUomUifRole(UomUifRole uomUifRole) {
		getUomUifRoles().add(uomUifRole);
		uomUifRole.setUosUif(this);

		return uomUifRole;
	}

	public UomUifRole removeUomUifRole(UomUifRole uomUifRole) {
		getUomUifRoles().remove(uomUifRole);
		uomUifRole.setUosUif(null);

		return uomUifRole;
	}

	public List<UosUifAddr> getUosUifAddrs() {
		return this.uosUifAddrs;
	}

	public void setUosUifAddrs(List<UosUifAddr> uosUifAddrs) {
		this.uosUifAddrs = uosUifAddrs;
	}

	public UosUifAddr addUosUifAddr(UosUifAddr uosUifAddr) {
		getUosUifAddrs().add(uosUifAddr);
		uosUifAddr.setUosUif(this);

		return uosUifAddr;
	}

	public UosUifAddr removeUosUifAddr(UosUifAddr uosUifAddr) {
		getUosUifAddrs().remove(uosUifAddr);
		uosUifAddr.setUosUif(null);

		return uosUifAddr;
	}

	public List<UosUifPhon> getUosUifPhons() {
		return this.uosUifPhons;
	}

	public void setUosUifPhons(List<UosUifPhon> uosUifPhons) {
		this.uosUifPhons = uosUifPhons;
	}

	public UosUifPhon addUosUifPhon(UosUifPhon uosUifPhon) {
		getUosUifPhons().add(uosUifPhon);
		uosUifPhon.setUosUif(this);

		return uosUifPhon;
	}

	public UosUifPhon removeUosUifPhon(UosUifPhon uosUifPhon) {
		getUosUifPhons().remove(uosUifPhon);
		uosUifPhon.setUosUif(null);

		return uosUifPhon;
	}

//	CustomCode
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "uom_uif_role",
            joinColumns = @JoinColumn(name = "UOS_UIF_USERNAME"),
            inverseJoinColumns = @JoinColumn(name = "UOM_ROLE_ID")
            )
    private Set<UomRole> uomRoles = new HashSet<>();

	public Set<UomRole> getUomRoles() {
		return uomRoles;
	}

	public void setUomRoles(Set<UomRole> uomRoles) {
		this.uomRoles = uomRoles;
	}

	
}