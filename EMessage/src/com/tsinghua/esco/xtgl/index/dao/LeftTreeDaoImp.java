package com.tsinghua.esco.xtgl.index.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.xtgl.index.mapper.LeftTreeMapper;

@Repository("treedao")
public class LeftTreeDaoImp extends SqlSessionDaoSupport implements ILeftTreeDao {

	@Autowired
	private LeftTreeMapper mapper;
	
	public List queryAllTree(Integer pid) {
		return mapper.queryAllTree(pid);
	}

}
