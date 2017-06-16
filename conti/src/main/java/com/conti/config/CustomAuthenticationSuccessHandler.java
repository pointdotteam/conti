package com.conti.config;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.conti.setting.usercontrol.User;
import com.conti.setting.usercontrol.UsersDao;


/**
 * Servlet implementation class CustomAuthenticationSuccessHandler
 */


public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	private static final long serialVersionUID = 1L;
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
		
	@Autowired
	private UsersDao usersdao;
	/*@Autowired
	private GeneralSettingDao generalSettingDao;
	*/
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		System.out.println(authentication.getName()+" == authenticator name =============");
		
		//for getting user name from session
		HttpSession session = request.getSession();
		String usern =authentication.getName();
		session.setAttribute("bromanuser", usern);
	
		
		//get the client id from user dao using user name and set the client id in session
		User user=usersdao.findByUserName(usern);
		int userclientid=user.getCompany_id();
		session.setAttribute("userclientid", userclientid);
	
		//Check
		System.out.println("+++++++++++++++"+usern);
		System.out.println("+++++++++++++++"+ userclientid);
		
		//GeneralSettingModel generalSettingModel=generalSettingDao.getlistbyclientid(userclientid);
		/*
		if(generalSettingModel != null){
		if(generalSettingModel.getApplication_timeout() != 0 ){
			session.setMaxInactiveInterval(60*generalSettingModel.getApplication_timeout());
		}else{
			session.setMaxInactiveInterval(60*Integer.parseInt(ConstantValues.APPLICATION_TIMEOUT));
		}
		}else{
			session.setMaxInactiveInterval(60*Integer.parseInt(ConstantValues.APPLICATION_TIMEOUT));
		}
		*/
		System.out.println(session.getMaxInactiveInterval()+" == max interval session time =============");	
		
		redirectStrategy.sendRedirect(request, response, "/");
	}
	
	public RedirectStrategy getRedirectStrategy() {
		return this.redirectStrategy;
	}

	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}


    
}
