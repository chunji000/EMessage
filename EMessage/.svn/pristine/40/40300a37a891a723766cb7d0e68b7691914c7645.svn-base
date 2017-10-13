package com.tsinghua.esco.xtgl.xsgl.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tsinghua.esco.base.vo.DeptTree;
import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VDeptInfo;
import com.tsinghua.esco.base.vo.VEduStudentInfo;
import com.tsinghua.esco.xtgl.bmgl.dao.IDempDao;
import com.tsinghua.esco.xtgl.xsgl.dao.IStudentDao;

@Controller
@RequestMapping("/stu")
public class EduStudentHandler {
	

	@Autowired
	private IStudentDao studao;
	
	@RequestMapping("/queryAll")
	@ResponseBody
	public Object queryAll(VEduStudentInfo stu){
		List list=studao.queryAll(stu);
		stu.setPage(null);
		List list2=studao.queryAll(stu);
		
		Map map=new HashMap();
		map.put("total", list2.size());
		map.put("rows", list);
		return map;
	}
	@RequestMapping("/saveadd")
	@ResponseBody
	public String saveAdd(VEduStudentInfo stu){
		System.out.println(stu.getOrg_id());
		studao.saveAdd(stu);
		return "success";
	}
	
	@RequestMapping("/saveupdate")
	@ResponseBody
	public String saveUpdate(VEduStudentInfo stu){
		studao.saveUpdate(stu);
		return "success";
	}
	
	
	@RequestMapping("/dodelete")
	@ResponseBody
	public String dodelete(Integer id){
		studao.dodelete(id);
		return "success";
	}
	
	@RequestMapping("/toupdate")
	@ResponseBody
	public Object toupdate(Integer id){
		VEduStudentInfo stu= studao.toupdate(id);
		return stu;
		
	}
	
	
	
	
	public IStudentDao getStudao() {
		return studao;
	}

	public void setStudao(IStudentDao studao) {
		this.studao = studao;
	}

}
