package com.buildingmarket.service;

import java.util.List;

import com.buildingmarket.model.Contact;

public interface ContactService {

	boolean saveContactDetail(Contact contact);

	List<Contact> findAll();

	boolean deleteContact(int contactId);

}
