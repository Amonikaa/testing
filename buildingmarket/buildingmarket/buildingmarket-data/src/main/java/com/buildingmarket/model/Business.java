package com.buildingmarket.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "busniess")
public class Business implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "BUSNIESS_ID")
	private int busniessId;

	@Column(name = "BUSNIESS_TYPE")
	@Size(max = 100)
	private String busniessType;

	@Column(name = "COMPANY_NAME")
	@Size(max = 100)
	private String companyName;

	@Column(name = "COMPANY_ADDRESS")
	@Size(max = 255)
	private String companyAddress;

	@Column(name = "NAME_OF_OWENER")
	@Size(max = 35)
	private String nameOfOwner;

	@Column(name = "OWNER_CONTACT")
	@Size(max = 15)
	private String ownerContact;

	@ManyToOne
	@JoinColumn(name = "USER_ID_FK")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getBusniessId() {
		return busniessId;
	}

	public void setBusniessId(int busniessId) {
		this.busniessId = busniessId;
	}

	public String getBusniessType() {
		return busniessType;
	}

	public void setBusniessType(String busniessType) {
		this.busniessType = busniessType;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getNameOfOwner() {
		return nameOfOwner;
	}

	public void setNameOfOwner(String nameOfOwner) {
		this.nameOfOwner = nameOfOwner;
	}

	public String getOwnerContact() {
		return ownerContact;
	}

	public void setOwnerContact(String ownerContact) {
		this.ownerContact = ownerContact;
	}

}