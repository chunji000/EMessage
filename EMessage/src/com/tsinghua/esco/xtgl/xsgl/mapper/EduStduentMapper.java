package com.tsinghua.esco.xtgl.xsgl.mapper;

import java.util.List;
import com.tsinghua.esco.base.vo.VEduStudentInfo;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;

public interface EduStduentMapper {

	public List queryAll(VEduStudentInfo stu) ;

	public void saveAdd(VEduStudentInfo stu);

	public void saveUpdate(VEduStudentInfo stu);
	
	public void dodelete(int id);

	public VEduStudentInfo toupdate(Integer id);

}
