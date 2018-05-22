package com.fjs.banhangonline.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fjs.banhangonline.controller.AppGlobals;
import com.fjs.banhangonline.model.Product;


@Repository
public class ProductDAOImpl implements ProductDAO {
	
	

	@Autowired
    private SessionFactory sessionFactory;
    
    @SuppressWarnings("unchecked")
    public List<Product> getAllProducts() {
 
        return sessionFactory.getCurrentSession().createQuery("from Product")
                .list();
    }
    
    @SuppressWarnings("unchecked")
    public List<Product> getProductPaging(int page) {
    	
    	 Query q = sessionFactory.getCurrentSession().createQuery(
                 "from Product");
         q.setFirstResult((page-1) * AppGlobals.limitResultsPerPage); 
         q.setMaxResults(AppGlobals.limitResultsPerPage);
         return (List<Product>) q.list();
    }
    
    public Product getProduct(int product_id){
        return (Product) sessionFactory.getCurrentSession().get(
        		Product.class, product_id);
    }
    
    public Product addProduct(Product product) {
        sessionFactory.getCurrentSession().saveOrUpdate(product);
        return product;
 
    }
    
    public Product updateProduct(Product product)  {
        sessionFactory.getCurrentSession().update(product);
        return product;
    }
 
    public void deleteProduct(int product_id)  {
    	Product product = (Product) sessionFactory.getCurrentSession().load(
    			Product.class, product_id);
        if (null != product) {
            this.sessionFactory.getCurrentSession().delete(product);
        }
    }
}