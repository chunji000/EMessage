package com.tsinghua.esco.userlogin.reg.mapper;

import java.util.List;

import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VDeptInfo;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.base.vo.VRolesInfo;
public interface LoginMapper {

	public List quarySsqx();


	public VEduTeachersInfo findReg(VEduTeachersInfo acc);

	public VDeptInfo quaryUserDept(Integer did);

	public List querysalltree(VRolesInfo role);


	public int saveFile(VEduFile vpf);


	public VEduFile fileDown(Integer fid);
	
}
