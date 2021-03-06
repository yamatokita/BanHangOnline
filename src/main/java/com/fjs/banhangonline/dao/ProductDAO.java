package com.fjs.banhangonline.dao;

import java.util.List;

import com.fjs.banhangonline.model.Product;

public interface ProductDAO {
	
	public List<Product> getAllProducts();
	public List<Product> getNewProducts();
	public Product getProduct(int product_id);
	public Product addProduct(Product product);
	public Product updateProduct(Product product);
	public void deleteProduct(int product_id);
	public int getProductPages(String itemsearch);
	public List<Product> getProductPaging(int page, String itemsearch);

}
