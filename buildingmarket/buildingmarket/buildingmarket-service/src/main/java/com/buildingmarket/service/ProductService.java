package com.buildingmarket.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.buildingmarket.model.AdminProduct;
import com.buildingmarket.model.AdminProductType;
import com.buildingmarket.model.BuyerProduct;
import com.buildingmarket.model.Product;
import com.buildingmarket.model.User;

public interface ProductService {

	boolean saveProductDetails(Product product);

	List<Product> findAll();

	Product updateProduct(int productId);

	Product updateProductDetails(Product product);

	boolean deleteBlogs(int productId);

	List<Product> findAllSeller(int status);

	List<Product> findAllBuyer(int status);

	int buyProduct(int productId);

	List<Product> getUserOrder(int userId);

	public void addProductByBuyer(BuyerProduct buyerProduct);

	List<BuyerProduct> findAllBuyerProduct();

	boolean deleteBuyerProduct(int buyerProductId);

	BuyerProduct updateBuyerProduct(int buyerProductId);

	BuyerProduct updateBuyerProductDetails(BuyerProduct product);

	public void saveCsvFileData(MultipartFile file, User user) throws Exception;

	Product getProductById(Integer productId);

	List<Product> getSellerProductList(int userId);

	boolean deleteProduct(int productId);

	boolean addProduct(AdminProduct adminProduct);

	List<AdminProduct> findAdminProduct();

	boolean addProductType(AdminProductType adminProductType);


	

}
