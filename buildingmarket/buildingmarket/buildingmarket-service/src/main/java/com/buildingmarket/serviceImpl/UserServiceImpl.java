package com.buildingmarket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.User;
import com.buildingmarket.repository.UserRepository;
import com.buildingmarket.service.UserService;
import com.buildingmarket.util.IConstant;
import com.buildingmarket.util.MailSend;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

	public User addUser(User user) {
		User newUser = userRepository.save(user);
		String url = "";
		if (newUser.getFirstName() != null && newUser.getUserId() != 0) {
			url = "Dear " + newUser.getFirstName() + IConstant.EMAIL_URL + newUser.getUserId();
			MailSend.commonMailSend(newUser.getUserEmail(), "notification", url);

			return newUser;
		}
		return null;

	}

	public User findByUserEmailAndPasswordAndStatus(String userEmail, String password, int status) {
		User oldUser = userRepository.findByUserEmailAndPasswordAndStatus(userEmail, password, status);
		return oldUser;
	}

	public boolean getMobileNumber(String mobileNumber) {
		User oldMobileNumber = userRepository.getMobileNumber(mobileNumber);
		if (oldMobileNumber != null) {
			return true;
		}
		return false;
	}

	public boolean getEmail(String email) {
		User oldEmail = userRepository.getEmail(email);
		if (oldEmail != null) {
			return true;
		}
		return false;
	}

	public User updateUserProfile(int userId) {

		User use = userRepository.findOne(userId);
		return use;
	}

	public User updateUserProfile(String saveUserImages, User user) {
		String img = user.getUserId() + ".jpg";
		if (null != saveUserImages && !saveUserImages.isEmpty()) {
			user.setUserImage(saveUserImages);
		}
		user.setUserImage(img);
		user = userRepository.save(user);
		return user;
	}

	public List<User> findAll() {
		List<User> oldUserList = userRepository.findAll();
		return oldUserList;
	}

	public User getUser(int userId) {
		User user = userRepository.findOne(userId);
		if (user != null) {
			return user;
		}
		return null;
	}

	public User updateUserDetails(User user) {
		User updatedUser = userRepository.saveAndFlush(user);
		if (updatedUser != null) {
			return updatedUser;
		}
		return null;
	}

	public boolean getPassword(String password, int userId) {
		User user = userRepository.getPassword(password, userId);
		if (user != null) {

			return true;
		}
		return false;
	}

	public boolean changePassword(User user) {
		int changePassword = userRepository.changePassword(user.getPassword(), user.getUserId());
		if (changePassword != 0) {
			return true;
		}
		return false;
	}

	public boolean verifyUserRegistration(int userId) {
		int userVerify = userRepository.verifyUserRegistration(userId);
		if (userVerify > 0) {
			return true;
		}
		return false;
	}

	public User forgotpassword(String email) {
		User user = userRepository.forgotpassword(email);
		String url = "";
		if (user != null) {
			url = "Dear " + user.getFirstName() + "\n\n Your Email = " + user.getUserEmail() + "\n\n and Password is ="
					+ user.getPassword() + "\n\n"
					+ " http://buildingmarkets.yyfrrkipm2.ap-southeast-2.elasticbeanstalk.com/userLogin";
			MailSend.commonMailSend(user.getUserEmail(), "notification", url);
			return user;
		}
		return null;
	}

}
