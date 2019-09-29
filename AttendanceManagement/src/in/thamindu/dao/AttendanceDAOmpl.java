
package in.thamindu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import in.thamindu.entity.AttendanceRecord;
import in.thamindu.util.DBConnectionUtil;


/*Implementing the interface*/

public class AttendanceDAOmpl implements AttendanceDAO {

		
		Connection connection = null;
	    ResultSet resultSet = null;
	    Statement statement = null;
	    PreparedStatement preparedStatement = null;
	    
	    
	    
	 /*Getting all the data from the tbl_records to display.*/
	     
	    @Override
		public List<AttendanceRecord> get() {
			
	    	/*passing an object of type AttendanceRecord to the list*/
			List<AttendanceRecord> list = null;
			AttendanceRecord attendanceRec= null;
			
			/*try catch block to generate exception in case of an error*/
			try {
				
					list = new ArrayList<AttendanceRecord>();
					
					String sql = "SELECT * FROM tbl_records";
					this.connection = DBConnectionUtil.openConnection();
					
					this.statement = this.connection.createStatement();
					this.resultSet = this.statement.executeQuery(sql);
					
					while(this.resultSet.next()) {
						attendanceRec = new AttendanceRecord();
						attendanceRec.setId(this.resultSet.getInt("id"));
						attendanceRec.setE_id(this.resultSet.getString("e_id"));
						attendanceRec.setF_name(this.resultSet.getString("f_name"));
						attendanceRec.setIn_time(this.resultSet.getString("in_time"));
						attendanceRec.setOut_time(this.resultSet.getString("out_time"));
						attendanceRec.setMonth(this.resultSet.getString("month"));
						attendanceRec.setDate(this.resultSet.getString("date"));
						attendanceRec.setLeave_type(this.resultSet.getString("leave_type"));
						list.add(attendanceRec);
				}
			
				
			}catch(SQLException e) {
				
					e.printStackTrace();
			
			}
			
			return list;
		}

	 
	  /*Getting a specific attendance record using the id of that record which is unique.*/
	  
	    	@Override
			public AttendanceRecord get(int id) {
	    		
	    		AttendanceRecord attendanceRec = null;
				
				/*try catch block to generate exception in case of an error*/
				
				try {
					
					attendanceRec = new AttendanceRecord();
					String sql = "SELECT * FROM tbl_records where id="+id;
					connection = DBConnectionUtil.openConnection();
					statement = connection.createStatement();
					resultSet = statement.executeQuery(sql);
					if(resultSet.next()) {
						attendanceRec.setId(resultSet.getInt("id"));
						attendanceRec.setE_id(resultSet.getString("e_id"));
						attendanceRec.setF_name(resultSet.getString("f_name"));
						attendanceRec.setIn_time(resultSet.getString("in_time"));
						attendanceRec.setOut_time(resultSet.getString("out_time"));
						attendanceRec.setMonth(resultSet.getString("month"));
						attendanceRec.setDate(resultSet.getString("date"));
						attendanceRec.setLeave_type(resultSet.getString("leave_type"));
					}
					
					
				}catch(SQLException e) {
					
					e.printStackTrace();
				
				}
				
				return attendanceRec;
			
	    	}


	    /*inserting the records to the table using the query.
	     * this method is used in adding records.
	     * saving the record of the employee which was edited.*/
	    	@Override
	    	public boolean save(AttendanceRecord c) {
	    		
	    		
			boolean flag = false;
			
			try {
				
				/*SQL query to add records*/
				String sql = "INSERT INTO tbl_records(e_id,f_name,in_time,out_time,month,date,leave_type)VALUES"
							+"('"+c.getE_id()+"', '"+c.getF_name()+"', '"+c.getIn_time()+"', '"+c.getOut_time()+"', '"+c.getMonth()+"', '"+c.getDate()+"', '"+c.getLeave_type()+"')"; 
	
			
					connection = DBConnectionUtil.openConnection();
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.executeUpdate();
					flag = true;
				
				
				}catch(SQLException ex) {
				
					ex.printStackTrace();
				
				}
			
				return flag;
			
	    	}

		    /*deleting the records to the table using the query.
		     * this method is used in adding records.*/
	    		@Override
	    		public boolean delete(int id) {
	    			
	    			
				boolean flag = false;
				
				try {
					
					/*SQL query to delete a attendance record*/
					
					String sql = "DELETE FROM tbl_records where id="+id;
					connection = DBConnectionUtil.openConnection();
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.executeUpdate();
					flag = true;
					
				}catch(SQLException e) {
					
					e.printStackTrace();
					
				}
				
				return flag;
	}

			  /*updating the records to the table using the query.
			    * this method is used in updating records.*/
	    		@Override
	    		public boolean update(AttendanceRecord attendanceRec) {
		
		
				boolean flag = false;
				
				try {
					
					String sql = "UPDATE tbl_records SET e_id = '"+attendanceRec.getE_id()+"', "+ "f_name = '"+attendanceRec.getF_name()+"', in_time = '"+attendanceRec.getIn_time()+"', "+ "out_time = '"+attendanceRec.getOut_time()+"', "+ "month = '"+attendanceRec.getMonth()+"', "+ "date = '"+attendanceRec.getDate()+"', "+ "leave_type = '"+attendanceRec.getLeave_type()+"' "
							+ "where id="+attendanceRec.getId();
					
					connection = DBConnectionUtil.openConnection();
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.executeUpdate();
					flag = true;
				}catch(SQLException e) {
					
					e.printStackTrace();
					
				}
				
				return flag;
		
	}
	 
	 

}
