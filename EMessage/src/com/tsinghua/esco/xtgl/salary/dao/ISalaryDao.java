package com.tsinghua.esco.xtgl.salary.dao;

import java.util.List;

import com.tsinghua.esco.base.vo.VEduSalary;

public interface ISalaryDao {

	public List<VEduSalary> queryAll(VEduSalary salary);

	public void saveAdd(VEduSalary salary);

	public void saveUpdate(VEduSalary salary);
	
	public void dodelete(int id);

	public VEduSalary toupdate(Integer id);

}
