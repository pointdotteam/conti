package com.conti.others;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class UserInformation {
	private  final Logger logger = LoggerFactory.getLogger(UserInformation.class);
	Loggerconf loggerconf = new Loggerconf();
		public String userName;
		public String userClientId;
		public String userId;
		public String currentDate;
		
	Date date=new Date();
	DateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		
	public UserInformation(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		try
		{
			loggerconf.saveLogger(userName, "Session(UserInformation call)", ConstantValues.FETCH_SUCCESS,null);
//			if(session != null && session.getAttribute("userclientid") != null) 
//			{
				this.userName=(String) request.getSession().getAttribute("username");	
				this.userId=(String) request.getSession().getAttribute("userid").toString();
				this.currentDate = dateformat.format(date);
			//} 
		}
		catch (Exception exception)
		{
			loggerconf.saveLogger(userName, "Session(UserInformation Error)", ConstantValues.FETCH_NOT_SUCCESS,exception);
			
			session.invalidate();
		}
		
	}
	
	public UserInformation(){
		
	}
	
	public String getUserName() {
		return this.userName;
	}


	public String getUserClientId() {
		return this.userClientId;
	}


	public String getUserId() {
		return this.userId;
	}


	public String getDate() {
		return this.currentDate;
	}

	

}
