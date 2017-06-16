package com.conti.setting.usercontrol;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.web.bind.annotation.RequestBody;


import org.springframework.web.bind.annotation.ResponseBody;


import java.util.ArrayList;

import java.util.List;

//import com.broman.others.ErrorController;
//import com.broman.config.Loggerconf;




@Controller
public class UserController {
	
//	private  final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UsersDao uDao;
	
	@Autowired
	private RoleDao rDao;
	
	
	@Autowired
	private UserPrivilegeDao upDao;
	
	@Autowired
	private RolePrivilegeDao rpDao;
	

	//Loggerconf loggerconf = new Loggerconf();
//	ErrorController errorController = new ErrorController();
	
	
	
	// ----------------------------------------------  User control Begins----------------------- //
		@RequestMapping(value = "/User_Control", method = RequestMethod.GET)
		public ModelAndView farm(HttpServletRequest request) throws IOException {

			String userclientid = (String) request.getSession().getAttribute("userclientid").toString();
			String usern = (String) request.getSession().getAttribute("bromanuser");
			String userid = (String) request.getSession().getAttribute("userid").toString();
			String requestTitle = "User Control";
			
			ModelAndView model = new ModelAndView();
			
			model.addObject("userclientid",userclientid);
			model.addObject("userid",userid);
			model.addObject("usern",usern);
			model.addObject("requestTitle",requestTitle);
			
			
			
			model.addObject("user", new User());

			List<User> userslist = uDao.listbyclientid(Integer.parseInt(userclientid));
			model.addObject("userslist",userslist);
			//For role id
			
			String chkbtn=request.getParameter("chkbtn");
	        String message="";
	        if (chkbtn != null && !chkbtn.isEmpty()) {
				    if ( chkbtn == "save" || chkbtn.equals("save") )
				    {
			         message ="saved successfully";
				    }
				    else
				    {
				     message ="updated successfully";	
				    }
				    model.addObject("message", message);
	        }
	        else
	        {
	        	
	        	  model.addObject("message", message);
	        }
	        
	        
			List<Role> rolelist = rDao.list();
			model.addObject("rolelist",rolelist);
//			model.setViewName("broman_usermanagement");
			model.setViewName("Setting_Usercontrol/BM_Page_User_MAS");
			return model;
		}
		// ----------------------------------------------   User control End----------------------- //
		
		
/*	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public @ResponseBody String  userpost(@RequestBody User user, HttpServletRequest request) {
	
	//logger.info("User");
//	
//	
//	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
//    public ModelAndView usersubmit(@Valid @ModelAttribute("User")User user,BindingResult result,HttpServletRequest request, @RequestParam String  chkbtn) {
//		
	
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
    	String enchryptPwd = pwdEncoder.encode(user.getUserpassword());
    	user.setUserpassword(enchryptPwd);
    	
    	//for getting user name from session
		HttpSession session = request.getSession();
		String usern = request.getUserPrincipal().getName();
		session.setAttribute("bromanuser", usern);
		
		//get the client id from user dao using user name and set the client id in session
		User user1=uDao.findByUserName(usern);
		int userclientid=user1.getCompany_id();
		session.setAttribute("userclientid", userclientid);
		
		user.setCompany_id(userclientid);//pass the client id to save in user id from session
        uDao.saveOrUpdate(user);
        
       

//        ModelAndView model=new ModelAndView("redirect:/UserControl");
       

        ModelAndView model=new ModelAndView();
	    
		model.addObject("user", new User());
		
		List<User> userslist = uDao.list();		
		model.addObject("userslist",userslist);
		
		List<Role> rolelist = rDao.list();
		model.addObject("rolelist",rolelist);
		
//		For user Privilege
//		if user id is empty get maximum of userid from user table and save in user privilege
//		otherwise if not empty get the userid and check if the userid is present in user privilege table
//		if it is present delete all the the row having that user id
// 		and enter the new data	
		
		
		
		int maxUserId =0;
		int userid=user.getUser_id();
		
		if(userid == 0 )
		{	
		 maxUserId =uDao.maxid();
		}
		else
		{
			List<UserPrivilege> userprlist = upDao.list();
			 for(UserPrivilege u1:userprlist) {
			int checkid=u1.getUser_id();
			int checkupid=u1.getUserPrivilege_Id();
			 if(checkid == userid){
				 upDao.deleteall(checkupid); 
			 }
			 }			 
			maxUserId =userid;		
		}
		//============================================
		UserPrivilege uspr = new UserPrivilege();
		
		List<RolePrivilege> usprlist = rpDao.list();
	    for(RolePrivilege r1:usprlist) 
	    {
	    	uspr.setUser_id((maxUserId));
			//uspr.set(user.getCompany_id());
	    	
			uspr.setRole_Id(user.getRole_Id());
			uspr.setObsolete(user.getObsolete());
			uspr.setActive(user.getActive());
			uspr.setUserPrivilege_CreatedDate(user.getUser_createddate());
			uspr.setUserPrivilege_UpdatedDate(user.getUser_createddate());
			String roleName = rDao.get(user.getRole_Id()).getRole_Name();
			
			
			//============================================
	    	uspr.setRole_MenuName(r1.getRole_MenuName());
			uspr.setRole_ScreenName(r1.getRole_ScreenName());
			uspr.setUserPrivilege_ADD(r1.getRole_ADD());
			uspr.setUserPrivilege_DELETE(r1.getRole_DELETE());
			uspr.setUserPrivilege_MODIFY(r1.getRole_MODIFY());
			uspr.setUserPrivilege_PRINT(r1.getRole_PRINT());
			uspr.setUserPrivilege_VIEW(r1.getRole_VIEW());
			uspr.setRole_name(roleName);
//			String roleName = rDao.get(signupModel.getSignup_Account()).getRole_Name();
//	    	
//			usprsignup.setRole_name(roleName);
//			
			int userroleid=user.getRole_Id();
			int roleprivilegeroleid=r1.getRole_Id();
//			check the role id entered by the user with Role table
//			Enter the matched row in user privilege table
			
			if(userroleid==roleprivilegeroleid)
			{
				upDao.saveOrUpdate(uspr);
			}
			
	    }

	    String str = "Success";
    	
		return str;
    }*/
	
