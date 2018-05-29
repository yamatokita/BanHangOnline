package com.fjs.banhangonline.controller;

public class AppGlobals {
	public static String shareObj;
	public static final int limitResultsPerPage = 5;
	public static final String mbxSentContact = "Thank you for contacting us.";
	public static final String mbxRegister = "You have registered successfully";
	
	public String getShareObj() {
	    	return shareObj;
    }
    
    public void setShareObj(String obj) {
    	shareObj = obj;
    }
}