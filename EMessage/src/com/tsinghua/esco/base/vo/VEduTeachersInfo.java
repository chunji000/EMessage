package com.tsinghua.esco.base.vo;

import com.tsinghua.esco.base.util.BaseVO;

public class VEduTeachersInfo extends BaseVO{
	
	private Integer id;// int(11) NOT NULL AUTO_INCREMENT,
	private String emp_no;// varchar(50) DEFAULT NULL COMMENT '工号',
	private String name;// varchar(50) DEFAULT NULL COMMENT '姓名',
	private String password;// varchar(50) DEFAULT NULL COMMENT '密码',
	private String sex;// char(2) DEFAULT NULL COMMENT '性别',
	private String birthday;// date DEFAULT NULL COMMENT '出生日期',
	private String degree;// varchar(50) DEFAULT NULL COMMENT '学历',
	private String  position;// varchar(50) DEFAULT NULL COMMENT '职称',
	private String job;// varchar(50) DEFAULT NULL COMMENT '岗位',
	private String is_employee;// char(50) DEFAULT NULL COMMENT '是否在岗',
	private String phone_number;// varchar(50) DEFAULT NULL COMMENT '联系电话',
	private String email;// varchar(50) DEFAULT NULL COMMENT '电子邮件',
	private Integer  org_id;// int(11) DEFAULT NULL COMMENT '组织机构ID',
	private String  update_date;// timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	private Integer rid ;// 角色id
	private String oname;
	private String rname;
	
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(String empNo) {
		emp_no = empNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getIs_employee() {
		return is_employee;
	}
	public void setIs_employee(String isEmployee) {
		is_employee = isEmployee;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phoneNumber) {
		phone_number = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String updateDate) {
		update_date = updateDate;
	}
	public Integer getOrg_id() {
		return org_id;
	}
	public void setOrg_id(Integer orgId) {
		org_id = orgId;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}


}
