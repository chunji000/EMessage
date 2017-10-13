package com.tsinghua.esco.xtgl.salary.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tsinghua.esco.base.util.ExcelUtils;
import com.tsinghua.esco.base.vo.VEduSalary;
import com.tsinghua.esco.xtgl.salary.dao.ISalaryDao;

@Controller
@RequestMapping("/salary")
public class SalaryController {
	
	@Autowired
	ISalaryDao salaryDao;
	
	/**
	 * 查询语句
	 * @return
	 */
	@RequestMapping("/queryAll")
	@ResponseBody
	public Object getAll(VEduSalary salary) {
		System.out.println("参数：" + salary);
		List<VEduSalary> result = salaryDao.queryAll(salary);
		return result;
	}
	
	/**
	 * 删除方法
	 * @param id
	 * @return
	 */
	@RequestMapping("/dodelete")
	@ResponseBody
	public Object deleteItem(int id) {
		salaryDao.dodelete(id);
		return id;
	}
	
	@RequestMapping(value="/uploadTemp", method=RequestMethod.POST )
	@ResponseBody
	public String uploadTemplate(@RequestParam("files") MultipartFile files, HttpServletRequest request) {
		//判断文件是否为空
        if (files==null) return null;
        
        //获取服务器路径以便保存文件
		//文件最终被保存至 【 tomcat路径/webapp/项目名称/saveexcel目录】
		String path = request.getSession().
				getServletContext().getRealPath("/")+"saveexcel\\";
		
        //获取文件名
        String name=files.getOriginalFilename();
        
        //进一步判断文件是否为空（即判断其大小是否为0或其名称是否为null）
        long size =files.getSize();
        if (name==null ||("").equals(name) && size==0) return null;
        
        //为防止乱码给定一个新的文件名：
		String nfname=new Date().getTime()+name.substring(name.indexOf("."),name.length());
		System.out.println("上传的文件地址："+path+nfname);
		//创建上传的文件
		File file = new File(path+nfname);
		
		//文件上传
		try {
			files.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        //批量导入。参数：文件名，文件。
        boolean b = batchImport(name, files);
        
		return name;
	}
	
    public boolean batchImport(String name,MultipartFile file){
        boolean b = false;
        //创建处理EXCEL
        ExcelUtils readExcel=new ExcelUtils();
        //解析excel，获取客户信息集合。
        List<VEduSalary> salaryList = readExcel.getExcelInfo(name ,file);

        if(salaryList != null){
            b = true;
        }

        //迭代添加信息
        for(VEduSalary salary:salaryList){
        	salaryDao.saveAdd(salary);
        }
        return b;
    }
}
