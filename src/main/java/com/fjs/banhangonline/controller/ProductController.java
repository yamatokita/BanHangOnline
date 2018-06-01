package com.fjs.banhangonline.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fjs.banhangonline.model.Contact;
import com.fjs.banhangonline.model.Product;
import com.fjs.banhangonline.service.ProductService;

@Controller
public class ProductController {
	
	private static final Logger logger = Logger
            .getLogger(ProductController.class);
 
    public ProductController() {
        System.out.println("ProductController()");
    }
 
 
    @Autowired
    private ProductService productService;

    @RequestMapping(value = Routes.home )
    public ModelAndView listProduct(@RequestParam(value = "tabName", required = false, defaultValue = "") String tabName, 
    								@RequestParam(value = "page", required = false, defaultValue = "1") int page, 
    								@RequestParam(value = "itemsearch", required = false,defaultValue = "") String itemsearch, 
    		                        ModelAndView model) throws IOException {
        
    	List<Product> listProduct = productService.getAllProducts();
    	List<Product> listNewProduct = productService.getNewProducts();
    	
    	List<Product> listProductPaging = productService.getProductPaging(page,"");
    	List<Product> listProductPagingSearch = productService.getProductPaging(page,itemsearch);
    	
	    int startpage = (int) (page - AppGlobals.limitResultsPerPage > 0?page - AppGlobals.limitResultsPerPage:1);
	    int endpage =  productService.getProductPages("");
	    int endpage_s =  productService.getProductPages(itemsearch);
    	
    	
    	
        AppGlobals.shareObj = "home";
        
        model.addObject("listProduct", listProduct);
        model.addObject("listNewProduct", listNewProduct);

        model.addObject("home_url", Routes.home );
        model.addObject("allProdcuts_url", Routes.home );
        model.setViewName("homeComponent");
        /*--------------------------------------------------------------*/
        model.addObject("listProductPaging", listProductPaging);
        model.addObject("listProductPagingSearch", listProductPagingSearch);
        model.addObject("startpage",startpage);
        model.addObject("endpage",endpage);
        model.addObject("endpage_s",endpage_s);
        
        /*if (tabName == "contact") {
        	System.out.println("contact");
        	Contact contact = new Contact();
        	model.addObject("contact",contact);
        }*/
        
        System.out.println(tabName);
        System.out.println(listProductPagingSearch.size());
        System.out.println(listProduct.size() / AppGlobals.limitResultsPerPage);
        System.out.println(listProduct.size() % AppGlobals.limitResultsPerPage>0?1:0);
        
        return model;
    }
    
    @RequestMapping(value = Routes.allProdcuts )
    public ModelAndView AllProducts(ModelAndView model) throws IOException {
        List<Product> allprodcuts = productService.getAllProducts();
        model.addObject("allProdcuts", allprodcuts);
        model.addObject("allProdcuts_url", Routes.allProdcuts );
        model.setViewName("product-list/productListComponent");
        return model;
    }
 
    @RequestMapping(value = Routes.home +"/newProduct", method = RequestMethod.GET)
    public ModelAndView newProduct(ModelAndView model) {
    	Product product = new Product();
        model.addObject("product", product);
        model.addObject("home", Routes.home );
        model.setViewName("productComponent");
        return model;
    }
 
    @RequestMapping(value = Routes.home + "/saveProduct", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView saveProduct(@ModelAttribute Product product) {
    	System.out.println(product.getProductCode());
    	
        if (product.getProductId() == 0) { // if employee id is 0 then creating the
            // employee other updating the employee
        	productService.addProduct(product);
        } else {
        	productService.updateProduct(product);
        }
        return new ModelAndView("redirect:"+ Routes.home  );
    }
 
    @RequestMapping(value = Routes.home +"/deleteProduct", method = RequestMethod.GET)
    public ModelAndView deleteProduct(HttpServletRequest request) {
    	int productid = Integer.parseInt(request.getParameter("productid"));
        productService.deleteProduct(productid);
        return new ModelAndView("redirect:"  + Routes.home );
    }
 
    @RequestMapping(value = Routes.home +  "/editProduct", method = RequestMethod.GET)
    public ModelAndView editProduct(HttpServletRequest request) {
        int productid = Integer.parseInt(request.getParameter("productid"));
        Product product = productService.getProduct(productid);
        ModelAndView model = new ModelAndView("productComponent");
        model.addObject("product", product);
 
        return model;
    }
    
    /*@RequestMapping("/system/logout")
    public String logout(ModelMap model, HttpSession session)
    {
        session.setAttribute("xxx", null);
        return "redirect:/system/login";
    }*/

}
