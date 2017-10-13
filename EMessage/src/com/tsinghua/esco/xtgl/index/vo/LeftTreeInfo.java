package com.tsinghua.esco.xtgl.index.vo;

import java.util.List;

public class LeftTreeInfo {
	private Integer id;//: 绑定到节点的标识值. 
	private String text;//:显示文本. 
	private String iconCls;//: 显示icon的css样式. 
	private String state;//;//: 节点状态, 'open' 或者 'closed'.
	private String attributes;
	private List children;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public List getChildren() {
		return children;
	}
	public void setChildren(List children) {
		this.children = children;
	}
	public String getAttributes() {
		return attributes;
	}
	public void setAttributes(String attributes) {
		if(attributes!=null&&!attributes.equals("")){
			attributes="{'url':'"+attributes+"'}";
			this.attributes = attributes;
		}
	}
	
}
