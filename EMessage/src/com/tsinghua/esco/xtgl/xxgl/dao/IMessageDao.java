package com.tsinghua.esco.xtgl.xxgl.dao;

import java.util.List;

import com.tsinghua.esco.base.vo.VEduFeedback;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduMessageInfo;

public interface IMessageDao {

	public List queryAll(VEduMessageInfo mes);
	
	public List queryAllByPushuser(String pushuser);
	
	public void saveAdd(VEduMessageInfo mes);
	
	public void saveAddRecord(VEduMessageInfo mes);

	public void saveUpdate(VEduMessageInfo mes);
	
	public void dodelete(int id);

	public VEduMessageInfo toupdate(Integer id);
	
	public VEduMessageInfo dopush(Integer id);

	public void updateFiles(VEduFile vf);

	public void dofeed(VEduFeedback vfb);

	public List queryFilelistByMsgid(String msgid);
	
	
	
	
}
