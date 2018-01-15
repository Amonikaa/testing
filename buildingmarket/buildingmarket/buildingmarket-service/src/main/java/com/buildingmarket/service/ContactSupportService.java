package com.buildingmarket.service;

import java.util.List;

import com.buildingmarket.model.ContactSupport;

public interface ContactSupportService {

	boolean save(ContactSupport contactSupport);

	List<ContactSupport> findAll();

	boolean deleteSupport(int contactsupportId);

}
