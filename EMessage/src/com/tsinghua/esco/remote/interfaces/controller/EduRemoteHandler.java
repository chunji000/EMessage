package com.tsinghua.esco.remote.interfaces.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tsinghua.esco.base.vo.DeptTree;
import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VDeptInfo;
import com.tsinghua.esco.base.vo.VEduStudentInfo;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.remote.interfaces.dao.IRemoteDao;
import com.tsinghua.esco.xtgl.bmgl.dao.IDempDao;
import com.tsinghua.esco.xtgl.xsgl.dao.IStudentDao;

@Controller
@RequestMapping("/remote")
public class EduRemoteHandler {
	

	@Autowired
	private IRemoteDao remotedao;
	
	/**
	 * 校验老师登录信息，登陆成功则返回老师信息
	 * @param acc
	 * @param req
	 * @param res
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("checkTeacherLogin")
	@ResponseBody
	public Object checkTeacherLogin(VEduTeachersInfo acc) throws Exception{
		return remotedao.checkTeacherLogin(acc);
	}
	/**
	 * 校验学生登录信息，登陆成功则返回老师信息
	 * @param stu
	 * @param req
	 * @param res
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("checkStudentLogin")
	@ResponseBody
	public Object checkStudentLogin(VEduStudentInfo stu) throws Exception{
		return remotedao.checkStudentLogin(stu);
	}
	
	

	public IRemoteDao getRemotedao() {
		return remotedao;
	}

	public void setRemotedao(IRemoteDao remotedao) {
		this.remotedao = remotedao;
	}
}
