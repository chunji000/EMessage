package com.tsinghua.esco.xtgl.xxgl.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tsinghua.esco.base.vo.VEduFeedback;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduMessageInfo;
import com.tsinghua.esco.xtgl.xxgl.mapper.EduMessageMapper;

@Repository("msgdao")
public class MessageDaoImp implements IMessageDao{

	@Autowired
	private EduMessageMapper mapper;
	
	public List queryAll(VEduMessageInfo msg) {
		return mapper.queryAll(msg);
	}

	public void saveAdd(VEduMessageInfo msg) {
		mapper.saveAdd(msg);
	}

	public void saveUpdate(VEduMessageInfo msg) {
		mapper.saveUpdate(msg);
	}
	
	public void dodelete(int id){
		mapper.dodelete(id);
	}

	public VEduMessageInfo toupdate(Integer id) {
		return mapper.toupdate(id);
	}
	public VEduMessageInfo dopush(Integer id) {
		return mapper.dopush(id);
	}

	public List queryAllByPushuser(String pushuser) {
		return mapper.queryAllByPushuser(pushuser);
	}

	public void saveAddRecord(VEduMessageInfo msg) {		
		mapper.saveAddRecord(msg);
	}

	public void updateFiles(VEduFile fids) {
		mapper.updateFiles(fids);		
	}

	public void dofeed(VEduFeedback vfb) {
		mapper.dofeed(vfb);		
	}

	public List queryFilelistByMsgid(String msgid) {
		// TODO Auto-generated method stub
		return mapper.queryFilelistByMsgid(msgid);
	}
}
