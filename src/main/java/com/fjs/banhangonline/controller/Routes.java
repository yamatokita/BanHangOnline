package com.fjs.banhangonline.controller;

import java.util.HashMap;

public class Routes {
	
	private static HashMap<String, String> routes;

    public static final String home = "/banhangonline";
    public static final String admin = "/admin";
    public static final String productlist = "/productlist";
    public static final String productfavorite = "/productfavorite";
    public static final String generalContent = "/generalContent";

    private static void setRoutes()
    {       
        if(routes == null)
        {
            routes = new HashMap<String, String>();

            routes.put("home", home );
            routes.put("login", home + admin);
            routes.put("login", home + productlist);
            routes.put("logout", home + productfavorite);
            routes.put("logout", home + generalContent);
        }
    }   

    public static HashMap<String, String> getRoutes()
    {
        setRoutes();

        return routes;
    }

    public static String getRoute(String destin)
    {
        setRoutes();

        return routes.get(destin);
    }


}
