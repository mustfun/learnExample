package com.dzy.excel;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import java.io.File;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/5/27
 * @since 1.0
 */
public class ReadFromExcel  {

    private StringBuffer columName;
    private String columType;
    private String commment;

    public void readFromExcel(int sheetNum) {
        Sheet sheet;
        Workbook book;
        Cell cell1, cell2, cell3;
        try {
            // t.xls为要读取的excel文件名
            book = Workbook.getWorkbook(new File("E:/Code/CSharp/modelconstruct/ModelingProject/UML/DB/公共表结构定义/退换货表结构.xls"));

            // 获得第一个工作表对象(ecxel中sheet的编号从0开始,0,1,2,3,....)
            sheet = book.getSheet(sheetNum);
            int row=sheet.getRows();
            for (int i=1;i<row ;i++ ) {
                columName=new StringBuffer();
                // 获取每一行的单元格
                cell1 = sheet.getCell(0, i);// （列，行）
                cell2 = sheet.getCell(1, i);
                cell3 = sheet.getCell(2, i);
                if ("".equals(cell1.getContents())) // 如果读取的数据为空
                    break;

                String tempcolumName=cell1.getContents();
                for (int k=0;k<tempcolumName.length();k++){
                    char c = tempcolumName.charAt(k);
                    if (Character.isUpperCase(c)){
                        char c1 = Character.toLowerCase(c);
                        if (k!=0){
                            columName.append("_");
                        }
                        columName.append(c1);
                    }else{
                        columName.append(c);
                    }
                }
                String replace = columName.toString().replace("r_m_a", "rma");
                String replace1 = replace.replace("x_b", "xb");

                columType=cell2.getContents();
                if (columType.startsWith("decimal")){
                    columType="decimal(16,4)";
                }
                commment=cell3.getContents();

                System.out.println(replace1 + "\t"
                        + columType + "\t" + commment);

            }
            book.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        ReadFromExcel fileService=new ReadFromExcel();
        fileService.readFromExcel(8);
    }
}
