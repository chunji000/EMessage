package com.tsinghua.esco.base.vo;

import com.tsinghua.esco.base.util.BaseVO;


//Table: accs	账户表
public class VAccsInfo extends BaseVO {
	private Integer aid;// int primary key auto_increment,
	private Integer did;// int, --部门ID，外键
	private Integer rid;// int, --角色ID,外键
	private String username;// varchar(20),--登录名
	private String password;// varchar(20),--登录密码
	private String sex;// varchar(10), --性别
	private String tel;// varchar(20), --联系人电话
	private Integer stat;// int, --状态(1启用、0禁用)
	private String job;// varchar(20), --职位
	private String name;// varchar(20), --真实姓名(联系人姓名)
	private String em;// varchar(30), --联系人EAMIL
	private String des;// varchar(100) --描述*/
	private String dname;
	private Integer num;

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Integer getStat() {
		return stat;
	}

	public void setStat(Integer stat) {
		this.stat = stat;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEm() {
		return em;
	}

	public void setEm(String em) {
		this.em = em;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

}
