package com.tsinghua.esco.xtgl.jsgl.mapper;

import java.util.List;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;

public interface EduTeacherMapper {

	public List queryAll(VEduTeachersInfo stu) ;

	public void saveAdd(VEduTeachersInfo stu);

	public void saveUpdate(VEduTeachersInfo stu);
	
	public void dodelete(int id);

	public VEduTeachersInfo toupdate(Integer id);

}
