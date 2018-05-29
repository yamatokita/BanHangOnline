package com.fjs.banhangonline.controller;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fjs.banhangonline.model.User;
import com.fjs.banhangonline.service.UserService;

@Controller
public class UserController {
	
	private static final Logger logger = Logger
            .getLogger(UserController.class);
 
    public UserController() {
        System.out.println("UserController()");
    }
 
 
    @Autowired
    private UserService userService;

    @RequestMapping(value = Routes.home + "/saveUser", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
    public ModelAndView saveContact(@ModelAttribute User user) {
    	System.out.println("ABC");
    	ModelAndView  model = new ModelAndView();
    	userService.addUser(user);
    	
    	/*System.out.println("<script language=\"javascript\">");
    	System.out.println("alert(" + AppGlobals.mbxSentContact  + ")");
    	System.out.println("</script>");*/
    	model.addObject("message", AppGlobals.mbxRegister);
    	model.setViewName("redirect:"+ Routes.home);
    	return model;
        /*return new ModelAndView("redirect:"+ Routes.home  );*/
    }
 
    

}