	/*@RequestMapping(value="/useredit", method = RequestMethod.POST)
	public @ResponseBody List<String> useredit(HttpServletRequest request, @RequestBody int id){
		
		
		
		
		User user = uDao.get(id);
		
		int client_id=user.getCompany_id();
		int role_Id=user.getRole_Id();
		int user_id=user.getUser_id();
		String username=user.getUsername();
		String userpassword=user.getUserpassword();
		String user_designation=user.getUser_designation();
		String user_phno=user.getUser_phno();
		String user_emailid=user.getUser_emailid();
		String user_createddate=user.getUser_createddate();
		String Obsolete=user.getObsolete();
		String Active=user.getActive();
		
		List<String> userslist = new ArrayList<String>();
		
		userslist.add(Integer.toString(client_id));
		userslist.add(Integer.toString(role_Id));
		userslist.add(Integer.toString(user_id));
		userslist.add(username);
		userslist.add(userpassword);
		userslist.add(user_designation);
		userslist.add(user_phno);
		userslist.add(user_emailid);
		userslist.add(user_createddate);
		userslist.add(Obsolete);
		userslist.add(Active);
		
			
			
		return userslist;
	}*/
	
	@RequestMapping(value="/userdelete", method=RequestMethod.POST)
	public @ResponseBody String deleteuser(HttpServletRequest request, @RequestBody int id) {
	
		uDao.delete(id);
		upDao.delete(id);
		
		String str = "Success";
		return str;
	}
	
	

	@RequestMapping(value="/deletearchiveuser", method = RequestMethod.POST)
	public @ResponseBody String deletearchieveUser(HttpServletRequest request, @RequestBody int[] id) {
					
			
				
			for(int J=0;J<id.length; J++){
				uDao.deletearchive(id[J]);			
				}
			String str = "Success";
			return str;
				
		
		} 
			
	
	@RequestMapping(value = "/usernamecheck", method = RequestMethod.POST)
	public @ResponseBody String usernameCheck (HttpServletRequest request, @RequestBody String user_name)
	{
		String userclientid = (String) request.getSession().getAttribute("userclientid").toString();
		
		String username = user_name.replaceAll("^\"|\"$", "");
		boolean ifuser = uDao.getlisybyusername(username,Integer.parseInt( userclientid));
		String str = Boolean.toString(ifuser);
		return str;
		
	}
	
	
	
	
//	@RequestMapping(value = "/userlistprint", method = RequestMethod.POST)
//	public ModelAndView userprint(@RequestParam("id") String[] id, String bromantype, HttpServletRequest request) throws IOException{
//		
//		
//		ModelAndView model = new ModelAndView("print");
//		
//		List<Role> rolelist = rDao.list();
//		model.addObject("rolelist",rolelist);
//		
//		List<User> userslist = uDao.list();		
//		model.addObject("userslist",userslist);
//		
//		
//		if (bromantype == "user" || bromantype.equals("user"))
//		{
//			model.addObject("user", new User());
//			model.addObject("title", "user");
//		}
//		
//		int idlen=id.length;	
//		
//		ArrayList<User> user1 = new ArrayList<User>();
//		
//		for(int j=0;j<idlen;j++)
//		{
//			for(int i=0;i<userslist.size(); i++)
//			{
//			
//				if(userslist.get(i).getUser_id() == Integer.parseInt(id[j]))
//				{					
//					user1.add(userslist.get(i));
//					
//				}
//			}
//				
//		}
//
//		model.addObject("user1",user1);	
//		
//		model.addObject("idlen",idlen);
//		
//		
//		return model;
//	}
	
	
//	@RequestMapping(value="/userCSV")
//	public ModelAndView userCSV (HttpServletResponse response) throws IOException {
//		
//		
//		List<User> userslist = uDao.list();		
//		
//		
//		
//		String[] header = { "client_id", "user_id", "username", "userpassword",
//				"user_designation", "user_phno", "user_emailid", "role_Id", "user_createddate", "Obsolete", "Active" };
//		
//		
//		ModelAndView model = new ModelAndView("userCSV");	
//		model.addObject("csvData", userslist);
//		model.addObject("csvHeader", header);
//		
//		return model;
//	}
//	
	
}
