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

@Entity
@Table(name = "contactSupport")
public class ContactSupport implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "CONTACT_SUPPORT_ID")
	private int contactsupportId;

	@NotBlank
	@Size(max = 35)
	@Column(name = "NAME")
	private String name;

	@NotBlank
	@Size(max = 11)
	@Column(name = "MOBILE")
	private String mobile;

	@NotBlank
	@Column(name = "QUERY")
	private String query;

	@ManyToOne
	@JoinColumn(name = "USER_ID_FK")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getContactsupportId() {
		return contactsupportId;
	}

	public void setContactsupportId(int contactsupportId) {
		this.contactsupportId = contactsupportId;
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

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

}
