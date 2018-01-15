package com.buildingmarket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.ContactSupport;
import com.buildingmarket.repository.ContactSupportRepository;
import com.buildingmarket.service.ContactSupportService;

@Service
public class ContactSupportServiceImpl implements ContactSupportService {
	@Autowired
	private ContactSupportRepository contactSupportRepository;

	public boolean save(ContactSupport contactSupport) {
		ContactSupport oldSupport = contactSupportRepository.save(contactSupport);
		if (oldSupport != null) {
			return true;
		}
		return false;
	}

	public List<ContactSupport> findAll() {
		List<ContactSupport> oldList = contactSupportRepository.findAll();
		if (oldList != null) {
			return oldList;
		}
		return null;
	}

	public boolean deleteSupport(int contactsupportId) {
		contactSupportRepository.delete(contactsupportId);
		return true;
	}

}
