package com.conti.setting.usercontrol;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository
class RoleDaoImpl implements RoleDao {
	@Autowired
	private SessionFactory sessionFactory;
	public RoleDaoImpl() {	
	}
	public RoleDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//================================save==============================
	@Override
	@Transactional
	public void saveOrUpdate(Role role) {
		sessionFactory.getCurrentSession().saveOrUpdate(role);
	}
	
//	//================================List all Values======================
	@Override
	@Transactional
	public List<Role> list() {
		@SuppressWarnings("unchecked")
		List<Role> listFeed = (List<Role>) sessionFactory.getCurrentSession()
				.createQuery("from Role where obsolete ='N' and active ='Y'").list();
		return listFeed;
	}
	
  //================================List By ID==============================
	@Override 
	@Transactional
	public Role get(int id) {
		String hql = "from Role where role_id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) query.list();
		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		return null;
	}
	
	//================================Delete By ID============================
	@Override
	@Transactional
	public void delete(int id) {
		Role roleToDelete = new Role();
		roleToDelete.setRole_Id(id);
		//String Y="Y";
		String hql="update Role  set obsolete='Y', active='N' where id=" + id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
			
	}
	
	@Override 
	@Transactional
	public List<Role> geta(int id) {
		String hql = "from UserPrivilege where user_id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listUser = (List<Role>) query.list();
		return listUser;
	}
	

}
