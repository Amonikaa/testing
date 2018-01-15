package com.buildingmarket.util;

/**
 * Hold all Static elements used in project
 * 
 * @author Amit
 *
 */
public class IConstant {

	// Mail URL

	public static final String EMAIL_URL = "\n\n" + "Please Click This URL " + "\n\n"
			+ "http://buildingmarkets.yyfrrkipm2.ap-southeast-2.elasticbeanstalk.com/verifyUserRegistration?userId=";

	public static final String USER_VERIFIED_MESSAGE = "Your account has been successfully verified.!";

	// Image Path
	public static final String ADMIN_IMAGE = "/home/amit/Downloads/apache-tomcat-8.0.39/webapps/admin_image/";
	public static final String VIEW_ADMIN_IMAGE = "http://localhost:8080/admin_image/";

	// user Image path
	public static final String USER_IMAGE = "/home/amit/Downloads/apache-tomcat-8.0.39/webapps/user_image/";

	// Mail Credentials
	// public static final String FROM_EMAIL_ID = "rs0239383@gmail.com";
	public static final String FROM_EMAIL_ID = "buildingmarket@buildingmarket.com";

	// public static final String FROM_PASSWORD = "10101995";
	public static final String FROM_PASSWORD = "eX$N62S8]4_U";

	// public static final String SMTP_HOST = "smtp.gmail.com";
	public static final String SMTP_HOST = "smtpout.secureserver.net";
	public static final String SMTP_AUTH = "true";
	public static final String SMTP_PORT = "465";
	public static final String SMTP_SOCKET_FACTORY = "javax.net.ssl.SSLSocketFactory";
	public static final String PROP_SMTP_HOST = "mail.smtp.host";
	public static final String PROP_SMTP_AUTH = "mail.smtp.auth";
	public static final String PROP_SMTP_PORT = "mail.smtp.port";
	public static final String PROP_SMTP_SOCKET_FACTORY = "mail.smtp.socketFactory.class";

	// System
	public static final int MULTIPART_MAX_UPLOAD_SIZE = 104857600;/* 20971520 */
	public static final int MULTIPART_MAX_IN_MEMORY_SIZE = 104857600;

	public static final String MULTIPART_RESOLVER = "multipartResolver";
	public static final String DISPATCHER_SERVLET_NAME = "dispatcher";
	public static final String JPA_REPOSITORY = "com.buildingmarket.repository";
	public static final String HIBERNATE_PROPERTY_SOURCE = "classpath:hibernate.properties";
	public static final String HIBERNATE_COMPONENT_SCAN = "com.buildingmarket.configuration";
	public static final String PROPERTY_NAME_ENTITYMANAGER_PACKAGES_TO_SCAN = "entitymanager.packages.to.scan";
	public static final Byte ZERO = 0;
	// key to display message on jsp
	public static final String MESSAGE = "message";
	public static final String REI_UNIQUE_ID = "reiId";

	public static final Byte INT_ONE = 1;
	public static final Byte INT_MINUS_ONE = -1;
	public static final Byte BYTE_TWELWE = 12;

	public static final String APPROVED = "Approved";
	public static final String STATUS = "Success";
	public static final String MESSAGES = "messages";
	public static final String MESAGE = "mesage";

	public static final String DRIVER_CLASS_NAME = "jdbc.driverClassName";
	public static final String DB_URL = "jdbc.url";
	public static final String DB_USER = "jdbc.username";
	public static final String DB_PASSWORD = "jdbc.password";

	public static final String HIBERNATE_DILECT = "hibernate.dialect";
	public static final String HIBERNATE_SHOW_SQL = "hibernate.show_sql";
	public static final String HIBERNATE_FORMAT_SQL = "hibernate.format_sql";
	public static final String HIBERNATE_HBM2DDL = "hibernate.hbm2ddl.auto";

	public static final String BASE_PACKAGE = "com.buildingmarket";
	public static final String PROPERTY_SOURCE = "classpath:log4j.properties";

	public static final String USER_DETAIL_SERVICE = "userDetailsService";
	public static final String NOTIFICTION_LEAD_URL = "/notificationLead";

	public static final String USER_NAME = "userName";
	public static final String PASSWORD = "password";
	public static final String EMAIL = "email";

	public static final String TEXT_HTML = "text/html";

	// user session
	public static final String USER_SESSION = "userSession";

	// admin session
	public static final String ADMIN_SESSION = "adminSession";

	// user error and success
	public static final String USER_ERROR_MESSAGE = "errorMessage";
	public static final String USER_SUCCESS_MESSAGE = "successMessage";

	// ajax error and success message.
	public static final String AJAX_ERROR_MESSAGE = "Please Enter Another Contact Number.";
	public static final String AJAX_SUCCESS_MESSAGE = "";

	public static final String AJAX_EMAIL_ERROR_MESSAGE = "Please Enter Another Email Id.";

	public static final String AJAX_PASSWORD_ERROR_MESSAGE = "Please Enter Correct Password.";

	public static final String AJAX_PASSWORD_SUCCESS_MESSAGE = "";

}