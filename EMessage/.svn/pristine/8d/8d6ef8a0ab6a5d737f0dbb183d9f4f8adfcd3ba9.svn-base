package com.tsinghua.esco.xtgl.jsgl.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.xtgl.jsgl.mapper.EduTeacherMapper;
import com.tsinghua.esco.xtgl.xsgl.mapper.EduStduentMapper;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;

@Repository("teachdao")
public class TeacherDaoImp implements ITeacherDao{

	@Autowired
	private EduTeacherMapper mapper;
	
	public List queryAll(VEduTeachersInfo stu) {
		return mapper.queryAll(stu);
	}

	public void saveAdd(VEduTeachersInfo stu) {
		mapper.saveAdd(stu);
	}

	public void saveUpdate(VEduTeachersInfo stu) {
		mapper.saveUpdate(stu);
	}
	
	public void dodelete(int id){
		mapper.dodelete(id);
	}

	public VEduTeachersInfo toupdate(Integer id) {
		return mapper.toupdate(id);
	}

}
