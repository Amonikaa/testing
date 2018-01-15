package com.buildingmarket.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "blogs")
public class Blogs implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "BLOGS_ID")
	private int blogsId;

	@Column(name = "BLOGS_TITLE")
	@Size(max = 100)
	private String blogsTitle;

	@NotBlank
	@Column(name = "START_DATE")
	
	private String startDate;

	@NotBlank
	@Column(name = "END_DATE")
	private String endDate;

	@NotBlank
	@Column(name = "DESCRIPTION")
	private String description;

	public int getBlogsId() {
		return blogsId;
	}

	public void setBlogsId(int blogsId) {
		this.blogsId = blogsId;
	}

	public String getBlogsTitle() {
		return blogsTitle;
	}

	public void setBlogsTitle(String blogsTitle) {
		this.blogsTitle = blogsTitle;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}