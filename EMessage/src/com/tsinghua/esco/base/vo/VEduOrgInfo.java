package com.tsinghua.esco.base.vo;

import com.tsinghua.esco.base.util.BaseVO;

public class VEduOrgInfo extends BaseVO {
	private Integer id;// int(11) NOT NULL AUTO_INCREMENT COMMENT '组织ID',
	private Integer parent_id;// int(11) DEFAULT NULL COMMENT '上级组织结构',
	private String org_name;// varchar(500) NOT NULL COMMENT '组织结构名称',
	private Integer is_use;// int(11) NOT NULL COMMENT '是否删除',
	private String update_date;// timestamp NULL DEFAULT NULL ON 
	private String pname; // -上级部门名称 
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParent_id() {
		return parent_id;
	}
	public void setParent_id(Integer parentId) {
		parent_id = parentId;
	}
	public String getOrg_name() {
		return org_name;
	}
	public void setOrg_name(String orgName) {
		org_name = orgName;
	}
	public Integer getIs_use() {
		return is_use;
	}
	public void setIs_use(Integer isUse) {
		is_use = isUse;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String updateDate) {
		update_date = updateDate;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
}
