package com.tsinghua.esco.base.vo;

import com.tsinghua.esco.base.util.BaseVO;

public class VEduSalary  extends BaseVO {
	private Integer id;             
	private String empId;           
	private String empName;         
	private String deptName;        
	private Double jobSalary;        
	private Double levelSalary;      
	private Double preSalary;        
	private Double healthAllowance;  
	private Double trafficAllowance; 
	private Double houseAllowance;   
	private Double propertyAllowance;
	private Double leftAllowance;    
	private Double preCash;          
	private Double otherAllowance;   
	private Double intaxSalary;      
	private Double totalSalary;      
	private Double yibaoTax;         
	private Double unempTax;         
	private Double houseFundTax;     
	private Double lawTax;           
	private Double appendHouseFund;  
	private Double shouldSalary;     
	private Double personTax;        
	private Double actualSalary;     
	private Double dept;               
	private Double deptGongcheng;     
	private Double deptYingyong;      
	private Double deptJidian;        
	private Double deptJingguan;      
	private Double deptGonggong;      
	private Double deptGongxiao2;     
	private Double deptGongxiao1;     
	private Double deptGongxiaobufa;  
	private Double deptDianda;        
	private Double deptJiapei;        
	private Double deptHouqin;        
	private Double annualBonus;       
	private Double otherCourse;       
	private Double continueTeach;
	private String salaryMonth; //工资月份
	
