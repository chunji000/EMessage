package com.tsinghua.esco.userlogin.reg.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.userlogin.reg.mapper.LoginMapper;
import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VDeptInfo;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.base.vo.VRolesInfo;
@Repository("logindao")
public class LoginDaoImp extends SqlSessionDaoSupport implements ILoginDao {
	@Autowired
	private LoginMapper mapper;

	public List quarySsqx() {
		return mapper.quarySsqx();
	}


	public VEduTeachersInfo findReg(VEduTeachersInfo acc) {
		return mapper.findReg(acc);
	}

	public VDeptInfo quaryUserDept(Integer did) {
		return mapper.quaryUserDept(did);
	}

	public List querysAllTree(VRolesInfo role) {
		
		return mapper.querysalltree(role);
	}
	public int saveFile(VEduFile vpf){
		return mapper.saveFile(vpf);
	}


	public VEduFile fileDown(Integer fid) {
		return mapper.fileDown(fid);
	}
}
