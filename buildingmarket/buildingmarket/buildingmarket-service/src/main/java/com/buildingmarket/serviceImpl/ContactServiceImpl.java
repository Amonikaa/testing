package com.buildingmarket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.Contact;
import com.buildingmarket.repository.ContactRepository;
import com.buildingmarket.service.ContactService;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactRepository contactRepository;

	public boolean saveContactDetail(Contact contact) {
		Contact oldContact = contactRepository.save(contact);
		if (oldContact != null) {
			return true;
		}
		return false;
	}

	public List<Contact> findAll() {
		List<Contact> oldContact = contactRepository.findAll();
		if (oldContact != null) {
			return oldContact;
		}
		return null;
	}

	public boolean deleteContact(int contactId) {
		contactRepository.delete(contactId);
		return true;
	}

}
