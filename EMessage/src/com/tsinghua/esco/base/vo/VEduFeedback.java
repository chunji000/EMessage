package com.tsinghua.esco.base.vo;

public class VEduFeedback {
	private Integer id;
	private Integer push_id;
	private Integer teach_id;
	private Integer stu_id;
	private String fd_date;
	private String fd_content;
	private String fd_attache_path;
	private String fd_attache_suffix;
	private String fids;
	
	public String getFids() {
		return fids;
	}
	public void setFids(String fids) {
		this.fids = fids;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPush_id() {
		return push_id;
	}
	public void setPush_id(Integer push_id) {
		this.push_id = push_id;
	}
	public Integer getTeach_id() {
		return teach_id;
	}
	public void setTeach_id(Integer teach_id) {
		this.teach_id = teach_id;
	}
	public Integer getStu_id() {
		return stu_id;
	}
	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}
	public String getFd_date() {
		return fd_date;
	}
	public void setFd_date(String fd_date) {
		this.fd_date = fd_date;
	}
	public String getFd_content() {
		return fd_content;
	}
	public void setFd_content(String fd_content) {
		this.fd_content = fd_content;
	}
	public String getFd_attache_path() {
		return fd_attache_path;
	}
	public void setFd_attache_path(String fd_attache_path) {
		this.fd_attache_path = fd_attache_path;
	}
	public String getFd_attache_suffix() {
		return fd_attache_suffix;
	}
	public void setFd_attache_suffix(String fd_attache_suffix) {
		this.fd_attache_suffix = fd_attache_suffix;
	}
	
}
