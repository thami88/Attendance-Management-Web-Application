
package in.thamindu.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.thamindu.dao.AttendanceDAO;
import in.thamindu.dao.AttendanceDAOmpl;
import in.thamindu.entity.AttendanceRecord;;




public class AttendanceController extends HttpServlet {
	
			private static final long serialVersionUID = 1L;
		 
			RequestDispatcher dispatcher = null;
			AttendanceDAO attendanceDAO = null;
			
			public AttendanceController(){
				attendanceDAO = new AttendanceDAOmpl();
			
			
	}

			
			
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		
		if(action == null) {
			action = "LIST";
		}
		
		switch(action) {
			
			case "LIST":
				listRecord(request, response);
				break;
				
			case "EDIT":
				getSingleRecord(request, response);
				break;
				
			case "DELETE":
				deleteRecord(request, response);
				break;
				
			default:
				listRecord(request, response);
				break;
				
		}

	}

	
	
	/* Deleting a selected employee attendance record from database*/
	
	private void deleteRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("id");
		
			if(attendanceDAO.delete(Integer.parseInt(id))) {
				request.setAttribute("NOTIFICATION", "Employee Record Removed Successfully!");
			}
			
			listRecord(request, response);
	}
	
	
	
	/* Edit a selected employee attendance record already in the database by redirecting to attendance-form page */
	
	private void getSingleRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
			String id = request.getParameter("id");
			
			AttendanceRecord theRecord = attendanceDAO.get(Integer.parseInt(id));
			
			request.setAttribute("eaRecord", theRecord);
			
			dispatcher = request.getRequestDispatcher("/views/attendance-form.jsp");
			
			dispatcher.forward(request, response);
	}
	
	
	/* Display all employee attendance record in the database by redirecting to Attendance-list page*/
	
	private void listRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			List<AttendanceRecord> theList = attendanceDAO.get();
			
			request.setAttribute("list", theList);
			
			dispatcher = request.getRequestDispatcher("/views/Attendance-list.jsp");
			
			dispatcher.forward(request, response);
	}
	
	
	/*Adding a new attendance record passed by the fields in the attendanceRecord-form is assigned to the fields of the database is done in this method*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String id = request.getParameter("id");
			
			AttendanceRecord c = new AttendanceRecord();
			c.setE_id(request.getParameter("e_id"));
			c.setF_name(request.getParameter("f_name"));
			c.setIn_time(request.getParameter("out_time"));
			c.setOut_time(request.getParameter("in_time"));
			c.setMonth(request.getParameter("month"));	
			c.setDate(request.getParameter("date"));
			c.setLeave_type(request.getParameter("leave_type"));
		
			
			if(id.isEmpty() || id == null) {
				
					if(attendanceDAO.save(c)) {
						
						request.setAttribute("NOTIFICATION", "Employee Attendance Record Saved Successfully!");
				
					}
			
			}else {
				
					c.setId(Integer.parseInt(id));
					
	
					if(attendanceDAO.update(c)) {	
					
						request.setAttribute("NOTIFICATION", "Employee Attendance Record Updated Successfully!");
				
					}
				
			}
			
				listRecord(request, response);
	}

}
