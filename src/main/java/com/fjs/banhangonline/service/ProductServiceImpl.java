package com.fjs.banhangonline.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.fjs.banhangonline.dao.ProductDAOImpl;
import com.fjs.banhangonline.model.Product;
import com.fjs.banhangonline.dao.ProductDAO;;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDAO productDao;

	@Transactional
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}
	
	@Transactional
	public List<Product> getProductPaging(int page){
		return productDao.getProductPaging(page);
	}

	@Transactional
	public Product getProduct(int product_id) {
		return productDao.getProduct(product_id);
	}

	@Transactional
	public Product addProduct(Product product) {
		return productDao.addProduct(product);
	}

	@Transactional
	public Product updateProduct(Product product) {
		return productDao.updateProduct(product);

	}

	@Transactional
	public void deleteProduct(int product_id) {
		productDao.deleteProduct(product_id);;
	}
	
	public void setProductDAO(ProductDAO productDao) {
        this.productDao = productDao;
    }
}
