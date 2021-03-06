package com.fjs.banhangonline.controller;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = Routes.home + "/saveContact", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView saveContact(@ModelAttribute Contact contact) {
    	System.out.println("ABC");
    	ModelAndView  model = new ModelAndView();
    	contactService.addContact(contact);
    	
    	/*System.out.println("<script language=\"javascript\">");
    	System.out.println("alert(" + AppGlobals.mbxSentContact  + ")");
    	System.out.println("</script>");*/
    	model.addObject("message", AppGlobals.mbxSentContact);
    	model.setViewName("redirect:"+ Routes.home);
    	return model;
        /*return new ModelAndView("redirect:"+ Routes.home  );*/
    }
 
    

}
