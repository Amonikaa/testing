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

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "buyer_product")
public class BuyerProduct implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "BUYER_PRODUCT_ID")
	private int buyerProductId;
	
	@NotEmpty
	@Column(name = "BUYER_PRODUCT_SKU_ID")
	@Size(max = 60)
	private String buyerProductSkuId;


	@NotEmpty
	@Column(name = "BUYER_PRODUCT_NAME")
	@Size(max = 60)
	private String buyerProductName;
	
	@NotEmpty
	@Column(name = "BUYER_PRODUCT_TYPE")
	@Size(max = 60)
	private String buyerProductType;


	@NotBlank
	@Column(name = "BUYER_PRODUCT_QUANTITY")
	@Size(max = 20)
	private String buyerProductQuantity;

	@NotBlank
	@Column(name = "BUYER_PRODUCT_PRICE")
	@Size(max = 30)
	private String buyerProductPrice;
	
	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

	public int getBuyerProductId() {
		return buyerProductId;
	}

	public void setBuyerProductId(int buyerProductId) {
		this.buyerProductId = buyerProductId;
	}

	public String getBuyerProductName() {
		return buyerProductName;
	}

	public void setBuyerProductName(String buyerProductName) {
		this.buyerProductName = buyerProductName;
	}

	public String getBuyerProductQuantity() {
		return buyerProductQuantity;
	}

	public void setBuyerProductQuantity(String buyerProductQuantity) {
		this.buyerProductQuantity = buyerProductQuantity;
	}

	public String getBuyerProductPrice() {
		return buyerProductPrice;
	}

	public void setBuyerProductPrice(String buyerProductPrice) {
		this.buyerProductPrice = buyerProductPrice;
	}

	public String getBuyerProductSkuId() {
		return buyerProductSkuId;
	}

	public void setBuyerProductSkuId(String buyerProductSkuId) {
		this.buyerProductSkuId = buyerProductSkuId;
	}

	public String getBuyerProductType() {
		return buyerProductType;
	}

	public void setBuyerProductType(String buyerProductType) {
		this.buyerProductType = buyerProductType;
	}
	
	


	
	
}
