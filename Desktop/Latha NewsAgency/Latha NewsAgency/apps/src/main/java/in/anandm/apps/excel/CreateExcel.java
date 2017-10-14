// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CreateExcel.java

package in.anandm.apps.excel;

import java.io.*;
import java.util.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import in.anandm.apps.domain.UserData;


public class CreateExcel
{

      public static void genExcel(List<UserData> e, String fileName)
        throws IOException
    {
    	final Logger log = LoggerFactory.getLogger(CreateExcel.class);
        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet spreadsheet = workbook.createSheet(" Subscriber Data ");
        Map empinfo = new TreeMap();
        	empinfo.put("0", ((Object) (new Object[] {
        			"FIRST NAME", "LAST NAME", "HNO", "FLOOR NO", "APARTMENT","STREET","LOCALITY","CITY",
        			"PIN","EMAIL","REGISTRATION ID","MONTH","PAYMENT TYPE","TRANSACTION NO","AMOUNT","STATUS"
        	})));
        
        	for(int i = 0; i < e.size(); i++){
        		
        		for (String month : ((UserData)e.get(i)).getMonths()) {
        			((UserData)e.get(i)).setMonth(month);
        		}
        		empinfo.put(Integer.toString(i+1), ((Object) (new Object[] {
        				((UserData)e.get(i)).getFirstName(), ((UserData)e.get(i)).getLastName(), ((UserData)e.get(i)).gethNo(), ((UserData)e.get(i)).getFloorNo(), 
        				((UserData)e.get(i)).getApartment(), ((UserData)e.get(i)).getStreet(), ((UserData)e.get(i)).getLocality(), 
        				((UserData)e.get(i)).getCity(), ((UserData)e.get(i)).getPin(), ((UserData)e.get(i)).getEmail(), ((UserData)e.get(i)).getRegNum(),((UserData)e.get(i)).getMonth(),
        				((UserData)e.get(i)).getPaymentType(),((UserData)e.get(i)).getTransactionNo(),Double.toString(((UserData)e.get(i)).getAmount()),
        				((UserData)e.get(i)).getApprovalType()
        		})));
        		
        	}

        
        Set keyid = empinfo.keySet();
        int rowid = 0;
        for(Iterator iterator = keyid.iterator(); iterator.hasNext();)
        {
            String key = (String)iterator.next();
            XSSFRow row = spreadsheet.createRow(rowid++);
            Object objectArr[] = (Object[])empinfo.get(key);
            int cellid = 0;
            Object aobj[];
            int j = (aobj = objectArr).length;
            for(int i = 0; i < j; i++)
            {
                Object obj = aobj[i];
                Cell cell = row.createCell(cellid++);
                cell.setCellValue((String)obj);
            }

        }

        FileOutputStream out = new FileOutputStream(new File(fileName));
        workbook.write(out);
        out.close();
        log.info((new StringBuilder(String.valueOf(fileName))).append("written successfully").toString());
    }

}
