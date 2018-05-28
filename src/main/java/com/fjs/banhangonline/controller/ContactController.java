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
import com.fjs.banhangonline.service.ContactService;;

@Controller
public class ContactController {
	
	private static final Logger logger = Logger
            .getLogger(ContactController.class);
 
    public ContactController() {
        System.out.println("ContactController()");
    }
 
 
    @Autowired
    private ContactService contactService;

    @RequestMapping(value = Routes.home + "?tabName=contact", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView saveContact(@ModelAttribute Contact contact) {
    	System.out.println("ABC");
    	contactService.addContact(contact);
        return new ModelAndView("redirect:"+ Routes.home  );
    }
 
    

}
