package in.thamindu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

	public class DBConnectionUtil {

	
	//Establishing the database connection by providing DataBase URL,drivers, Password and Database Name
	
			
			private static final String URL = "jdbc:mysql://localhost:3306/uniondirectory";
			
			private static final String DRIVER = "com.mysql.jdbc.Driver";
			
			private static final String USERNAME = "root";
			
			private static final String PASSWORD = "root123";
			
			private static Connection connection = null;
			
	
	public static Connection openConnection() {
	
		//Checking for the connection
		
		
			if(connection != null) {
		
				return connection;
			
			}else {
				
				try {
					
					Class.forName(DRIVER);
					connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			
				}catch(ClassNotFoundException e){
					
					e.printStackTrace();
					
				}catch(SQLException e) {
					
					e.printStackTrace();
					
				}
	
				return connection;
			}
		}
}
