package com.tsinghua.esco.xtgl.salary.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsinghua.esco.base.vo.VEduSalary;
import com.tsinghua.esco.xtgl.salary.mapper.SalaryMapper;

public class SalaryDaoImpl implements ISalaryDao {
	@Autowired
	private SalaryMapper mapper;

	@Override
	public List<VEduSalary> queryAll(VEduSalary salary) {
		return mapper.queryAll(salary);
	}

	@Override
	public void saveAdd(VEduSalary salary) {
		mapper.saveAdd(salary);
	}

	@Override
	public void saveUpdate(VEduSalary salary) {
		mapper.saveUpdate(salary);
	}

	@Override
	public void dodelete(int id) {
		mapper.dodelete(id);
	}

	@Override
	public VEduSalary toupdate(Integer id) {
		return mapper.toupdate(id);
	}
}
