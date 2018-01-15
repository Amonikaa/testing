package com.buildingmarket.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class Payment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "PAYMENT_ID")
	private int paymentId;

	@Column(name = "FIRST_DELIVERY_ADDRESS")
	private String firstDeliveryAddress;

	@Column(name = "name")
	private String name;

	@Column(name = "mobile")
	private String mobile;

	@Column(name = "SECOUND_DELIVERY_ADDRESS")
	private String secoundDeliveryAddress;

	@Column(name = "THIRD_DELIVERY_ADDRESS")
	private String thirdDeliveryAddress;

	@Column(name = "PAYMENT_TYPE")
	private String paymentType;
	
	

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public String getFirstDeliveryAddress() {
		return firstDeliveryAddress;
	}

	public void setFirstDeliveryAddress(String firstDeliveryAddress) {
		this.firstDeliveryAddress = firstDeliveryAddress;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getSecoundDeliveryAddress() {
		return secoundDeliveryAddress;
	}

	public void setSecoundDeliveryAddress(String secoundDeliveryAddress) {
		this.secoundDeliveryAddress = secoundDeliveryAddress;
	}

	public String getThirdDeliveryAddress() {
		return thirdDeliveryAddress;
	}

	public void setThirdDeliveryAddress(String thirdDeliveryAddress) {
		this.thirdDeliveryAddress = thirdDeliveryAddress;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

}
