package com.buildingmarket.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_product")
public class AdminProduct implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ADMIN_PRODUCT_ID")
	private int adminProductId;
	
	@Column(name = "ADMIN_PRODUCT_NAME")
	private String adminProductName;

	public int getAdminProductId() {
		return adminProductId;
	}

	public void setAdminProductId(int adminProductId) {
		this.adminProductId = adminProductId;
	}

	public String getAdminProductName() {
		return adminProductName;
	}

	public void setAdminProductName(String adminProductName) {
		this.adminProductName = adminProductName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
	
	
}
