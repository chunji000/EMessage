package com.tsinghua.esco.xtgl.xsgl.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.xtgl.xsgl.mapper.EduStduentMapper;
import com.tsinghua.esco.base.vo.VEduStudentInfo;

@Repository("studao")
public class StudentDaoImp implements IStudentDao{

	@Autowired
	private EduStduentMapper mapper;
	
	public List queryAll(VEduStudentInfo stu) {
		return mapper.queryAll(stu);
	}

	public void saveAdd(VEduStudentInfo stu) {
		mapper.saveAdd(stu);
	}

	public void saveUpdate(VEduStudentInfo stu) {
		mapper.saveUpdate(stu);
	}
	
	public void dodelete(int id){
		mapper.dodelete(id);
	}

	public VEduStudentInfo toupdate(Integer id) {
		return mapper.toupdate(id);
	}

}
