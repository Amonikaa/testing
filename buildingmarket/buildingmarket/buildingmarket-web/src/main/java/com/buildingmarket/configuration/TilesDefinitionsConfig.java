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

		addDefaultLayoutDef(ConstantURL.INDEX_URL, ConstantURL.INDEX_URL, ConstantURL.HEADER, "", ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.BLOGS_URL, ConstantURL.BLOGS_URL, ConstantURL.HEADER, "", ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_REGISTRATION_FORM_URL, ConstantURL.USER_REGISTRATION_FORM_URL,
				ConstantURL.HEADER, "", "");

		addDefaultLayoutDef(ConstantURL.USER_LOGIN_FORM_URL, ConstantURL.USER_LOGIN_FORM_URL, ConstantURL.HEADER, "",
				"");

		addDefaultLayoutDef(ConstantURL.FORGOT_PASSWORD_URL, ConstantURL.FORGOT_PASSWORD_URL, ConstantURL.HEADER, "",
				"");

		addDefaultLayoutDef(ConstantURL.USER_CONTACT_FORM_URL, ConstantURL.USER_CONTACT_FORM_URL, ConstantURL.HEADER,
				"", ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.BUYERS_FORM_URL, ConstantURL.BUYERS_FORM_URL, ConstantURL.HEADER, "",
				ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.SELLER_FORM_URL, ConstantURL.SELLER_FORM_URL, ConstantURL.HEADER, "",
				ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.WATCH_LIST_URL, ConstantURL.WATCH_LIST_URL, ConstantURL.HEADER, "",
				ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.PRODUCT_FORM_URL, ConstantURL.PRODUCT_FORM_URL, ConstantURL.HEADER, "",
				ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.BUY_SELL_PRODUCT_FORM_URL, ConstantURL.BUY_SELL_PRODUCT_FORM_URL,
				ConstantURL.HEADER, "", ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_HOME_URL, ConstantURL.USER_HOME_URL, ConstantURL.USER_HEADER,
				ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_UPDATE_URL, ConstantURL.USER_UPDATE_URL, ConstantURL.USER_HEADER,
				ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_PRODUCT_FORM_URL, ConstantURL.ADMIN_PRODUCT_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_PRODUCT_LIST_FORM_URL, ConstantURL.USER_PRODUCT_LIST_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_BUSINESS_FORM_URL, ConstantURL.USER_BUSINESS_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_SUPPORT_FORM_URL, ConstantURL.USER_SUPPORT_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_ORDER_LIST_FORM_URL, ConstantURL.USER_ORDER_LIST_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.SHOW_PRODUCT_BY_BUYER, ConstantURL.SHOW_PRODUCT_BY_BUYER,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.CHANGE_PASSWORD_URL, ConstantURL.CHANGE_PASSWORD_URL, ConstantURL.USER_HEADER,
				ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_OPEN_PRODUCT_FORM_URL, ConstantURL.ADMIN_OPEN_PRODUCT_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_OPEN_CSV_PRODUCT_FORM_URL, ConstantURL.ADMIN_OPEN_CSV_PRODUCT_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.SHOW_ORDER_FORM, ConstantURL.SHOW_ORDER_FORM, ConstantURL.USER_HEADER,
				ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.SHOW_PAYMENT, ConstantURL.SHOW_PAYMENT, ConstantURL.USER_HEADER,
				ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.SHOW_PAYMENT_HISTORY, ConstantURL.SHOW_PAYMENT_HISTORY, ConstantURL.USER_HEADER,
				ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

		// error pages
		addDefaultLayoutDef(ConstantURL.ERROR, ConstantURL.ERROR, "", "", "");

		addDefaultLayoutDef(ConstantURL.USER_ORDER_DELIVERY_LIST_FORM_URL,
				ConstantURL.USER_ORDER_DELIVERY_LIST_FORM_URL, ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU,
				ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.ADMIN_SELLER_PRODUCT_LIST_FORM_URL,
				ConstantURL.ADMIN_SELLER_PRODUCT_LIST_FORM_URL, ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU,
				ConstantURL.USER_FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_MANAGE_BUSINESS_FORM_URL, ConstantURL.USER_MANAGE_BUSINESS_FORM_URL,
				ConstantURL.USER_HEADER, ConstantURL.USER_LEFT_MENU, ConstantURL.USER_FOOTER);

	}

	public static void addUserLayoutDef(String name, String body, String header, String leftMenu, String footer) {
		addDefaultLayoutDef(name, body, header, leftMenu, footer);

	}

}