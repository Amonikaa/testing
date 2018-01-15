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

@Entity
@Table(name = "admin_product_value")
public class AdminProductType implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ADMIN_PRODUCT_TYPE_ID")
	private int adminProductTypeId;
	

	@Column(name = "ADMIN_PRODUCT_TYPE_NAME")
	private String adminProductTypeName;
	
	@ManyToOne
	@JoinColumn(name = "ADMIN_PRODUCT_FK")
	private AdminProduct adminProduct;

	public int getAdminProductTypeId() {
		return adminProductTypeId;
	}

	public void setAdminProductTypeId(int adminProductTypeId) {
		this.adminProductTypeId = adminProductTypeId;
	}

	public String getAdminProductTypeName() {
		return adminProductTypeName;
	}

	public void setAdminProductTypeName(String adminProductTypeName) {
		this.adminProductTypeName = adminProductTypeName;
	}

	public AdminProduct getAdminProduct() {
		return adminProduct;
	}

	public void setAdminProduct(AdminProduct adminProduct) {
		this.adminProduct = adminProduct;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
