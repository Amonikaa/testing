package com.buildingmarket.configuration;

import java.util.HashMap;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.Definition;
import org.apache.tiles.definition.DefinitionsFactory;

import com.buildingmarket.util.ConstantURL;

/**
 * Tiles configuration for both admin and web part.
 * 
 * @author Amit
 */
public final class TilesDefinitionsConfig implements DefinitionsFactory {

	private static final Map<String, Definition> tilesDefinitions = new HashMap<String, Definition>();

	public Definition getDefinition(String name, org.apache.tiles.request.Request tilesContext) {

		return tilesDefinitions.get(name);
	}

	private static void addDefaultLayoutDef(String name, String body, String header, String leftMenu, String footer) {

		Map<String, Attribute> attributes = new HashMap<String, Attribute>();
		attributes.put("header", new Attribute(leftMenu));
		attributes.put("leftMenu", new Attribute(header));
		attributes.put("body", new Attribute(ConstantURL.JSP_PACKAGE + "" + body + "" + ConstantURL.JSP_EXTANTION));
		attributes.put("footer", new Attribute(footer));
		tilesDefinitions.put(name, new Definition(name, ConstantURL.BASE_TEMPLATE, attributes));

	}

	public static void addDefinitions() {

		// Admin pages
		addDefaultLayoutDef(ConstantURL.ADMIN_LOGIN_FORM_URL, ConstantURL.ADMIN_LOGIN_FORM_URL, "", "", "");

		addDefaultLayoutDef(ConstantURL.ADMIN_HOME_FORM_URL, ConstantURL.ADMIN_HOME_FORM_URL, ConstantURL.ADMIN_HEADER,
				ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_ADD_PRODUCT_FORM_URL, ConstantURL.ADMIN_ADD_PRODUCT_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_ADD_PRODUCT_TYPE_FORM_URL, ConstantURL.ADMIN_ADD_PRODUCT_TYPE_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_ADD_PRODUCT_FORM_URL,
				ConstantURL.ADMIN_MANAGE_ADD_PRODUCT_FORM_URL, ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU,
				ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_BLOGS_FORM_URL, ConstantURL.ADMIN_BLOGS_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_BLOGS_FORM_URL, ConstantURL.ADMIN_MANAGE_BLOGS_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_PROFILE_FORM_URL, ConstantURL.ADMIN_PROFILE_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_PRODUCT_FORM_URL, ConstantURL.ADMIN_MANAGE_PRODUCT_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_UPDATE_PRODUCT_FORM_URL, ConstantURL.ADMIN_UPDATE_PRODUCT_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_SELLER_FORM_URL, ConstantURL.ADMIN_SELLER_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_BUYER_FORM_URL, ConstantURL.ADMIN_BUYER_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_USER_SUPPORT_FORM_URL,
				ConstantURL.ADMIN_MANAGE_USER_SUPPORT_FORM_URL, ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU,
				ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_USER_CONTACT_FORM_URL,
				ConstantURL.ADMIN_MANAGE_USER_CONTACT_FORM_URL, ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU,
				ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_USER_FORM_URL, ConstantURL.ADMIN_MANAGE_USER_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_UPDATE_USER_FORM_URL, ConstantURL.ADMIN_UPDATE_USER_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_CHANGEPASSWORD_FORM_URL, ConstantURL.ADMIN_CHANGEPASSWORD_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_MANAGE_BUYER_PRODUCT_FORM_URL,
				ConstantURL.ADMIN_MANAGE_BUYER_PRODUCT_FORM_URL, ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU,
				ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_UPDATE_BUYER_PRODUCT_FORM_URL,
				ConstantURL.ADMIN_UPDATE_BUYER_PRODUCT_FORM_URL, ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU,
				ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_BUSINESS_FORM_URL, ConstantURL.ADMIN_BUSINESS_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_UPDATE_BUSINESS_FORM_URL, ConstantURL.ADMIN_UPDATE_BUSINESS_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_ORDER_DETAIL_FORM_URL, ConstantURL.ADMIN_ORDER_DETAIL_FORM_URL,
				ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_DELIVERY_ORDER_DETAIL_FORM_URL,
				ConstantURL.ADMIN_DELIVERY_ORDER_DETAIL_FORM_URL, ConstantURL.ADMIN_HEADER, ConstantURL.ADMIN_LEFT_MENU,
				ConstantURL.ADMIN_EX_FOOTER);

		addDefaultLayoutDef(ConstantURL.All_PAYMENT_HISTORY, ConstantURL.All_PAYMENT_HISTORY, ConstantURL.ADMIN_HEADER,
				ConstantURL.ADMIN_LEFT_MENU, ConstantURL.ADMIN_EX_FOOTER);
		addDefaultLayoutDef(ConstantURL.ADMIN_ERROR, ConstantURL.ADMIN_ERROR, "", "", "");

	}

	public static void addUserLayoutDef(String name, String body, String header, String leftMenu, String footer) {
		addDefaultLayoutDef(name, body, header, leftMenu, footer);

	}

}