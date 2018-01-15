package com.buildingmarket.serviceImpl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.buildingmarket.model.AdminProduct;
import com.buildingmarket.model.AdminProductType;
import com.buildingmarket.model.BuyerProduct;
import com.buildingmarket.model.Product;
import com.buildingmarket.model.User;
import com.buildingmarket.repository.AdminProductRepository;
import com.buildingmarket.repository.AdminProductTypeRepository;
import com.buildingmarket.repository.BuyerProductRepository;
import com.buildingmarket.repository.ProductRepository;
import com.buildingmarket.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private AdminProductRepository adminProductRepository;

	@Autowired
	private AdminProductTypeRepository adminProductTypeRepository;

	@Autowired
	private BuyerProductRepository buyerProductRepository;

	public boolean saveProductDetails(Product product) {
		Product oldProduct = productRepository.save(product);
		if (oldProduct != null) {
			return true;
		}
		return false;
	}

	public List<Product> findAll() {
		List<Product> oldList = productRepository.findAll();

		if (oldList != null) {
			return oldList;
		}

		return null;

	}

	public Product updateProduct(int productId) {

		Product product = productRepository.findOne(productId);

		return product;
	}

	public Product updateProductDetails(Product product) {

		product = productRepository.save(product);
		return product;
	}

	public boolean deleteBlogs(int productId) {
		productRepository.delete(productId);
		return true;
	}

	public List<Product> findAllSeller(int status) {
		List<Product> sellerList = productRepository.findByStatus(status);
		if (sellerList != null) {
			return sellerList;
		}
		return null;
	}

	public List<Product> findAllBuyer(int status) {
		List<Product> sellerList = productRepository.findByStatus(status);
		if (sellerList != null) {
			return sellerList;
		}
		return null;
	}

	public int buyProduct(int productId) {
		int product = productRepository.buyProduct(productId);
		if (product != 0) {
			return product;
		}
		return 0;
	}

	public List<Product> getUserOrder(int userId) {
		int status = 1;
		List<Product> userOrderList = productRepository.getProduct(userId, status);
		return userOrderList;
	}

	public void addProductByBuyer(BuyerProduct buyerProduct) {
		buyerProductRepository.save(buyerProduct);

	}

	public List<BuyerProduct> findAllBuyerProduct() {
		List<BuyerProduct> oldBuyerList = buyerProductRepository.findAll();

		if (oldBuyerList != null) {
			return oldBuyerList;
		}

		return null;
	}

	public boolean deleteBuyerProduct(int buyerProductId) {
		buyerProductRepository.delete(buyerProductId);
		return true;
	}

	public BuyerProduct updateBuyerProduct(int buyerProductId) {
		BuyerProduct buyerProduct = buyerProductRepository.findOne(buyerProductId);
		return buyerProduct;
	}

	public BuyerProduct updateBuyerProductDetails(BuyerProduct product) {
		product = buyerProductRepository.save(product);
		return product;
	}

	public void saveCsvFileData(MultipartFile file, User user) throws Exception {
		File convertedFile = convert(file);
		FileInputStream fileInputStream = new FileInputStream(convertedFile);
		BufferedReader BufferedReader = null;
		String line = "";
		try {
			BufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
			int i = 0;
			while ((line = BufferedReader.readLine()) != null) {
				i += 1;
				if (i == 1)
					continue;
				Product Product = new Product();
				String[] country = line.split(",");
				Product.setProductName(country[0]);
				Product.setProductQuantity(country[1]);
				Product.setProductPrice(country[2]);
				Product.setDescription(country[3]);
				Product.setProductSkuId(country[4]);
				Product.setProductType(country[5]);
				Product.setUser(user);
				productRepository.save(Product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Convert multipart file to File
	 * 
	 * @param multipartFile
	 * @return
	 */
	public File convert(MultipartFile multipartFile) {
		File file = new File(multipartFile.getOriginalFilename());
		try {
			multipartFile.transferTo(file);
		} catch (IllegalStateException illegalStateException) {
			System.out.println("+++++++++Exception++++++" + illegalStateException);
		} catch (IOException ioException) {
			System.out.println("+++++++++IOException++++++" + ioException);

		}
		return file;
	}

	public Product getProductById(Integer productId) {

		return productRepository.findOne(productId);
	}

	public List<Product> getSellerProductList(int userId) {

		List<Product> sellerProductList = productRepository.findSellerProductList(userId);

		return sellerProductList;
	}

	public boolean deleteProduct(int productId) {
		productRepository.delete(productId);
		return true;
	}

	public boolean addProduct(AdminProduct adminProduct) {
		adminProductRepository.save(adminProduct);
		return true;
	}

	public List<AdminProduct> findAdminProduct() {
		List<AdminProduct> list = adminProductRepository.findAll();
		return list;
	}

	public boolean addProductType(AdminProductType adminProductType) {
		adminProductTypeRepository.save(adminProductType);
		return true;
	}

}
