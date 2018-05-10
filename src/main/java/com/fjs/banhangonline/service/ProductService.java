package com.fjs.banhangonline.service;

import java.util.List;

import com.fjs.banhangonline.model.Product;

public interface ProductService {
	
	public List<Product> getAllProducts();
	public Product getProduct(int product_id);
	public Product addProduct(Product product);
	public Product updateProduct(Product product);
	public void deleteProduct(int product_id);

}
