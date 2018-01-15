package com.buildingmarket.service;

import java.util.List;

import com.buildingmarket.model.User;

public interface UserService {

	User addUser(User user);

	User findByUserEmailAndPasswordAndStatus(String userEmail, String password,int status);

	boolean getMobileNumber(String mobileNumber);
	
	boolean getEmail(String mobileNumber);

	public User updateUserProfile(int userId);

	public User updateUserProfile(String saveUserImages, User user);

	List<User> findAll();

	User getUser(int userId);

	User updateUserDetails(User user);

	boolean getPassword(String password,int userId);

	boolean changePassword(User user);

	boolean verifyUserRegistration(int userId);

	User forgotpassword(String string);

}
