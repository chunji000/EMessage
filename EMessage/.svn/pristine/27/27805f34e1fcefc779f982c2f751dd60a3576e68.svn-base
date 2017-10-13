package com.tsinghua.esco.remote.interfaces.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.base.vo.VEduStudentInfo;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.remote.interfaces.mapper.EduRemoteMapper;
@Repository("remotedao")
public class RemoteDaoImp implements IRemoteDao{

	@Autowired
	private EduRemoteMapper mapper;

	public VEduStudentInfo checkStudentLogin(VEduStudentInfo stu) {
		// TODO Auto-generated method stub
		return mapper.checkStudentLogin(stu);
	}

	public VEduTeachersInfo checkTeacherLogin(VEduTeachersInfo acc) {
		return mapper.checkTeacherLogin(acc);
	}
	
}
