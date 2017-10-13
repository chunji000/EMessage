package com.tsinghua.esco.xtgl.jsgl.controller;

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
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.xtgl.jsgl.dao.ITeacherDao;

@Controller
@RequestMapping("/teacher")
public class EduTeacherHandler {
	

	@Autowired
	private ITeacherDao teachdao;
	
	@RequestMapping("/queryAll")
	@ResponseBody
	public Object queryAll(VEduTeachersInfo stu){
		List list=teachdao.queryAll(stu);
		stu.setPage(null);
		List list2=teachdao.queryAll(stu);
		
		Map map=new HashMap();
		map.put("total", list2.size());
		map.put("rows", list);
		return map;
	}
	@RequestMapping("/saveadd")
	@ResponseBody
	public String saveAdd(VEduTeachersInfo stu){
		System.out.println(stu.getOrg_id());
		teachdao.saveAdd(stu);
		return "success";
	}
	
	@RequestMapping("/saveupdate")
	@ResponseBody
	public String saveUpdate(VEduTeachersInfo stu){
		teachdao.saveUpdate(stu);
		return "success";
	}
	
	
	@RequestMapping("/dodelete")
	@ResponseBody
	public String dodelete(Integer id){
		teachdao.dodelete(id);
		return "success";
	}
	
	@RequestMapping("/toupdate")
	@ResponseBody
	public Object toupdate(Integer id){
		VEduTeachersInfo stu= teachdao.toupdate(id);
		return stu;
		
	}
	
	
	
	
	public ITeacherDao getTeachdao() {
		return teachdao;
	}

	public void setTeachdao(ITeacherDao teachdao) {
		this.teachdao = teachdao;
	}

}
