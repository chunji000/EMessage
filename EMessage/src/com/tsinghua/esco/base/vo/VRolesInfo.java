package com.tsinghua.esco.base.vo;

import com.tsinghua.esco.base.util.BaseVO;


//Table: roles	角色表 
public class VRolesInfo extends BaseVO{
private Integer rid; 
private String 	 name ;//varchar(30),	--角色名称
private String 		des ;//varchar(100)	--描述
private Integer fid;//权限表外键




public Integer getFid() {
	return fid;
}
public void setFid(Integer fid) {
	this.fid = fid;
}
public Integer getRid() {
	return rid;
}
public void setRid(Integer rid) {
	this.rid = rid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDes() {
	return des;
}
public void setDes(String des) {
	this.des = des;
}


}
