package com.conti.setting.usercontrol;

import java.util.List;





public interface UsersDao {
	public void saveOrUpdate(User u);
	public List<User> list();
	public User get(int id);
	public void delete(int id);
	
	public void deletearchive(int id);
	
	public  int maxid();

	public void resetPassword(String username, String password);
	
	public User findByUserName(String username);
	public List<User> listbyclientid(int clientid);
	
	public List<User> getlistOrderbydatedesc(int clientid);
	
	public boolean getlisybyusername(String username,int clientid);
	public  boolean getisuname(String username);
}




