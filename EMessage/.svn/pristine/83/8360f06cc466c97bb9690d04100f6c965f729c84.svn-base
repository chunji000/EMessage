package com.tsinghua.esco.xtgl.index.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tsinghua.esco.xtgl.index.dao.ILeftTreeDao;
import com.tsinghua.esco.xtgl.index.vo.LeftTreeInfo;

@Controller
@RequestMapping("/lefttree")
public class LeftTreeHandler {
	
	@Autowired
	private ILeftTreeDao treedao;

	@RequestMapping("/queryTree")
	@ResponseBody
	public Object queryLeftTree(){
		List list = treedao.queryAllTree(0);
		loadTree(list);
		return list;
	}
	
	private void loadTree(List<LeftTreeInfo> list){
		List children;
		for(LeftTreeInfo tr:list){
			children = treedao.queryAllTree(tr.getId());
			tr.setChildren(children);
		}
	}
	
	
	
	
	
	
	
	
}
