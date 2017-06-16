package com.conti.setting.usercontrol;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository
class UserPrivilegeDaoImpl implements UserPrivilegeDao {
	@Autowired
	private SessionFactory sessionFactory;
	public UserPrivilegeDaoImpl() {	
	}
	public UserPrivilegeDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//================================save==============================
	@Override
	@Transactional
	public void saveOrUpdate(UserPrivilege feed) {
		sessionFactory.getCurrentSession().saveOrUpdate(feed);
	}
	
//	//================================List all Values======================
	@Override
	@Transactional
	public List<UserPrivilege> list() {
		@SuppressWarnings("unchecked")
		List<UserPrivilege> listFeed = (List<UserPrivilege>) sessionFactory.getCurrentSession()
				.createQuery("from UserPrivilege where obsolete ='N' and active ='Y'").list();
		return listFeed;
	}
	
  //================================List By ID==============================
	@Override 
	@Transactional
	public UserPrivilege get(int id) {
		String hql = "from UserPrivilege where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserPrivilege> listUser = (List<UserPrivilege>) query.list();
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}
	
	
	//================================List By ID==============================
		@Override 
		@Transactional
		public List<UserPrivilege> geta(int id) {
			String hql = "from UserPrivilege where user_id=" + id;
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<UserPrivilege> listUser = (List<UserPrivilege>) query.list();
			return listUser;
		}
		
		
	
	//================================Delete(update) By ID============================
	@Override
	@Transactional
	public void delete(int id) {
		UserPrivilege upToDelete = new UserPrivilege();
		upToDelete.setUserprivilege_id(id);
		String hql="update UserPrivilege  set obsolete='Y', active='N' where user_id=" + id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
			
	}
	//================================Delete By ID============================
	@Override
	@Transactional
	public void deleteall(int id) {
		UserPrivilege upToDelete = new UserPrivilege();
		upToDelete.setUserprivilege_id(id);
		String hql="delete  from UserPrivilege where id=" + id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
			
	}

}

