package com.conti.setting.usercontrol;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository
class UsersDaoImpl implements UsersDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UsersDaoImpl() {
		
	}
	
	public UsersDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//================================save==============================
	@Override
	@Transactional
	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}
//	//================================List all Values======================
	@Override
	@Transactional
	public List<User> list() {
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession()
				.createQuery("from User where obsolete ='N' and active ='Y'").list();
		return listUser;
	}
	//================================Delete By ID============================
	@Override
	@Transactional
	public void delete(int id) {
		User userToDelete = new User();
		userToDelete.setUser_id(id);
		//String Y="Y";
		String hql="update User  set obsolete='Y', active='N' where id=" + id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
			
	}
	  //================================List By ID==============================
		@Override 
		@Transactional
		public User get(int id) {
			String hql = "from User where id=" + id;
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<User> listUser = (List<User>) query.list();
			
			if (listUser != null && !listUser.isEmpty()) {
				return listUser.get(0);
			}
			
			return null;
		}
		
		
		
		
		 //================================List By ID==============================
		@Override 
		@Transactional
		public  int maxid(){
			
			String hql = "select max(user_id) from User" ;
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			return ((Number) query.uniqueResult()).intValue();
//			 query.setParameters("param1", value1);
//			    result = (Type) query.uniqueResult();
		}
		
		@Override
		@Transactional
		public void resetPassword(String username, String password)
		{
			User user = new User();			
			user.setUsername(username);
			
			String hql = "update User set userpassword='" + password + "'where username='" + username + "'";
			sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
		}
		
		@Override
		@Transactional
		@SuppressWarnings("unchecked")
		public User findByUserName(String username)
		{

			List<User> users = new ArrayList<User>();
			users = sessionFactory.getCurrentSession().createQuery("from User where username=? AND obsolete ='N' and active ='Y'").setParameter(0, username).list();
			if (users.size() > 0)
			{
				return users.get(0);
			} else
			{
				return null;
			}

		}
		@Override
		@Transactional
		public List<User> listbyclientid(int clientid){
			String hql = "from User where client_id="+ clientid +"AND obsolete ='N' and active ='Y'";
			@SuppressWarnings("unchecked")
			List<User> listuser = (List<User>) sessionFactory.getCurrentSession()
					.createQuery(hql).list();
			
			if (listuser != null && !listuser.isEmpty()) {
				return listuser;
			}
			return null;
		}
		
		
		@Override
		@Transactional
		public List<User> getlistOrderbydatedesc(int clientid){

			String hql = "from User where client_id=" + clientid +" and obsolete ='N' and active ='Y' ORDER BY user_createddate DESC";
			@SuppressWarnings("unchecked")
			List<User> listuser = (List<User>) sessionFactory.getCurrentSession()
					.createQuery(hql).list();
			
			if (listuser != null && !listuser.isEmpty()) {
				return listuser;
			}
			return null;
		}

		//================ Archive Function Begins ==================//
				@Override
				@Transactional
				public void deletearchive(int id) {
					User userToDelete = new User();
					userToDelete.setUser_id(id);
					//String Y="Y";
					String hql="update User set active='N' where id=" + id;
					sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
						
				}
				
				//=========== Archive Function Ended ======================//
		//======== User Name Unique Process Begins ==================//

				
				@Override
				@Transactional
				public boolean getlisybyusername(String username,int clientid) {
					String hql = "from User where username = '" + username+"' AND client_id = " + clientid + " AND obsolete = 'N' and active = 'Y'";
					Query query = sessionFactory.getCurrentSession().createQuery(hql);
					
					if(query.uniqueResult() != null) {
						return true;
					}
					else{
						return false;
					}
				}
				
		//========= User Name Unique Process Ended =================//
				
				@Override
				@Transactional
				public  boolean getisuname(String username) {
					String hql = "from User where username = '"+ username +"' and obsolete = 'N' and active = 'Y'";
					Query query = sessionFactory.getCurrentSession().createQuery(hql);
					
					if(query.uniqueResult() != null) {
						return true;
					} else {
						return false;
					}
					
				}
}
	