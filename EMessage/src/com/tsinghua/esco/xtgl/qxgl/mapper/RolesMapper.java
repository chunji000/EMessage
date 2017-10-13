package com.tsinghua.esco.xtgl.qxgl.mapper;

import java.util.List;

import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VEduRoleInfo;
import com.tsinghua.esco.base.vo.VRolesInfo;
import com.tsinghua.esco.base.vo.VRoles_funsInfo;

public interface RolesMapper {

	public List queryall(VEduRoleInfo role);

	public List queryfuns(Integer pid);


	public void saveroles(VEduRoleInfo roles);

	public void saverf(VRoles_funsInfo rf);

	public void delrofu(Integer rid);

	public void delroles(Integer rid);

	public VEduRoleInfo toone(Integer rid);

	public List queryrolefun(VEduRoleInfo role);

	public void upds(VEduRoleInfo role);

	public void updrole_funs(VRoles_funsInfo rf);

	public List queryqhs();

	public void delsena(Integer sid);

	public void insertacc(VAccsInfo accs);

	public List queryuserelos(VEduRoleInfo role);



}
