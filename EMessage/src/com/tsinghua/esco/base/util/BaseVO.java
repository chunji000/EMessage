package com.tsinghua.esco.base.util;

public class BaseVO {
	private Integer page;//当前第几页
	private Integer rows;//每页显示多少条数据
	private Integer startnum;//从第几条开始
	
	
	public Integer getStartnum() {
		if(this.page==null)this.page=1;//默认第1页
		if(this.rows==null) this.rows=10;//默认一页显示10条数据
		startnum = ((this.page-1)*this.rows);
		return startnum;
	}
	
	public void setStartnum(Integer startnum) {
		this.startnum = startnum;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
}
