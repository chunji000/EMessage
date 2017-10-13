package com.tsinghua.esco.base.vo;

import com.tsinghua.esco.base.util.BaseVO;


//Table: dept	单位部门表/
public class VDeptInfo extends BaseVO {
	private Integer did;// int primary key auto_increment,
	private Integer pdid;// int, --上级部门ID，外键
	private Integer tid;// int, --单位类别ID，外键，申报单位、建设单位，(县/市)牵头部门，(县/市)生态办等
	private Integer bid;// int, --所属区县ID，外键
	private String name;// varchar(30), --部门名称
	private String ress;// varchar(30), --部门地址
	private String tel;// varchar(30), --部门电话
	private String tact;// varchar(30), --办公室联系人
	private String mob;// varchar(30) --联系人电话
	private String lx;
	private String shangjizu;
	private String quxian;
	private Integer pid;
	private String pname;
	private String tname;

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Integer getPdid() {
		return pdid;
	}

	public void setPdid(Integer pdid) {
		this.pdid = pdid;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRess() {
		return ress;
	}

	public void setRess(String ress) {
		this.ress = ress;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTact() {
		return tact;
	}

	public void setTact(String tact) {
		this.tact = tact;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getLx() {
		return lx;
	}

	public void setLx(String lx) {
		this.lx = lx;
	}

	public String getShangjizu() {
		return shangjizu;
	}

	public void setShangjizu(String shangjizu) {
		this.shangjizu = shangjizu;
	}

	public String getQuxian() {
		return quxian;
	}

	public void setQuxian(String quxian) {
		this.quxian = quxian;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

}
