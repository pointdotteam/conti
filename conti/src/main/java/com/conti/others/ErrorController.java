package com.conti.others;

import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;


@Controller
public class ErrorController {

	private static final Logger logger = Logger.getLogger(ErrorController.class);
	Loggerconf loggerconf = new Loggerconf();
	    public String renderError(HttpServletRequest httpRequest) {
	         
	    	logger.info(ErrorController.class);
	    	
	        String errorMsg = "";
	        int httpErrorCode = (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
	 
	        switch (httpErrorCode) {
	            case 400: {
	                errorMsg = "Http Error Code: 400. Bad Request";
	                break;
	            }
	            case 401: {
	                errorMsg = "Http Error Code: 401. Unauthorized";
	                break;
	            }
	            case 404: {
	                errorMsg = "Http Error Code: 404. Resource not found";
	                break;
	            }
	            case 500: {
	                errorMsg = "Http Error Code: 500. Internal Server Error";
	                break;
	            }
	        }
	        
	        return errorMsg;
	    }	
	    
	    public void renderException(String userName, String rMapping, String status, Exception e) {
	    	
	    	loggerconf.saveLogger(userName, rMapping, status, e);
	    	
	    }
}