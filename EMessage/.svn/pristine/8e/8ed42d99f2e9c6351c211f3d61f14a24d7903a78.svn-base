package com.tsinghua.esco.xtgl.qxgl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VEduRoleInfo;
import com.tsinghua.esco.base.vo.VRoles_funsInfo;

import com.tsinghua.esco.xtgl.qxgl.dao.IRolesDao;
import com.tsinghua.esco.xtgl.qxgl.vo.TreeInfo;


@Controller
@RequestMapping("/qxgl")
public class RolesHandel {
	
    @Autowired
	private IRolesDao redao;
	
    @RequestMapping("/queryjs")
	@ResponseBody
	public Object queryjs(VEduRoleInfo role){
		List list=redao.queryrelos(role);
	    role.setPage(null);
		List list2=redao.queryrelos(role);
		Map map=new HashMap();
		map.put("total", list2.size());
		map.put("rows",list);
		return map;
	}
    
    //--查询正在使用的角色，给新增教师和学生时使用
    @RequestMapping("/queryUseRole")
	@ResponseBody
	public Object queryUseRole(VEduRoleInfo role){
	    role.setPage(null);
		List list2=redao.queryuserelos(role);
		return list2;
	}
	
	@RequestMapping("/queryqx")
	@ResponseBody
	public Object queryqx(){
		List list=redao.queryfuns(0);
		loadTree(list);
		return list;
	}
	private void loadTree(List<TreeInfo> list){
		List children;
		for(TreeInfo tr:list){
			children = redao.queryfuns(tr.getId());
			tr.setChildren(children);
		}
	}
	
	@RequestMapping("/delsena")
	@ResponseBody
	public Object delsena(Integer sid){
		redao.deletesena(sid);
		return "";
	};
	@RequestMapping("/queryqh")
    @ResponseBody
    public Object queryqh(){
		List list=redao.queryssqh();
		return list;
	}
	@RequestMapping("/savefus")
	@ResponseBody
	public Object savefus(String role_name,Integer is_use,String nx){
		System.out.println(nx);
		VEduRoleInfo roles=new VEduRoleInfo();
		roles.setRole_name(role_name);
		roles.setIs_use(is_use);
		//新增角色
		roles=redao.saveroles(roles);
		/*//新增菜单权限部分
		//Integer rid=roles.getRid();
		String[] newnx=nx.split(",");
		for (int i = 0; i < newnx.length; i++) {
			VRoles_funsInfo rf=new VRoles_funsInfo();
			rf.setFid(Integer.parseInt(newnx[i]));
			rf.setRid(roles.getId());
			redao.saverf(rf);
		}*/
		return "success";
	}
	
	@RequestMapping("/dodel")
	@ResponseBody
	public Object dodel(Integer rid){
		redao.delroles(rid);
		//删除菜单权限
		//redao.delrf(rid);
		return "success";
	}
	@RequestMapping("/vup")
	public String vup(Integer id,Map map){
		VEduRoleInfo role=redao.toupdate(id);
		map.put("role", role);
		return "/jsp/xtgl/jsgl/roleupdate";
	}
	
	@RequestMapping("/updatemenu")
	@ResponseBody
	public Object  updatemenu(VEduRoleInfo role){
		//role.setFid(0);
		List list=redao.queryupdmenu(role);
		loadupdmenu(list,role);
		return list;
	}
	private void loadupdmenu(List<TreeInfo> list,VEduRoleInfo role){
		 for(TreeInfo dt:list){
			 //得到子节点
			// role.setFid(dt.getId());
			 List children=redao.queryupdmenu(role);
			 if(children.size()>0){
				 dt.setChildren(children);
				 //递归加载整棵树形节点
				 loadupdmenu(children,role);
			 }
		 }
	} 
	@RequestMapping("/saveupd")
	public String saveupd(VEduRoleInfo role,String qx){
		try {
			
			redao.saveupds(role);
			/*修改权限
			redao.delrf(rid);
			String[] newnx=qx.split(",");
			for (int i = 0; i < newnx.length; i++) {
				VRoles_funsInfo rf=new VRoles_funsInfo();
				rf.setFid(Integer.parseInt(newnx[i])); 
				rf.setRid(rid);
				redao.saverf(rf);
			}
			*/
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return "/xtgl/xitongguanli/qxgl";
	}
	
}
