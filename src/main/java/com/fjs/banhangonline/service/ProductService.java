package com.fjs.banhangonline.service;

import java.util.List;

import com.fjs.banhangonline.model.Product;

public interface ProductService {
	
	public List<Product> getAllProducts();
	public List<Product> getNewProducts();
	public Product getProduct(int product_id);
	public Product addProduct(Product product);
	public Product updateProduct(Product product);
	public void deleteProduct(int product_id);
	public List<Product> getProductPaging(int page, String itemsearch);

}
