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
import javax.persistence.Transient;

@Entity
@Table(name = "order_form")
public class OrderForm implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ORDER_FORM_ID")
	private int roderFormId;

	@Column(name = "PRODUCT")
	private String product;

	@Column(name = "QUANTITY")
	private String quantity;

	@Column(name = "DELIVERY_ADDRESS")
	private String deliveryAddress;
	
	@Column(name = "DELIVERY_ADDRESS2")
	private String deliveryAddress2;
	
	@Column(name = "DELIVERY_ADDRESS3")
	private String deliveryAddress3;

	
	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getDeliveryAddress2() {
		return deliveryAddress2;
	}

	public void setDeliveryAddress2(String deliveryAddress2) {
		this.deliveryAddress2 = deliveryAddress2;
	}

	@Column(name = "PRICE")
	private String price;

	@Column(name = "TYPE")
	private String type;
	
	@Column(name = "STATUS")
	private int status;
	
	@Transient
	private int amount;
	
	@Transient
	private int sellerId;
	
	@Transient
	private int ProductId;
	
	@Transient
	private String productQuantity;
	
	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

	public int getProductId() {
		return ProductId;
	}

	public void setProductId(int productId) {
		ProductId = productId;
	}

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name = "DELIVERY_DATE")
	private String deliveryDate;

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Transient
	private String totalPrice;

	@ManyToOne
	@JoinColumn(name = "USER_ID_FK")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getRoderFormId() {
		return roderFormId;
	}

	public void setRoderFormId(int roderFormId) {
		this.roderFormId = roderFormId;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getDeliveryAddress3() {
		return deliveryAddress3;
	}

	public void setDeliveryAddress3(String deliveryAddress3) {
		this.deliveryAddress3 = deliveryAddress3;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
