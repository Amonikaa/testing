package com.buildingmarket.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.buildingmarket.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByUserEmailAndPasswordAndStatus(String userEmail, String password, int status);

	@Query("from User u where u.mobileNumber=?1")
	User getMobileNumber(String mobileNumber);

	@Query("from User u where u.userEmail=?1")
	User getEmail(String email);

	@Query("from User u where u.password=?1 and u.userId=?2")
	User getPassword(String password, int userId);

	@Modifying
	@Transactional
	@Query("update User u set u.password=?1 where u.userId=?2")
	int changePassword(String password, int userId);

	@Modifying
	@Transactional
	@Query("update User u set u.status=1 where u.userId=?1")
	int verifyUserRegistration(int userId);

	@Query("from User u where u.userEmail=?1")
	User forgotpassword(String email);

}
