/*
   Suresh
   29.11.2016
 */



package com.conti.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conti.setting.usercontrol.UserPrivilege;
import com.conti.setting.usercontrol.UserPrivilegeDao;
import com.conti.setting.usercontrol.UsersDao;


@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService
{

	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private UserPrivilegeDao userprivilegeDao;
	
//	@Autowired
//	private RoleDao roleDao;
	String username;
	@Transactional(readOnly=true)
	@Override
	public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException
	{
		//com.broman.model.m_user m_user = userDao.findByUserName(username);
		com.conti.setting.usercontrol.User user1=usersDao.findByUserName(username);
		int userid=user1.getUser_id();
		List<GrantedAuthority> authorities = buildUserAuthority(userprivilegeDao.geta(userid));
		return buildUserForAuthentication(user1, authorities);
	}


	// org.springframework.security.core.userdetails.User
	private User buildUserForAuthentication(com.conti.setting.usercontrol.User user1, List<GrantedAuthority> authorities)
	{
		return new User(user1.getUsername(), user1.getUserpassword(),authorities);
	}

	private List<GrantedAuthority> buildUserAuthority(List<UserPrivilege> userRoles)
	{
		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();
		// Build user's authorities
		for (UserPrivilege userRole : userRoles)
		{
			setAuths.add(new SimpleGrantedAuthority(userRole.getRole_name()));
			
		}
		List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

		return Result;
	}

}