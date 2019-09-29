<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>

<head>

  <meta charset="ISO-8859-1">

  <!-- header file contains the navigation bar -->
   <%@include file="Header.jsp"%>

   
  <!-- Text Display in Tab -->
   <title>Attendance Record</title>

</head>


<body style="background-color:white;">
	
   <!-- Heading -->
    <div class="jumbotron jumbotron-fluid text-center blue-gradient lighten-1 m-3" style="border-radius:6px">
     <div class="container">
      <h1 class="display-4 ">Manage Employee Attendance Records</h1>
     </div> <!-- Close Container Class -->
    </div><!-- Close JUMBOTRONE Class -->
    
    <!-- Top Image -->
		<div style="text-align: center"><img src="images/R.png" width="200" /></div>
		<div style="text-align: center"><img src="views/images/R2.png" width="200" /></div>
		
		
	
     <div class = "row">
     <div class="container" style="width:auto; border-radius:5px">
			
				<form action = "${pageContext.request.contextPath}/AttendanceController" name = "myForm" method="POST">
				  
				  
                 <div class="card p-3 mt-5">
                 
					<!-- for employee id -->
					<div class="container hoverable" style="width:auto; border-radius:10px" >
						<div class="md-form">
						  <input style="width:auto; color:#00acc1; font-family:Century Gothic;" type = "text" class = "form-control" name = "e_id" value = "${eaRecord.e_id}" maxlength="5" required/>
						  <label style="color:black; font-family:Century Gothic;" for="form1">Employee ID</label>
						</div>
					</div>
						
						
					<!-- for employee name -->
					<div class="container hoverable" style="width:auto; border-radius:10px">
						<div class="md-form">
						  <input style="width:auto; color:#00acc1; font-family:Century Gothic;" type = "text" class = "form-control" name = "f_name" value = "${eaRecord.f_name}" required/>
						  <label style="color:black; font-family:Century Gothic;" for="form1">Name</label>
						</div>
					</div>
						
						
                    <!-- For time picker -->
                    <div class="container hoverable" style="width:auto; border-radius:10px">
					    <div class="md-form">
					      Time in
                          <input type="time" name="in_time" value = "${eaRecord.in_time}" required>
                        </div>
                     </div>
                        
                      
                    <!-- For time picker -->
                    <div class="container hoverable" style="width:auto; border-radius:10px">
					    <div class="md-form">
					      Time Out
                          <input type="time" name="out_time" value = "${eaRecord.out_time}" required>
                        </div>
                     </div>
						
						
					<!-- for month -->
					<div class="container hoverable" style="width:auto; border-radius:10px">
						<div class="md-form">
						  <input style="width:auto; color:#00acc1; font-family:Century Gothic;" type = "text" class = "form-control" name = "month" value = "${eaRecord.month}" maxlength="10" required/>
						  <label style="color:black; font-family:Century Gothic;" for="form1">Month</label>
						</div>
					</div>
						
						
			        <!-- For date picker -->
			        <div class="container hoverable" style="width:auto; border-radius:10px">
					    <div class="md-form" >
					      Date
                         <input type="date" name="date" value = "${eaRecord.date}" required>
                        </div>
                     </div>
											
											
					<!-- for leave type -->
					<!--  	<div class="md-form">
						  <input style="width:1100px; color:#00acc1; font-family:Century Gothic;" type = "text" class = "form-control" name = "leave_type" value = "${eaRecord.leave_type}" required/>
						  <label style="color:black; font-family:Century Gothic;" for="form1">Leave Type</label>
						</div>-->
						
					<!-- For Leave Type -->
					<div class="container hoverable" style="width:auto; border-radius:10px">
						<div class="md-form" >
					      Leave Type
						<select style="width:100px; font-family:Century Gothic;" class = "form-control" name = "leave_type" value = "${eaRecord.leave_type}">
                              <option value="NULL">NULL</option>
                              <option value="SICK">SICK</option>
                              <option value="PERSONAL">PERSONAL</option>
                        </select>
                        </div>
                     </div>
					

		            <!--  Save Data Button -->
						<input type = "hidden" name = "id" value = "${eaRecord.id}"/>
						   <div class="text-center">
						    <button style="width:auto;"type="submit" class="btn rounded btn-blue-grey" value="save">Save and Add Attendance Record</button>
						   </div>
						<br>
						
                </div><!-- Close Card Class -->
			
	               <!-- Add Record JUMBOTRONE -->			
                     <div class="container">	
                      <div class="jumbotron text-center hoverable p-1 mt-5">

                        <!-- Grid row -->
                         <div class="row">

                          <!-- Grid column -->
                           <div class="col-md-4 offset-md-1 mx-3 my-3">

                             <!-- Featured image -->
                              <div class="view overlay">
                                <img src="images/t.jpg" class="img-fluid" alt="">
                                <img src="views/images/t2.jpg" class="img-fluid" alt="">
                              </div>

                           </div> <!-- Close Grid column -->

                           <!-- Grid column -->
                            <div class="col-md-7 text-md-left ml-3 mt-3">

                             <!-- Excerpt -->
                              <a href="#!" class="green-text">
                               <h6 class="h6 pb-1"><i class="fa fa-table"></i> Table Records </h6>
                              </a>

                               <h4 class="h4 mb-4">Back To Attendance Records</h4>

                              <!--  Button for go back attendance record list page -->
                              <button style="width:auto;" type="button" class="btn btn-light-green" onclick="location.href='${pageContext.request.contextPath}/AttendanceController?action=LIST';">Back</button>

                           </div>  <!-- Close Grid column -->
                         </div>  <!-- Close Grid row -->
                       </div>  <!-- Close Add Record JUMBOTRONE Class -->
			         </div>  <!-- Close Container Class -->
				  </form>  <!-- Close Form Class -->
			    </div>  <!-- Close container class -->
		      </div>  <!-- Close row class -->

<!-- footer -->
<%@include file="Footer.jsp" %>
						
						