package com.tsinghua.esco.xtgl.qxgl.dao;

import java.util.List;

import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VEduRoleInfo;
import com.tsinghua.esco.base.vo.VRolesInfo;
import com.tsinghua.esco.base.vo.VRoles_funsInfo;

public interface IRolesDao {

	public List queryrelos(VEduRoleInfo role);

	public List queryfuns(Integer pid);

	public VEduRoleInfo saveroles(VEduRoleInfo roles);

	public void saverf(VRoles_funsInfo rf);

	public void delroles(Integer rid);

	public void delrf(Integer rid);

	public VEduRoleInfo toupdate(Integer rid);

	public List queryupdmenu(VEduRoleInfo role);

	public void saveupds(VEduRoleInfo role);

	public void updrolefun(VRoles_funsInfo rf);

	public List queryssqh();

	public void deletesena(Integer sid);

	public void insaccs(VAccsInfo accs);

	public List queryuserelos(VEduRoleInfo role);

}