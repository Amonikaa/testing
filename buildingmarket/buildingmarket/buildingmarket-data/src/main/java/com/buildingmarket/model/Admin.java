package com.buildingmarket.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "admin")
public class Admin implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ADMIN_ID")
	private int adminId;

	@NotEmpty
	@Column(name = "ADMIN_EMAIL")
	@Size(max = 36)
	private String adminEmail;

	@NotBlank
	@Column(name = "ADMIN_PASSWORD")
	@Size(max = 16)
	private String adminPassword;

	@NotBlank
	@Column(name = "NAME")
	@Size(max = 30)
	private String name;

	@NotBlank
	@Column(name = "LAST_NAME")
	@Size(max = 30)
	private String lastName;

	@Column(name = "ADMIN_IMAGE")
	private String adminImage;

	@Transient
	private String oldPassword;

	@Transient
	private String confirmPassword;

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAdminImage() {
		return adminImage;
	}

	public void setAdminImage(String adminImage) {
		this.adminImage = adminImage;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminEmail=" + adminEmail + ", adminPassword=" + adminPassword + "]";
	}

}
