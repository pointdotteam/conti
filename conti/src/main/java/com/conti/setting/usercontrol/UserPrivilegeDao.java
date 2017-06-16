
package com.conti.setting.usercontrol;

import java.util.List;



public interface UserPrivilegeDao {
	public void saveOrUpdate(UserPrivilege u);
	public List<UserPrivilege> list();
	public UserPrivilege get(int id);
	public void delete(int id);
	public void deleteall(int id);
	public List<UserPrivilege> geta(int id);

}


