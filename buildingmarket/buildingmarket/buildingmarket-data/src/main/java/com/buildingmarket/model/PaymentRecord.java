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
@Table(name = "payment_record")
public class PaymentRecord implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "PAYMENT_RECORD_ID")
	private int paymentRecordId;
	
	@Column(name = "AMOUNT")
	private double amount;

	@Column(name = "AMOUNT_REFUNDED")
	private Long amountRefunded;

	@Column(name = "CURRENCY")
	private String currency;

	@Column(name = "Email")
	private String email;
	
	@Column(name = "SELLER_ID")
	private int sellerId;
	
	
	
	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "PRODUCT_ID")
	private Product product;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getPaymentRecordId() {
		return paymentRecordId;
	}

	public void setPaymentRecordId(int paymentRecordId) {
		this.paymentRecordId = paymentRecordId;
	}


	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Long getAmountRefunded() {
		return amountRefunded;
	}

	public void setAmountRefunded(Long amountRefunded) {
		this.amountRefunded = amountRefunded;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
