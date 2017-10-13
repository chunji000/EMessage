package com.tsinghua.esco.xtgl.yhgl.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tsinghua.esco.xtgl.yhgl.dao.IVAccsDao;
import com.tsinghua.esco.base.vo.VAccsInfo;



@Controller
@RequestMapping("/accs")
public class AccsHandler {
	
	@Autowired
	private IVAccsDao accsdao;
	
	@RequestMapping("/allaccs")
	@ResponseBody
	public Object queryAllAccs(VAccsInfo accs){
		List list1=accsdao.queryAllAccs(accs);
		
		accs.setPage(null);
		List list2=accsdao.queryAllAccs(accs);
		
		Map map=new HashMap();
		map.put("total", list2.size());
		map.put("rows", list1);
		return map;
	}
	
	@RequestMapping("/alldept")
	@ResponseBody
	public Object queryAllDept(){
		List list=accsdao.queryAllDept();
		return list;
	}
	
	@RequestMapping("/allroles")
	@ResponseBody
	public Object queryAllRoles(){
		List lists=accsdao.queryAllRoles();
		return lists;
	}

	@RequestMapping("/addaccs")
	@ResponseBody
	public String addAccs(VAccsInfo accs){
		
			accsdao.addAccs(accs);
		
		return "";
	}
	
	@RequestMapping("/checkname")
	public String queryall(String username,HttpServletResponse res){
		try {
			res.setCharacterEncoding("utf-8");
		String reg="";
		System.out.println(username);
		VAccsInfo accs=accsdao.queryone(username);
			if(accs==null){
		
			}else{
				reg="该用户存在，不能注册";
			}
			PrintWriter out=res.getWriter();
			out.println(reg);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
   
	@RequestMapping("/toupdate")
	@ResponseBody
	public Object toupdate(Integer aid){
		VAccsInfo accs=accsdao.toupdate(aid);
		return accs;
	}
	
	@RequestMapping("/updateaccs")
	@ResponseBody
	public String updateAccs(VAccsInfo accs){
		accsdao.updateAccs(accs);
		return "";
	}
	
	@RequestMapping("/deleteaccs")
	@ResponseBody
	public String deleteAccs(Integer aid){
		accsdao.deleteAccs(aid);
		return "";
	}
	
	@RequestMapping("/selectaccs")
	@ResponseBody
	public Object selectAccs(Integer aid){
		VAccsInfo accs=accsdao.toupdate(aid);
		return accs;
	}

	
	public IVAccsDao getAccsdao() {
		return accsdao;
	}

	public void setAccsdao(IVAccsDao accsdao) {
		this.accsdao = accsdao;
	}
	
	
	

}

