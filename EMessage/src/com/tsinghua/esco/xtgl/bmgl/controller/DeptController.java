package com.tsinghua.esco.xtgl.bmgl.controller;


import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.tsinghua.esco.xtgl.bmgl.dao.IDempDao;
import com.tsinghua.esco.base.vo.DeptTree;
import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VDeptInfo;
import com.tsinghua.esco.base.vo.VEduOrgInfo;



@Controller
@RequestMapping("/dept")
public class DeptController {
	
	@Autowired
	private IDempDao deptdao;
	
	@RequestMapping("/alldept")
	@ResponseBody
	public Object queryAllDept(VEduOrgInfo dept){
		List list=deptdao.queryAllDept(dept);
		dept.setPage(null);
		List list2=deptdao.queryAllDept(dept);
		
		Map map=new HashMap();
		map.put("total", list2.size());
		map.put("rows", list);
		return map;
	}
	
	@RequestMapping("/selectDept")
	@ResponseBody
	public Object selectDept(Integer did){
		
		VDeptInfo dept=deptdao.selecDept(did);
		return dept;
	}
	
	@RequestMapping("/qalldept")
	@ResponseBody
	public Object queryDept(){
		List list=deptdao.queryDept(0);
		loadDeptTree(list);
		
		DeptTree dt = new DeptTree();
		dt.setText("");
		list.add(dt);
		
		return list;
	}

	
	private void loadDeptTree(List<DeptTree> list) {
		for(DeptTree dt:list){
			//得到 子节点
			List children= deptdao.queryDept(Integer.parseInt(dt.getId()));
			if(children!=null){
				if(children.size()>0){
					dt.setState("open");
					dt.setChildren(children);
					//递归加载整棵树形节点
					loadDeptTree(children);
				}
			}
		}		
	}
	
	
	
	@RequestMapping("/qallteacher")
	@ResponseBody
	public Object queryAllTeacher(){
		List list=deptdao.queryDeptATeacher(0);
		loadDeptTeacherTree(list);
		DeptTree dt = new DeptTree();
		dt.setText("");
		list.add(dt);
		return list;
	}
	
	
	private void loadDeptTeacherTree(List<DeptTree> list) {
		for(DeptTree dt:list){
			String id = dt.getId();
			if((id.indexOf("t")>-1)){//只加载不是教师的数据
				id = id.substring(1,id.length());
				List children= deptdao.queryDeptATeacher(Integer.parseInt(id));
				if(children!=null){
					if(children.size()>0){
						dt.setState("open");
						dt.setChildren(children);
						//递归加载整棵树形节点
						loadDeptTeacherTree(children);
					}
				}
			}		
		}
	}
	
	

	@RequestMapping("/queryAllBase1")
	@ResponseBody
	public Object queryAllBase1(){
	
		List list=deptdao.queryAllBase(11);
		return list;
	}
	
	@RequestMapping("/queryAllBase2")
	@ResponseBody
	public Object queryAllBase2(){
		List list=deptdao.queryAllBase(3);
		
		return list;
	}
	
	
	@RequestMapping("/adddept")
	@ResponseBody
	public String addDept(VEduOrgInfo dept){
		deptdao.addDept(dept);
		return "success";
	}
	
	@RequestMapping("/deleteDept")
	@ResponseBody
	public Object deleteDept(Integer did,HttpServletResponse res){
		try {
			deptdao.deleteDept(did);
			
//			res.setCharacterEncoding("utf-8");
//			String str="";
//		   VAccsInfo accs=deptdao.findAccs(did);
//			System.out.println("---num"+accs.getNum());
//			if(accs.getNum()==0){
//				str="可以删除";
//				deptdao.deleteDept(did);
//			}else{
//				str="该部门下有用户，不能删除";
//				}
//			PrintWriter out=res.getWriter();
//			out.println(str);
//			out.flush();
//			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
		
	}
	
	@RequestMapping("/toupdate")
	@ResponseBody
	public Object toupdate(Integer did){
		VEduOrgInfo dept= deptdao.toupdate(did);
		return dept;
		
	}
	
	@RequestMapping("/updatedept")
	@ResponseBody
	public String updateDept(VEduOrgInfo dept){
		deptdao.updateDept(dept);
		return "success";
		
	}
	

	public IDempDao getDeptdao() {
		return deptdao;
	}

	public void setDeptdao(IDempDao deptdao) {
		this.deptdao = deptdao;
	}
	
	
	

}

