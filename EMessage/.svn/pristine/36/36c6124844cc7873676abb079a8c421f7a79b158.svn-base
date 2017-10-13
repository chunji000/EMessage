package com.tsinghua.esco.xtgl.yhgl.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.xtgl.yhgl.mapper.VAccsMapper;
import com.tsinghua.esco.base.vo.VAccsInfo;


@Repository("accsdao")
public class AccsInfoImp extends SqlSessionDaoSupport implements IVAccsDao {
	
	@Autowired
	private VAccsMapper mapper;
	
	public List queryAllAccs(VAccsInfo accs){
		return mapper.queryAllAccs(accs);
		
	}
	
	public List queryAllDept(){
		return mapper.queryAllDept();
		
	}
	
	public List queryAllRoles(){
		return mapper.queryAllRoles();
	}
	
	public void addAccs(VAccsInfo accs){
		
		mapper.addAccs(accs);
	}

	public VAccsInfo toupdate(Integer aid){
		return mapper.toupdate(aid);
	}
	
	public void updateAccs(VAccsInfo accs){
		mapper.updateAccs(accs);
	}
	
	public void deleteAccs(Integer aid){
		mapper.deleteAccs(aid);
	}

	public VAccsInfo queryone(String username) {
		return mapper.queryone(username);
	}
	
}

