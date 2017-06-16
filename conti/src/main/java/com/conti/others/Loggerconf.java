package com.conti.others;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;

import com.conti.others.ConstantValues;




public class Loggerconf {

	  final Logger logger = LoggerFactory.getLogger(Loggerconf.class);
	
	public void saveLogger(String userName, String rMapping, String status, Exception e) {
		
		
		
		String path = null;
		Date date = new Date();
		SimpleDateFormat dateformat = new SimpleDateFormat("dd-MM-YYYY hh:mm:ss aaa");
		String formattedDate = dateformat.format(date);
		System.out.println(""+path);
			MDC.put( "logFileName", userName );
		
		
		try{
		
			System.out.println("asdfsad**********************************************");
		if(status == ConstantValues.LOGGER_STATUS_L) {
			logger.info("Date : " + formattedDate + " ==== User --> " + userName + " entered in / " + rMapping + "===");
		} else if (status == ConstantValues.LOGGER_STATUS_S) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " saved in / " + rMapping + "===");
		} else if (status == ConstantValues.LOGGER_STATUS_U) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " updated in / " + rMapping + "===");
		} else if (status == ConstantValues.LOGGER_STATUS_D) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " deleted in / " + rMapping + "===");
		} else if (status == ConstantValues.LOGGER_STATUS_E) {
			logger.error("Date : " + formattedDate + " ======== User --> " + userName + " exception in / " + rMapping + "=== Error : "+e);
		} else if(status == ConstantValues.CSV_DOWNLOADED) {
			logger.error("Date : " + formattedDate + " ======== User --> " + userName + " CSV Downloaded in / " + rMapping + "=== Error : "+e);
		} else if(status == ConstantValues.PRINT) {
			logger.error("Date : " + formattedDate + " ======== User --> " + userName + " print taken in / " + rMapping + "=== Error : "+e);
		} else if (status == ConstantValues.FETCH_NOT_SUCCESS) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + "Fetch in Error /" + rMapping + "===Error:"+e);
		}
		else if (status == ConstantValues.DELETE_NOT_SUCCESS) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + "Delete no success / " + rMapping + "===Error:"+e);
		}else if (status == ConstantValues.FETCH_SUCCESS) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " Fetch in / " + rMapping + "===");
		}
		else if (status == ConstantValues.DELETE_SUCCESS) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " Deleted in / " + rMapping + "===");
		}
		else if (status == ConstantValues.SAVE_SUCCESS) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " Save / " + rMapping + "===");
		}
		else if (status == ConstantValues.SAVE_NOT_SUCCESS) {
			logger.info("Date : " + formattedDate + " ======== User --> " + userName + " Save / " + rMapping + "===");
		}
		else {
			logger.debug(getClass().getName());
		}
		}finally{
			MDC.remove("logFileName");
		
		}
		
	}
}