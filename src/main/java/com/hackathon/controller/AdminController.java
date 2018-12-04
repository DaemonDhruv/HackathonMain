package com.hackathon.controller;

//File and sql Related
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

//Servlet Related
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
//For importing excel file to database 
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
//Spring related
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hackathon.dao.QuestionsDAO;
import com.hackathon.dao.RemoveExcelDAO;


@Controller
public class AdminController {
	@Autowired
	QuestionsDAO qdao;

	@Autowired
	RemoveExcelDAO rex;
	/*
	 * This method is responsible for reading excel file and import it to the database schema 
	 */
	//Excel import ...
		@RequestMapping("/upload")
		public ModelAndView uploadExcel(HttpServletRequest req, HttpServletResponse res, ModelAndView model) {
			try {
				Class.forName ("oracle.jdbc.OracleDriver");
			} catch (ClassNotFoundException e4) {

				e4.printStackTrace();
			} 
			Connection conn = null;
			try {
				conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.100.198:1521/xe", "system", "Newuser123");
			} catch (SQLException e3) {

				e3.printStackTrace();
			}
			PreparedStatement sql_statement=null;
			String jdbc_insert_sql = "INSERT INTO GR7_QUESTIONS"+ " VALUES" + "(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			try {
				sql_statement = conn.prepareStatement(jdbc_insert_sql);
			} catch (SQLException e2) {

				e2.printStackTrace();
			}


			// We should now load excel objects and loop through the worksheet data 
			FileInputStream input_document = null;
			XSSFWorkbook my_xls_workbook = null;
			try {
				input_document = new FileInputStream(new File("C:\\Users\\AE103_PC19\\Desktop\\demo.xlsx"));
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// Load workbook 
		
			try {
				my_xls_workbook = new XSSFWorkbook(input_document);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			/* Load worksheet */
			XSSFSheet my_worksheet = my_xls_workbook.getSheetAt(0);
			// we loop through and insert data
			Iterator<Row> rowIterator = my_worksheet.rowIterator();

			while(rowIterator.hasNext()) {
				Row row = rowIterator.next(); 
				Iterator<Cell> cellIterator = row.cellIterator();

				while(cellIterator.hasNext()) {

					Cell cell = cellIterator.next();
					String s=String.valueOf(cell.getCellType());
					if(s.equals("NUMERIC") && (cell.getColumnIndex()==0)) { 
						//System.out.println("lol");
						try {
							sql_statement.setDouble(1, cell.getNumericCellValue());


						} catch (SQLException e) {

							e.printStackTrace();
						}                                                                                     
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==1)){
						try {
							sql_statement.setString(2, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("NUMERIC".equals(s) && (cell.getColumnIndex()==2)){
						try {
							sql_statement.setDouble(3, cell.getNumericCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==3)){
						try {
							sql_statement.setString(4, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==4)){
						try {
							sql_statement.setString(5, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==5)){
						try {
							sql_statement.setString(6, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==6)){
						try {
							sql_statement.setString(7, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==7)){
						try {
							sql_statement.setString(8, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==8)){
						try {
							sql_statement.setString(9, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==9)){
						try {
							sql_statement.setString(10, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==10)){
						try {
							sql_statement.setString(11, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==11)){
						try {
							sql_statement.setString(12, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}
					else if("STRING".equals(s) && (cell.getColumnIndex()==12)){
						try {
							sql_statement.setString(13, cell.getStringCellValue());
						} catch (SQLException e) {

							e.printStackTrace();
						}
					}

				}
				try {
					sql_statement.executeUpdate();
				} catch (SQLException e) {

					e.printStackTrace();
				}
			}
			/* Close input stream */
			try {
				input_document.close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			try {
				/* Close prepared statement */
				sql_statement.close();
				/* COMMIT transaction */
				conn.commit();
				/* Close connection */
				conn.close();
			} catch (SQLException e) {
		
				e.printStackTrace();
			}
			model.setViewName("AdminHome");
			return model;

		}
		/*
		 This code is for removing excel file from database
		 */
		@RequestMapping("/remove")
		public ModelAndView removeExcel(ModelAndView model) {
			
			int i=rex.removeExcel();
			if(i>0) {
				System.out.println("file removed");
			}
			
			return model;
			
		}



}
