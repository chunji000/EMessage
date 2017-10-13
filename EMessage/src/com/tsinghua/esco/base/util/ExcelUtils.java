package com.tsinghua.esco.base.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.tsinghua.esco.base.vo.VEduSalary;

public class ExcelUtils {

    //总行数
    private int totalRows = 0;
    //总条数
    private int totalCells = 0;
    //错误信息接收器
    private String errorMsg;
    //构造方法
    public ExcelUtils(){}
    //获取总行数
    public int getTotalRows()  { return totalRows;}
    //获取总列数
    public int getTotalCells() {  return totalCells;}
    //获取错误信息
    public String getErrorInfo() { return errorMsg; }

    /**
     * 验证EXCEL文件
     * @param filePath
     * @return
     */
    public boolean validateExcel(String filePath){
        if (filePath == null || !(WDWUtil.isExcel2003(filePath) || WDWUtil.isExcel2007(filePath))){
            errorMsg = "文件名不是excel格式";
            return false;
        }
        return true;
    }

    /**
     * 读EXCEL文件，获取客户信息集合
     * @param
     * @return
     */
    public List<VEduSalary> getExcelInfo(String fileName, MultipartFile Mfile){

        //把spring文件上传的MultipartFile转换成CommonsMultipartFile类型
        CommonsMultipartFile cf= (CommonsMultipartFile)Mfile; //获取本地存储路径
        File file = new  File("D:\\fileupload");
        //创建一个目录 （它的路径名由当前 File 对象指定，包括任一必须的父路径。）
        if (!file.exists()) file.mkdirs();
        //新建一个文件
        File file1 = new File("D:\\fileupload" + new Date().getTime() + ".xlsx");
        //将上传的文件写入新建的文件中
        try {
            cf.getFileItem().write(file1);
        } catch (Exception e) {
            e.printStackTrace();
        }

        //初始化客户信息的集合
        List<VEduSalary> customerList=new ArrayList<VEduSalary>();
        //初始化输入流
        InputStream is = null;
        try{
            //验证文件名是否合格
            if(!validateExcel(fileName)){
                return null;
            }
            //根据文件名判断文件是2003版本还是2007版本
            boolean isExcel2003 = true;
            if(WDWUtil.isExcel2007(fileName)){
                isExcel2003 = false;
            }
            //根据新建的文件实例化输入流
            is = new FileInputStream(file1);
            //根据excel里面的内容读取客户信息
            customerList = getExcelInfo(is, isExcel2003);
            is.close();
        }catch(Exception e){
            e.printStackTrace();
        } finally{
            if(is !=null)
            {
                try{
                    is.close();
                }catch(IOException e){
                    is = null;
                    e.printStackTrace();
                }
            }
        }
        return customerList;
    }
    /**
     * 根据excel里面的内容读取客户信息
     * @param is 输入流
     * @param isExcel2003 excel是2003还是2007版本
     * @return
     * @throws IOException
     */
    public  List<VEduSalary> getExcelInfo(InputStream is,boolean isExcel2003){
        List<VEduSalary> customerList=null;
        try{
            /** 根据版本选择创建Workbook的方式 */
            Workbook wb = null;
            //当excel是2003时
            if(isExcel2003){
                wb = new HSSFWorkbook(is);
            }
            else{//当excel是2007时
                wb = new XSSFWorkbook(is);
            }
            //读取Excel里面客户的信息
            customerList=readExcelValue(wb);
        }
        catch (IOException e)  {
            e.printStackTrace();
        }
        return customerList;
    }
    /**
     * 读取Excel里面客户的信息
     * @param wb
     * @return
     */
    private List<VEduSalary> readExcelValue(Workbook wb){
        //得到第一个shell
        Sheet sheet=wb.getSheetAt(0);

        //得到Excel的行数
        this.totalRows=sheet.getPhysicalNumberOfRows();

        //得到Excel的列数(前提是有行数)
        if(totalRows>=1 && sheet.getRow(0) != null){
            this.totalCells=sheet.getRow(0).getPhysicalNumberOfCells();
        }

        List<VEduSalary> VEduSalaryList=new ArrayList<VEduSalary>();
        VEduSalary salary;
        //循环Excel行数,从第二行开始。标题不入库
        for(int r=1;r<totalRows;r++){
            Row row = sheet.getRow(r);
            if (row == null) continue;
            salary = new VEduSalary();
            try {
                Thread.currentThread().sleep(1);
            }catch (InterruptedException e){
                e.printStackTrace();
            }

            //循环Excel的列
            for(int c = 0; c <this.totalCells; c++){
                Cell cell = row.getCell(c);
                if (null != cell){
                    if(c==0){
//                        salary.setId(Integer.parseInt(cell.getStringCellValue()));//ID编号
                    }else if(c==1){
                    	switch(cell.getCellType()) {
                    	case Cell.CELL_TYPE_NUMERIC:
                    		salary.setEmpId(cell.getNumericCellValue()+"");//员工编号
                    		break;
                    	case Cell.CELL_TYPE_STRING:
                    		salary.setEmpId(cell.getStringCellValue());//员工编号
                    		break;
                    	}
                    }else if(c==2){
                       
                        salary.setEmpName(cell.getStringCellValue());//职员姓名

                    }else if(c==3){
                    	salary.setDeptName(cell.getStringCellValue());//部门名称
                    	
                    }else if(c==4){
                    	
                        salary.setJobSalary(cell.getNumericCellValue());//岗位工资

                    }else if(c==5){
                        salary.setLevelSalary(cell.getNumericCellValue());//薪级工资
                        
                    }else if(c==6){
                        salary.setPreSalary(cell.getNumericCellValue());//预先兑付基本工资
                        
                    }else if(c==7){
                        salary.setHealthAllowance(cell.getNumericCellValue());//卫生津贴

                    }else if(c==8){
                        salary.setTrafficAllowance(cell.getNumericCellValue());//交通补贴

                    }else if(c==9){
                        salary.setHouseAllowance(cell.getNumericCellValue());//住房补贴

                    }else if(c==10){
                        salary.setPropertyAllowance(cell.getNumericCellValue());//物业补贴

                    }else if(c==11){
                        
                        salary.setLeftAllowance(cell.getNumericCellValue());//保留津贴

                    }else if(c==12){

                        salary.setPreCash(cell.getNumericCellValue());//预先兑付绩效

                    }else if(c==13){
                        salary.setDept(cell.getNumericCellValue());//系部

                    }else if(c==14){
                        salary.setDeptGongcheng(cell.getNumericCellValue());//工程系

                    }else if(c==15){
                        salary.setDeptYingyong(cell.getNumericCellValue());//应用系

                    }else if(c==16){
                        salary.setDeptJidian(cell.getNumericCellValue());//机电系

                    }else if(c==17){
                        salary.setDeptJingguan(cell.getNumericCellValue());//经管系

                    }else if(c==18){
                        salary.setDeptGonggong(cell.getNumericCellValue());//公共课部

                    }else if(c==19){
                        salary.setDeptGongxiao2(cell.getNumericCellValue());//工校二

                    }else if(c==20){
                        salary.setDeptGongxiao1(cell.getNumericCellValue());//工校一

                    }else if(c==21){
                        salary.setDeptGongxiaobufa(cell.getNumericCellValue());//工校补发

                    }else if(c==22){
                        salary.setDeptDianda(cell.getNumericCellValue());//电大

                    }else if(c==23){
                        salary.setDeptJiapei(cell.getNumericCellValue());//驾培

                    }else if(c==24){
                        salary.setDeptHouqin(cell.getNumericCellValue());//后勤

                    }else if(c==25){
                        salary.setAnnualBonus(cell.getNumericCellValue());//年终绩效

                    }else if(c==26){
                        salary.setOtherCourse(cell.getNumericCellValue());//其他课时

                    }else if(c==27){
                        salary.setContinueTeach(cell.getNumericCellValue());//继教 

                    }else if(c==28){
                        salary.setOtherAllowance(cell.getNumericCellValue());//补发（扣）及其他补助

                    }else if (c==29){
                        salary.setIntaxSalary(cell.getNumericCellValue());//参与扣税工资

                    }else if (c==30){
                        salary.setTotalSalary(cell.getNumericCellValue());//合计
                        
                    }else if (c==31){
                        salary.setYibaoTax(cell.getNumericCellValue());//扣除医保

                    }else if (c==32){
                        salary.setUnempTax(cell.getNumericCellValue());//扣除失业养老

                    }else if (c==33){
                        salary.setHouseAllowance(cell.getNumericCellValue());//扣公积金

                    }else if (c==34){
                        salary.setLawTax(cell.getNumericCellValue());//扣劳保、房租、水费

                    }else if (c==35){
                        salary.setAppendHouseFund(cell.getNumericCellValue());//补扣公积金、医保

                    }else if (c==36){
                        salary.setShouldSalary(cell.getNumericCellValue());//应发合计

                    }else if (c==37){
                        salary.setPersonTax(cell.getNumericCellValue());//个人所得税

                    }else if (c==38){
                        salary.setActualSalary(cell.getNumericCellValue());//实发合计
                    }else if (c==39){
                        salary.setSalaryMonth(cell.getStringCellValue());//工资月份
                    }

                }
            }
            //添加客户
            VEduSalaryList.add(salary);
        }
        return VEduSalaryList;
    }

}

