package com.buildingmarket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.Business;
import com.buildingmarket.repository.BusinessRepository;
import com.buildingmarket.service.BusinessService;

@Service
public class BusinessServiceImpl implements BusinessService {
	@Autowired
	private BusinessRepository businessRepository;

	public boolean save(Business business) {
		Business oldBusniss = businessRepository.save(business);
		if (oldBusniss != null) {
			return true;
		}
		return false;
	}

	public List<Business> getAllBusiness() {
		List<Business> list = businessRepository.findAll();
		if (list != null) {
			return list;
		}
		return null;
	}

	public boolean deleteBusiness(int busniessId) {
		businessRepository.delete(busniessId);
		return true;
	}

	public Business updateBusiness(int busniessId) {
		Business business = businessRepository.findOne(busniessId);
		return business;
	}

	public Business updateBusinessDetails(Business business) {
		business = businessRepository.save(business);
		return business;
	}


	public Business findById(int business) {
		Business olBusiness = businessRepository.findOne(business);
		return olBusiness;
	}

	public List<Business> getBusinessList(int userId) {
		List<Business> businessesList = businessRepository.findByUserId(userId);
		return businessesList;
	}

}
