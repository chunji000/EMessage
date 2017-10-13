package com.tsinghua.esco.xtgl.xxgl.mapper;

import java.util.List;

import com.tsinghua.esco.base.vo.VEduFeedback;
import com.tsinghua.esco.base.vo.VEduFile;
import com.tsinghua.esco.base.vo.VEduMessageInfo;
import com.tsinghua.esco.base.vo.VEduStudentInfo;

public interface EduMessageMapper {

	public List queryAll(VEduMessageInfo msg) ;
	public List queryAllByPushuser(String pushuser);
	public void saveAdd(VEduMessageInfo msg);
	public void saveAddRecord(VEduMessageInfo msg);
	public void saveUpdate(VEduMessageInfo msg);	
	public void dodelete(int id);
	public VEduMessageInfo toupdate(Integer id);
	public VEduMessageInfo dopush(Integer id);
	public void updateFiles(VEduFile fids);
	public void dofeed(VEduFeedback vfb);
	public List queryFilelistByMsgid(String msgid);
}
