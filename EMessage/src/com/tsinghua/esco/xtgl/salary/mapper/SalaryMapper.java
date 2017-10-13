package com.tsinghua.esco.xtgl.salary.mapper;

import java.util.List;

import com.tsinghua.esco.base.vo.VEduSalary;

public interface SalaryMapper {

	public List<VEduSalary> queryAll(VEduSalary stu) ;

	public void saveAdd(VEduSalary stu);

	public void saveUpdate(VEduSalary stu);
	
	public void dodelete(int id);

	public VEduSalary toupdate(Integer id);

}