	public String getSalaryMonth() {
		return salaryMonth;
	}
	public void setSalaryMonth(String salaryMonth) {
		this.salaryMonth = salaryMonth;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public Double getJobSalary() {
		return jobSalary;
	}
	public void setJobSalary(Double jobSalary) {
		this.jobSalary = jobSalary;
	}
	public Double getLevelSalary() {
		return levelSalary;
	}
	public void setLevelSalary(Double levelSalary) {
		this.levelSalary = levelSalary;
	}
	public Double getPreSalary() {
		return preSalary;
	}
	public void setPreSalary(Double preSalary) {
		this.preSalary = preSalary;
	}
	public Double getHealthAllowance() {
		return healthAllowance;
	}
	public void setHealthAllowance(Double healthAllowance) {
		this.healthAllowance = healthAllowance;
	}
	public Double getTrafficAllowance() {
		return trafficAllowance;
	}
	public void setTrafficAllowance(Double trafficAllowance) {
		this.trafficAllowance = trafficAllowance;
	}
	public Double getHouseAllowance() {
		return houseAllowance;
	}
	public void setHouseAllowance(Double houseAllowance) {
		this.houseAllowance = houseAllowance;
	}
	public Double getPropertyAllowance() {
		return propertyAllowance;
	}
	public void setPropertyAllowance(Double propertyAllowance) {
		this.propertyAllowance = propertyAllowance;
	}
	public Double getLeftAllowance() {
		return leftAllowance;
	}
	public void setLeftAllowance(Double leftAllowance) {
		this.leftAllowance = leftAllowance;
	}
	public Double getPreCash() {
		return preCash;
	}
	public void setPreCash(Double preCash) {
		this.preCash = preCash;
	}
	public Double getOtherAllowance() {
		return otherAllowance;
	}
	public void setOtherAllowance(Double otherAllowance) {
		this.otherAllowance = otherAllowance;
	}
	public Double getIntaxSalary() {
		return intaxSalary;
	}
	public void setIntaxSalary(Double intaxSalary) {
		this.intaxSalary = intaxSalary;
	}
	public Double getTotalSalary() {
		return totalSalary;
	}
	public void setTotalSalary(Double totalSalary) {
		this.totalSalary = totalSalary;
	}
	public Double getYibaoTax() {
		return yibaoTax;
	}
	public void setYibaoTax(Double yibaoTax) {
		this.yibaoTax = yibaoTax;
	}
	public Double getUnempTax() {
		return unempTax;
	}
	public void setUnempTax(Double unempTax) {
		this.unempTax = unempTax;
	}
	public Double getHouseFundTax() {
		return houseFundTax;
	}
	public void setHouseFundTax(Double houseFundTax) {
		this.houseFundTax = houseFundTax;
	}
	public Double getLawTax() {
		return lawTax;
	}
	public void setLawTax(Double lawTax) {
		this.lawTax = lawTax;
	}
	public Double getAppendHouseFund() {
		return appendHouseFund;
	}
	public void setAppendHouseFund(Double appendHouseFund) {
		this.appendHouseFund = appendHouseFund;
	}
	public Double getShouldSalary() {
		return shouldSalary;
	}
	public void setShouldSalary(Double shouldSalary) {
		this.shouldSalary = shouldSalary;
	}
	public Double getPersonTax() {
		return personTax;
	}
	public void setPersonTax(Double personTax) {
		this.personTax = personTax;
	}
	public Double getActualSalary() {
		return actualSalary;
	}
	public void setActualSalary(Double actualSalary) {
		this.actualSalary = actualSalary;
	}
	public Double getDept() {
		return dept;
	}
	public void setDept(Double dept) {
		this.dept = dept;
	}
	public Double getDeptGongcheng() {
		return deptGongcheng;
	}
	public void setDeptGongcheng(Double deptGongcheng) {
		this.deptGongcheng = deptGongcheng;
	}
	public Double getDeptYingyong() {
		return deptYingyong;
	}
	public void setDeptYingyong(Double deptYingyong) {
		this.deptYingyong = deptYingyong;
	}
	public Double getDeptJidian() {
		return deptJidian;
	}
	public void setDeptJidian(Double deptJidian) {
		this.deptJidian = deptJidian;
	}
	public Double getDeptJingguan() {
		return deptJingguan;
	}
	public void setDeptJingguan(Double deptJingguan) {
		this.deptJingguan = deptJingguan;
	}
	public Double getDeptGonggong() {
		return deptGonggong;
	}
	public void setDeptGonggong(Double deptGonggong) {
		this.deptGonggong = deptGonggong;
	}
	public Double getDeptGongxiao2() {
		return deptGongxiao2;
	}
	public void setDeptGongxiao2(Double deptGongxiao2) {
		this.deptGongxiao2 = deptGongxiao2;
	}
	public Double getDeptGongxiao1() {
		return deptGongxiao1;
	}
	public void setDeptGongxiao1(Double deptGongxiao1) {
		this.deptGongxiao1 = deptGongxiao1;
	}
	public Double getDeptGongxiaobufa() {
		return deptGongxiaobufa;
	}
	public void setDeptGongxiaobufa(Double deptGongxiaobufa) {
		this.deptGongxiaobufa = deptGongxiaobufa;
	}
	public Double getDeptDianda() {
		return deptDianda;
	}
	public void setDeptDianda(Double deptDianda) {
		this.deptDianda = deptDianda;
	}
	public Double getDeptJiapei() {
		return deptJiapei;
	}
	public void setDeptJiapei(Double deptJiapei) {
		this.deptJiapei = deptJiapei;
	}
	public Double getDeptHouqin() {
		return deptHouqin;
	}
	public void setDeptHouqin(Double deptHouqin) {
		this.deptHouqin = deptHouqin;
	}
	public Double getAnnualBonus() {
		return annualBonus;
	}
	public void setAnnualBonus(Double annualBonus) {
		this.annualBonus = annualBonus;
	}
	public Double getOtherCourse() {
		return otherCourse;
	}
	public void setOtherCourse(Double otherCourse) {
		this.otherCourse = otherCourse;
	}
	public Double getContinueTeach() {
		return continueTeach;
	}
	public void setContinueTeach(Double continueTeach) {
		this.continueTeach = continueTeach;
	}
	@Override
	public String toString() {
		return "VEduSalary [id=" + id + ", empId=" + empId + ", empName=" + empName + ", deptName=" + deptName
				+ ", jobSalary=" + jobSalary + ", levelSalary=" + levelSalary + ", preSalary=" + preSalary
				+ ", healthAllowance=" + healthAllowance + ", trafficAllowance=" + trafficAllowance
				+ ", houseAllowance=" + houseAllowance + ", propertyAllowance=" + propertyAllowance + ", leftAllowance="
				+ leftAllowance + ", preCash=" + preCash + ", otherAllowance=" + otherAllowance + ", intaxSalary="
				+ intaxSalary + ", totalSalary=" + totalSalary + ", yibaoTax=" + yibaoTax + ", unempTax=" + unempTax
				+ ", houseFundTax=" + houseFundTax + ", lawTax=" + lawTax + ", appendHouseFund=" + appendHouseFund
				+ ", shouldSalary=" + shouldSalary + ", personTax=" + personTax + ", actualSalary=" + actualSalary
				+ ", dept=" + dept + ", deptGongcheng=" + deptGongcheng + ", deptYingyong=" + deptYingyong
				+ ", deptJidian=" + deptJidian + ", deptJingguan=" + deptJingguan + ", deptGonggong=" + deptGonggong
				+ ", deptGongxiao2=" + deptGongxiao2 + ", deptGongxiao1=" + deptGongxiao1 + ", deptGongxiaobufa="
				+ deptGongxiaobufa + ", deptDianda=" + deptDianda + ", deptJiapei=" + deptJiapei + ", deptHouqin="
				+ deptHouqin + ", annualBonus=" + annualBonus + ", otherCourse=" + otherCourse + ", continueTeach="
				+ continueTeach + ", salaryMonth=" + salaryMonth + "]";
	}
	
}
