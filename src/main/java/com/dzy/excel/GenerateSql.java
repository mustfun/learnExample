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
public class GenerateSql {

    private StringBuffer columName;
    private String columType;
    private String commment;

    public void readFromExcelAndGenerateSql(int sheetNum) {
        Sheet sheet;
        Workbook book;
        Cell cell1, cell2, cell3;
        try {
            // t.xls为要读取的excel文件名
            book = Workbook.getWorkbook(new File("E:/Code/CSharp/modelconstruct/ModelingProject/UML/DB/公共表结构定义/退换货表结构.xls"));

            sheet = book.getSheet(sheetNum);

            String thelastSql="create table `"+sheet.getName()+"`(\n";

            int row=sheet.getRows();
            for (int i=1;i<row ;i++ ) {
                columName=new StringBuffer();
                // 获取每一行的单元格
                cell1 = sheet.getCell(0, i);// （列，行）
                cell2 = sheet.getCell(1, i);
                cell3 = sheet.getCell(4, i);
                if ("".equals(cell1.getContents()))
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
                    columType="decimal(16,4)  NOT NULL DEFAULT 0";
                }else if (columType.startsWith("int")&&!replace1.contains("id")){
                    columType="int(11)  NOT NULL DEFAULT 0";
                }else if(columType.startsWith("smallint")){
                    columType="smallint(6) NOT NULL DEFAULT 0";
                }else if(replace1.contains("id")){
                    columType="bigint(20) NOT NULL ";
                }else if(replace1.equals("create_time")||replace1.equals("update_time")){
                    columType=columType+" NOT NULL DEFAULT CURRENT_TIMESTAMP";
                }else if(columType.startsWith("varchar")||columType.startsWith("nvarchar")){
                    columType=columType+" NOT NULL DEFAULT ''";
                }else{
                    columType=columType+" DEFAULT NULL";
                }
                commment=cell3.getContents();

                if (replace1.startsWith("id")){
                    thelastSql+=("`"+replace1.trim() + "`\t"
                            + columType + "\t AUTO_INCREMENT COMMENT '" + commment+"'  , \n");
                }else{
                    thelastSql+=("`"+replace1.trim() + "`\t"
                            + columType + "\t  COMMENT '" + commment+"', \n");
                }



            }
            thelastSql+="PRIMARY KEY (`id`) \n) ENGINE=InnoDB DEFAULT CHARSET=utf8;";
            System.out.println(thelastSql);
            book.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        GenerateSql fileService=new GenerateSql();
        fileService.readFromExcelAndGenerateSql(3);
    }
}
