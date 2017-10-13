package com.tsinghua.esco.base.listener;

import java.io.File;

import javax.servlet.ServletContextEvent;

import org.springframework.web.context.ContextLoaderListener;


/**.   
*    
* 项目名称：operation   
* 类名称：ApplicationListener   
* 类描述：   项目启动时 进行一些操作和设置。
* 创建人：lk   
* 创建时间：2014-6-23 上午10:11:03   
* 修改人：lk   
* 修改时间：2014-6-23 上午10:11:03   
* 修改备注：   
* @version    
*    
*/ 
public class ApplicationListener extends ContextLoaderListener {
	
	public void contextDestroyed(ServletContextEvent sce) {} 
	
	public void contextInitialized(ServletContextEvent sce) {   
  
		     String webAppRootKey = sce.getServletContext().getRealPath("/");  

		     StringBuffer strBuff  = new StringBuffer();
		     String[] webApplist  = webAppRootKey.split("\\\\");
		     for(int i=0;i<webApplist.length-1;i++){
		    	 strBuff.append(webApplist[i]);
		    	 strBuff.append(File.separator);
		     }
		     
		     System.setProperty("configs.root" , webAppRootKey); //项目路径
		     System.setProperty("servlet.root" , strBuff.toString());//服务器路径
		     
		     System.out.println("路径设置>>> 项目:"+System.getProperty("configs.root")+" 服务器:"+System.getProperty("servlet.root"));   
	}  
}
