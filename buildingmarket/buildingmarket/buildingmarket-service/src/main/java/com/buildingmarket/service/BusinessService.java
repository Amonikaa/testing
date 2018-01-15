package com.buildingmarket.service;

import java.util.List;

import com.buildingmarket.model.Business;

public interface BusinessService {

	boolean save(Business business);

	List<Business> getAllBusiness();

	boolean deleteBusiness(int busniessId);

	Business updateBusiness(int busniessId);

	Business updateBusinessDetails(Business business);

	Business findById(int business);

	List<Business> getBusinessList(int userId);

}
