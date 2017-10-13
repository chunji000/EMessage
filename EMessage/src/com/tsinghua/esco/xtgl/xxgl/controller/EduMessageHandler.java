package com.tsinghua.esco.xtgl.xxgl.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tsinghua.esco.base.vo.DeptTree;
import com.tsinghua.esco.base.vo.VAccsInfo;
import com.tsinghua.esco.base.vo.VDeptInfo;
import com.tsinghua.esco.base.vo.VEduFeedback;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduMessageInfo;
import com.tsinghua.esco.base.vo.VEduStudentInfo;
import com.tsinghua.esco.base.vo.VEduTeachersInfo;
import com.tsinghua.esco.xtgl.bmgl.dao.IDempDao;
import com.tsinghua.esco.xtgl.xsgl.dao.IStudentDao;
import com.tsinghua.esco.xtgl.xxgl.dao.IMessageDao;
import com.tsinghua.esco.xtgl.xxgl.dao.JpushClientUtil;

@Controller
@RequestMapping("/msg")
public class EduMessageHandler {

	@Autowired
	private IMessageDao msgdao;

	@RequestMapping("/queryAll")
	@ResponseBody
	public Object queryAll(VEduMessageInfo msg, HttpServletRequest req) {
		VEduTeachersInfo acc = (VEduTeachersInfo) req.getSession()
				.getAttribute("acc");
		msg.setPush_user(acc.getId().toString());
		List list = msgdao.queryAll(msg);
		msg.setPage(null);
		List list2 = msgdao.queryAll(msg);

		Map map = new HashMap();
		map.put("total", list2.size());
		map.put("rows", list);
		return map;
	}

	@RequestMapping("/queryAllByPushuser")
	@ResponseBody
	public Object queryAllByPushuser(String pushuser) {
		List list = msgdao.queryAllByPushuser(pushuser);
		return list;
	}
	@RequestMapping("/queryFilelistByMsgid")
	@ResponseBody
	public Object queryFilelistByMsgid(String msgid) {
		List list = msgdao.queryFilelistByMsgid(msgid);
		return list;
	}
	@RequestMapping("/saveAdd")
	@ResponseBody
	public String saveAdd(VEduMessageInfo msg, HttpServletRequest req) {
		VEduTeachersInfo acc = (VEduTeachersInfo) req.getSession()
				.getAttribute("acc");
		msg.setPush_user(acc.getId().toString());
		msgdao.saveAdd(msg);
		// saveAddRecord(msg);
		String[] fids = msg.getFids().split(",");
		VEduFile vf = new VEduFile();
		vf.setMsg_id(msg.getId());
		for (String s : fids) {
			vf.setFid(Integer.parseInt(s));
			updateFiles(vf);
		}
		return "success";
	}

	@RequestMapping("/saveAddRecord")
	@ResponseBody
	public void saveAddRecord(VEduMessageInfo msg) {
		msgdao.saveAddRecord(msg);
	}

	@RequestMapping("/updateFiles")
	@ResponseBody
	public void updateFiles(VEduFile vf) {
		msgdao.updateFiles(vf);
	}

	@RequestMapping("/saveupdate")
	@ResponseBody
	public String saveUpdate(VEduMessageInfo msg) {
		msgdao.saveUpdate(msg);
		return "success";
	}

	@RequestMapping("/dodelete")
	@ResponseBody
	public String dodelete(Integer id) {
		msgdao.dodelete(id);
		return "success";
	}

	@RequestMapping("/toupdate")
	@ResponseBody
	public Object toupdate(Integer id) {
		VEduMessageInfo msg = msgdao.toupdate(id);
		return msg;

	}
	
	
	@RequestMapping("/dofeed")
	@ResponseBody
	public Integer dofeed(VEduFeedback vfb) {
		 msgdao.dofeed(vfb);	
		 String[] fids = vfb.getFids().split(",");
			VEduFile vf = new VEduFile();
			vf.setFeed_id(vfb.getId());
			for (String s : fids) {
				vf.setFid(Integer.parseInt(s));
				updateFiles(vf);
			}
		 return vfb.getId();
	}

	@RequestMapping("/dopush")
	@ResponseBody
	public void dopush(Integer id) {
		VEduMessageInfo message = msgdao.dopush(id);
		switch (message.getRole_id()) {
		case 0:
			JpushClientUtil.sendToAllAndroid("消息", message.getPush_title(),
					message.getPush_content(), "");
			break;
		case 2:
			JpushClientUtil.sendAndroidMessageWithAlias("teacher", "消息",
					message.getPush_title(), message.getPush_content(), "");
			break;
		case 3:
			JpushClientUtil.sendAndroidMessageWithAlias("student", "消息",
					message.getPush_title(), message.getPush_content(), "");
			break;
		}
	}

	public IMessageDao getStudao() {
		return msgdao;
	}

	public void setStudao(IMessageDao msgdao) {
		this.msgdao = msgdao;
	}

}
