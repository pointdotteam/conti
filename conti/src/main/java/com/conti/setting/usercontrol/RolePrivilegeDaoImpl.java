package com.conti.setting.usercontrol;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository
class RolePrivilegeDaoImpl implements RolePrivilegeDao {
	@Autowired
	private SessionFactory sessionFactory;
	public RolePrivilegeDaoImpl() {	
	}
	public RolePrivilegeDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//================================save==============================
	@Override
	@Transactional
	public void saveOrUpdate(RolePrivilege roleprivilege) {
		sessionFactory.getCurrentSession().saveOrUpdate(roleprivilege);
	}
	
	//================================List all Values======================
	@Override
	@Transactional
	public List<RolePrivilege> list() {
		@SuppressWarnings("unchecked")
		List<RolePrivilege> listRolePrivilege = (List<RolePrivilege>) sessionFactory.getCurrentSession()
				.createQuery("from RolePrivilege where obsolete ='N' and active ='Y'").list();
		return listRolePrivilege;
	}
	
  //================================List By ID==============================
	@Override 
	@Transactional
	public RolePrivilege get(int id) {
		String hql = "from RolePrivilege where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<RolePrivilege> listRolePrivilege = (List<RolePrivilege>) query.list();
		if (listRolePrivilege != null && !listRolePrivilege.isEmpty()) {
			return listRolePrivilege.get(0);
		}
		return null;
	}
	
	//================================Delete By ID============================
	@Override
	@Transactional
	public void delete(int id) {
		RolePrivilege RolePrivilege = new RolePrivilege();
		RolePrivilege.setRolePrivilege_Id(id);
		String hql="update RolePrivilege  set obsolete='Y', active='N' where id=" + id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
			
	}

}
