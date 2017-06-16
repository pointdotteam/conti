
package com.conti.setting.usercontrol;


import java.util.List;



public interface RoleDao {
	public void saveOrUpdate(Role u);
	public List<Role> list();
	public Role get(int id);
	public void delete(int id);
	
	public List<Role> geta(int id);

}
