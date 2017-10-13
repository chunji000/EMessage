package com.tsinghua.esco.base.vo;

import java.util.Date;

import com.tsinghua.esco.base.util.BaseVO;

public class VEduMessageInfo extends BaseVO {
	private Integer id;// int(11) NOT NULL AUTO_INCREMENT,
	private String push_date;// timestamp NULL DEFAULT NULL COMMENT '推送时间',
	private String push_title;// varchar(500) DEFAULT NULL COMMENT '推送标题',
	private String push_content;// varchar(500) DEFAULT NULL COMMENT '推送内容',
	private String push_to;// varchar(500) DEFAULT NULL COMMENT '推送给谁',
	private String attache_file;// varchar(5000) DEFAULT NULL COMMENT
								// '附件文件（如有多个文件路径用''；''分割）',
	private String attache_suffix;// varchar(500) DEFAULT NULL COMMENT
									// '附件后缀（如有多个文件后缀用''；''分割）',
	private String is_feedback;// char(50) DEFAULT NULL COMMENT '是否需要回复',
	private String push_user;// char(50) DEFAULT NULL COMMENT '推送人',
	private Integer push_status;// char(50) DEFAULT NULL COMMENT '推送状态( 1 = 已推送
								// ， 2 = 推送失败 , 0 = 未推送）'
	private String user;
	private String to;
	private Integer  org_id;
	private Integer role_id;
	private String fids;
	
	
	public String getFids() {
		return fids;
	}
	public void setFids(String fids) {
		this.fids = fids;
	}
	public String getIs_feedback() {
		return is_feedback==null?"0":"1";
	}
	public void setIs_feedback(String is_feedback) {		
		this.is_feedback = is_feedback;
	}
	public Integer getOrg_id() {
		return org_id;
	}
	public void setOrg_id(Integer org_id) {
		this.org_id = org_id;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPush_date() {
		if(push_date==null){
			return new Date().toLocaleString();
		}{
		return this.push_date;
		}
	}

	public void setPush_date(String push_date) {
		if(push_date==null){
			this.push_date =new Date().toLocaleString();
		}{
		this.push_date = push_date;
		}
	}

	public String getPush_title() {
		return push_title;
	}

	public void setPush_title(String push_title) {
		this.push_title = push_title;
	}

	public String getPush_content() {
		return push_content;
	}

	public void setPush_content(String push_content) {
		this.push_content = push_content;
	}

	public String getPush_to() {
		return push_to;
	}

	public void setPush_to(String push_to) {
		this.push_to = push_to;
	}

	public String getAttache_file() {
		return attache_file;
	}

	public void setAttache_file(String attache_file) {
		this.attache_file = attache_file;
	}

	public String getAttache_suffix() {
		return attache_suffix;
	}

	public void setAttache_suffix(String attache_suffix) {
		this.attache_suffix = attache_suffix;
	}


	public String getPush_user() {
		return push_user;
	}

	public void setPush_user(String push_user) {
		this.push_user = push_user;
	}

	public Integer getPush_status() {
		return push_status;
	}

	public void setPush_status(Integer push_status) {
		this.push_status = push_status;
	}

	public VEduMessageInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VEduMessageInfo(Integer id, String push_date, String push_title,
			String push_content, String push_to, String attache_file,
			String attache_suffix, String is_feedback, String push_user,
			Integer push_status,String user,String to,Integer org_id,Integer role_id,String fids) {
		super();
		this.id = id;
		this.push_date = push_date;
		this.push_title = push_title;
		this.push_content = push_content;
		this.push_to = push_to;
		this.attache_file = attache_file;
		this.attache_suffix = attache_suffix;
		this.is_feedback = is_feedback==null?"0":"1";
		this.push_user = push_user;
		this.push_status = push_status;
		this.user=user;
		this.to=to;
		this.org_id=org_id;
		this.role_id=role_id;
		this.fids=fids;
	}

}
