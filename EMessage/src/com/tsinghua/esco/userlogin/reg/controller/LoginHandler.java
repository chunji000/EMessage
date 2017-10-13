package com.tsinghua.esco.userlogin.reg.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tsinghua.esco.userlogin.reg.dao.ILoginDao;
import com.tsinghua.esco.userlogin.reg.vo.VLeftTreeInfo;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.base.vo.VRolesInfo;

@Controller
@RequestMapping("/login")
public class LoginHandler {
	@Autowired
	private ILoginDao logindao;
	
	
	@RequestMapping("findReg")
	public String findReg(VEduTeachersInfo acc,HttpServletRequest req,HttpServletResponse res) throws Exception{
		HttpSession session=req.getSession();
		acc=logindao.findReg(acc);
		if(acc==null){
			res.sendRedirect("../index.jsp");
		}else{
			session.setAttribute("acc", acc);
			//当前登录人所属部门
			///VDeptInfo dept=logindao.quaryUserDept(acc.getDid());
			//session.setAttribute("dept", dept);
			res.sendRedirect("../jsp/index/main.jsp");
		}
		return null;
	}
	
	//根据权限显示左侧菜单
	@RequestMapping("/queryallqx")
	@ResponseBody
	public Object querysLeftTree(VRolesInfo role){
		role.setFid(0);
		List list = logindao.querysAllTree(role);
		loadsTree(list,role);
		return list;
	}
	
	private void loadsTree(List<VLeftTreeInfo> list,VRolesInfo role){
		for(VLeftTreeInfo tr:list){
			//得到 子节点
			role.setFid(tr.getId());
			List children= logindao.querysAllTree(role);
			tr.setChildren(children);
			if(children.size()>0){
				tr.setChildren(children);
				//递归加载整棵树形节点
				loadsTree(children,role);
		    }
		}
	}
	

	//文件上传
	@RequestMapping("/uploadfiles")
	public Object fileUpload(MultipartFile files,HttpServletRequest request){
		System.out.println("上传附件~~~~~");
		int fid=-1;//新附件名称
		try {
			//获取服务器路径以便保存文件
			//文件最终被保存至 【 tomcat路径/webapp/项目名称/saveifle目录】
			String path = request.getSession().
					getServletContext().getRealPath("/")+"savefile\\";
			//得到上传的文件名称
			String fname = files.getOriginalFilename();
			
			//为防止乱码给定一个新的文件名：
			String nfname=new Date().getTime()+fname.substring(fname.indexOf("."),fname.length());
			System.out.println("上传的文件地址："+path+nfname);
			//创建上传的文件
			File file = new File(path+nfname);
			
			//文件上传
			files.transferTo(file);
			/**********上传成功后将上传的文件信息写入到数据库***************/
			VEduFile vpf=new VEduFile();
			vpf.setFsize(new Long(files.getSize()).intValue());
			System.out.println("---------文件路径:"+path+nfname);
			vpf.setFpath(path+nfname);
			vpf.setFname(fname);
			logindao.saveFile(vpf);
			fid = vpf.getFid();
			System.out.println("附件编号:"+fid);
			
		} catch (Exception e) {
			e.printStackTrace();
			return "errors";
		}
		return "@"+fid+"@";
	}
	
	//文件下载
	@RequestMapping("/fileDown/{fid}")
	@ResponseBody
	public Object fileDown(@PathVariable("fid")Integer fid,HttpServletResponse response){
		try {
			VEduFile vpf=logindao.fileDown(fid);
			String fileName = vpf.getFname();
			FileInputStream  fis  = new FileInputStream(vpf.getFpath());
			fileName = URLEncoder.encode(fileName, "UTF-8");
			response.reset();
			byte b [] = new byte[vpf.getFsize()];
			fis.read(b);
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
			response.addHeader("Content-Length", "" + b.length);
			response.setContentType("application/octet-stream;charset=UTF-8");
			OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
			outputStream.write(b);
			outputStream.flush();
			outputStream.close();
			fis.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
