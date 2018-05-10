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
import org.springframework.web.servlet.ModelAndView;

import com.fjs.banhangonline.model.Product;
import com.fjs.banhangonline.service.ProductService;


public class BodyController {
	
	private static final Logger logger = Logger
            .getLogger(BodyController.class);
 
    public BodyController() {
        System.out.println("BodyController()");
    }
 
    @Autowired
    private ProductService productService;

    public List<Product> listProduct_Body() throws IOException {
        List<Product> listProduct_Body = productService.getAllProducts();
        System.out.println("AAAAAAAAAA:" +listProduct_Body.size());
        return listProduct_Body;
    }
}
