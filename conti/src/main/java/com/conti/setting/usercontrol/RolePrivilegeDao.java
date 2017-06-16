
package com.conti.setting.usercontrol;

import java.util.List;



public interface RolePrivilegeDao {
	public void saveOrUpdate(RolePrivilege u);
	public List<RolePrivilege> list();
	public RolePrivilege get(int id);
	public void delete(int id);

}


