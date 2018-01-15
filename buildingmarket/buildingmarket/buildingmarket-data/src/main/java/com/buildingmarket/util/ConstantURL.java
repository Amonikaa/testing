package com.buildingmarket.util;

import org.apache.tiles.Attribute;

public class ConstantURL {

	// System Path
	public static final String RESOURCE_HANDLER = "/resources/**";
	public static final String RESOURCE_LOCATION = "/resources/";

	// "http://192.168.1.120:8080/buildingmarket-web/";
	public static final Attribute BASE_TEMPLATE = new Attribute("/WEB-INF/layout/defaultLayout.jsp");
	// layout component
	public static final String JSP_PACKAGE = "/WEB-INF/jsp/";
	public static final String HEADER = "/WEB-INF/layout/header.jsp";
	public static final String USER_HEADER = "/WEB-INF/layout/userHeader.jsp";
	public static final String USER_LEFT_MENU = "/WEB-INF/layout/leftMenu.jsp";
	public static final String FOOTER = "/WEB-INF/layout/footer.jsp";
	public static final String USER_FOOTER = "/WEB-INF/layout/userFooter.jsp";
	public static final String ADMIN_HEADER = "/WEB-INF/layout/adminHeader.jsp";
	public static final String ADMIN_LEFT_MENU = "/WEB-INF/layout/leftMenu.jsp";
	public static final String ADMIN_FOOTER = "/WEB-INF/layout/footer.jsp";
	public static final String ADMIN_EX_FOOTER = "/WEB-INF/layout/adminFooter.jsp";
	public static final String ADMIN_LEFT_FOOTER = "/WEB-INF/layout/leftMenu.jsp";

	public static final String JSP_EXTANTION = ".jsp";

	// User JSP Form URL

	public static final String INDEX_URL = "index";
	public static final String FORGOT_PASSWORD_URL = "forgotpasswordform";
	public static final String CHANGE_PASSWORD_URL = "changePasswordForm";
	public static final String BLOGS_URL = "blogs";
	public static final String USER_REGISTRATION_FORM_URL = "userRegistrationForm";
	public static final String USER_LOGIN_FORM_URL = "userLoginForm";
	public static final String USER_HOME_URL = "userHome";
	public static final String BUYERS_FORM_URL = "buyersForm";
	public static final String SELLER_FORM_URL = "sellersForm";
	public static final String USER_CONTACT_FORM_URL = "contactForm";
	public static final String USER_BUSINESS_FORM_URL = "businessForm";
	public static final String USER_MANAGE_BUSINESS_FORM_URL = "manageBusinessForm";
	public static final String USER_SUPPORT_FORM_URL = "userSupportForm";
	public static final String WATCH_LIST_URL = "watchListForm";
	public static final String PRODUCT_FORM_URL = "productForm";
	public static final String BUY_SELL_PRODUCT_FORM_URL = "buySellProductForm";
	public static final String USER_UPDATE_URL = "userProfile";
	public static final String USER_UPDATE_PROFILE_URL = "userUpdateProfile";
	public static final String USER_PRODUCT_LIST_FORM_URL = "productList";
	public static final String USER_ORDER_LIST_FORM_URL = "orderDetail";
	public static final String USER_ORDER_DELIVERY_LIST_FORM_URL = "orderDeliveryDetail";
	public static final String SHOW_PRODUCT_BY_BUYER = "showProductByBuyer";
	public static final String SHOW_ORDER_FORM = "showOrderForm";
	public static final String SHOW_PAYMENT = "showPayment";
	public static final String SHOW_PAYMENT_HISTORY = "showPaymentHistory";
	public static final String All_PAYMENT_HISTORY = "allPaymentHistory";
	public static final String ERROR = "error";
	public static final String ADMIN_ERROR = "adminError";
	
	
	

	// Admin JSP Form URL
	public static final String ADMIN_LOGIN_FORM_URL = "adminLoginForm";
	public static final String ADMIN_CHANGEPASSWORD_FORM_URL = "adminChangePasswordForm";
	public static final String ADMIN_HOME_FORM_URL = "adminHomeForm";
	public static final String ADMIN_BLOGS_FORM_URL = "adminBlogsForm";
	public static final String ADMIN_MANAGE_BLOGS_FORM_URL = "adminBlogsManage";
	public static final String ADMIN_PROFILE_FORM_URL = "adminProfile";
	public static final String ADMIN_PRODUCT_FORM_URL = "adminProductForm";
	public static final String ADMIN_ADD_PRODUCT_FORM_URL = "adminAddProductForm";
	public static final String ADMIN_ADD_PRODUCT_TYPE_FORM_URL = "adminAddProductTypeForm";
	public static final String ADMIN_SELLER_PRODUCT_LIST_FORM_URL = "selllerProductList";
	public static final String ADMIN_OPEN_PRODUCT_FORM_URL = "openProductForm";
	public static final String ADMIN_OPEN_CSV_PRODUCT_FORM_URL = "openProductCsv";
	public static final String ADMIN_MANAGE_PRODUCT_FORM_URL = "adminProductManage";
	
	public static final String ADMIN_MANAGE_ADD_PRODUCT_FORM_URL = "adminAddProductManage";
	public static final String ADMIN_MANAGE_BUYER_PRODUCT_FORM_URL = "adminBuyerProductManage";
	public static final String ADMIN_MANAGE_USER_SUPPORT_FORM_URL = "userSupportManage";
	public static final String ADMIN_UPDATE_PRODUCT_FORM_URL = "updateProduct";
	public static final String ADMIN_UPDATE_BUYER_PRODUCT_FORM_URL = "updateBuyerProductFrom";
	public static final String ADMIN_UPDATE_USER_FORM_URL = "updateUser";
	public static final String ADMIN_SELLER_FORM_URL = "sellerListForm";
	public static final String ADMIN_BUYER_FORM_URL = "buyerListForm";
	public static final String ADMIN_MANAGE_USER_CONTACT_FORM_URL = "userContactManage";
	public static final String ADMIN_MANAGE_USER_FORM_URL = "manageUserDetail";
	public static final String ADMIN_BUSINESS_FORM_URL = "adminBusinessForm";
	public static final String ADMIN_UPDATE_BUSINESS_FORM_URL = "updateBusinessForm";
	public static final String ADMIN_ORDER_DETAIL_FORM_URL = "manageOrderDetailForm";
	public static final String ADMIN_DELIVERY_ORDER_DETAIL_FORM_URL = "manageDeliveryOrderDetailForm";

}