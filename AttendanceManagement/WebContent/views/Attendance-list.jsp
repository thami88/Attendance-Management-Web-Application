
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- using JSTL tags library-->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<%@include file="Header.jsp" %>


<title>Employee Attendance Records</title>

<head>

<!-- External CSS  -->

    <!-- CSS for Side Navigation -->
    <link rel="stylesheet" href="views/assets/css/sideNav.css">
    
    <!-- CSS for Table -->
    <link rel="stylesheet" href="views/assets/css/table.css">

<!-- End Of External CSS files -->


</head>


<body style="background-color:white;">

<!-- Side Menu -->

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">Home</a>
  <a href="#">Employee Management</a>
  <a href="#">Employee Salary Management</a>
  <a href="#">Inventory Management</a>
  <a href="#">Attendance Management</a>
  <a href="#">Supplier Management</a>
</div>

<!-- End Side Navigation Menu -->

   <!-- Header -->
     <div class="jumbotron jumbotron-fluid text-center blue-gradient lighten-1 m-3" style="border-radius:6px">
      <div class="container">
       <h1 class="display-4 ">Employee Attendance Records</h1>
      </div> <!-- Close Container -->
    </div>  <!-- Close JUMBOTRONE -->
    
    <!-- Navigation Menu -->
      <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
    
    <!-- Navigation Bar JSP -->
	 <%@include file="navbar.jsp" %>
	
    <!--  Notification for edit / delete / Insert -->
	  <h3 style= "margin-top:15px; text-align:center; font-family:Century Gothic; color:black;">${NOTIFICATION}</h3>
	
	
<div class="container">	
<div class="jumbotron text-center hoverable p-1 mt-5">

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-md-4 offset-md-1 mx-3 my-3">

      <!-- Featured image -->
      <div class="view overlay">
        <img src="views/images/a.jpg" class="img-fluid" alt="Sample image for first version of blog listing">
      </div>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-md-7 text-md-left ml-3 mt-3">

      <!-- Excerpt -->
      <a href="#!" class="green-text">
        <h6 class="h6 pb-1"><i class="fa fa-edit"></i>New Record</h6>
      </a>

      <h4 class="h4 mb-4">Add New Employee Attendance Record</h4>

      <button style="color:black; width:auto;" type="button" class="btn btn-info waves-effect mb-2" onclick="window.location.href = 'views/attendance-form.jsp'"> New Record </button>

    </div>
    <!-- Grid column -->

  </div>
  <!-- Grid row -->

</div>

			
      <!-- Count Days worked -->
      
      <div class="jumbotron text-center hoverable p-1 mt-5">

          <!-- Grid row -->
           <div class="row">

         <!-- Grid column -->
          <div class="col-md-4 offset-md-1 mx-3 my-3">
             <h4 class="h4 mt-3">Get Working Days</h4>
          </div> <!-- Close Grid column -->
    
         <!-- Grid column -->
          <div class="col-md-4 offset-md-1 mx-3 my-3">

            <!-- Input Button -->
            <input type="button" style="width:300px" class="btn btn-info" id="btnGetCount" value="Count Worked Days" onclick = "countRows()" />
             
          </div><!-- Close Grid Column -->

       </div> <!-- Close Grid row -->

    </div>

</div> <!-- Close head container -->
			
		<br>
		
	<div class="container"><!-- container for table -->
	<table id="tblS" class="table table-hover table-responsive text-nowrap">
		  <thead class="black white-text">
		    <tr>
		      <th  style="font-family:Century Gothic;" scope="col">
		      	<div class="md-form my-0">
                   <input class="form-control  width: 80px;" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
                </div>
		      </th>
		      
		      <th  style="font-family:Century Gothic;" scope="col">Employee ID
		       <div class="md-form my-0">
                  <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
               </div>
		      </th>
		      
		      <th style="font-family:Century Gothic;" scope="col">Name
		      	<div class="md-form my-0">
                   <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
                </div>
		      </th>
		      
		      <th style="font-family:Century Gothic;" scope="col">In Time
		       <div class="md-form my-0">
                  <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
               </div>
		      </th>
		      
		      <th style="font-family:Century Gothic;" scope="col">Out Time
		       <div class="md-form my-0">
                   <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
               </div>
		      </th>
		      
		      <th style="font-family:Century Gothic;" scope="col">Month
		      	<div class="md-form my-0">
                   <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
                </div>
		      </th>
		      
		      <th style="font-family:Century Gothic;" scope="col">Date
		       <div class="md-form my-0">
                  <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
               </div>
		      </th>
		      
		      <th style="font-family:Century Gothic;" scope="col">Leave Type
		      	<div class="md-form my-0">
                   <input class="form-control" onkeyup="searchRows('tblS')" type="text" placeholder="Search" aria-label="Search">
               </div>
		      </th>
		      
		      <th style="font-family:Century Gothic; vertical-align: middle; color:black; background-color:gold;" scope="col">
		        Manage Record
		      </th>
		    </tr>
		  </thead>
		  
<!-- using an for each loop to display data from the database -->
  <c:forEach items="${list}" var="eRecord">
  
			  <tbody>
			    <tr>
			      		<td  style="font-family:Century Gothic;">${eRecord.id}</td>
						<td  style="font-family:Century Gothic;">${eRecord.e_id}</td>
						<td  style="font-family:Century Gothic;">${eRecord.f_name}</td>
						<td  style="font-family:Century Gothic;">${eRecord.in_time}</td>
						<td  style="font-family:Century Gothic;">${eRecord.out_time}</td>
						<td  style="font-family:Century Gothic;">${eRecord.month}</td>
						<td  style="font-family:Century Gothic;">${eRecord.date}</td>
						<td  style="font-family:Century Gothic;">${eRecord.leave_type}</td>
						<td  style= "background-color:none;">
						
						<a style="font-family:Century Gothic; color:black; font-size:20px;" href = "${pageContext.request.contextPath}/AttendanceController?action=EDIT&id=${eRecord.id}">Edit</a> | 
						<a style="font-family:Century Gothic; color:red; font-size:20px;" href = "${pageContext.request.contextPath}/AttendanceController?action=DELETE&id=${eRecord.id}">Delete</a> 
						</td>
			    </tr>
			  </tbody>
			  
  </c:forEach>
	</table>
	</div>
	
<!-- Count Rows -->

  <script>
   function countRows(){
        let rowCount = $('#tblS tr:visible').length - 1;
        var message = " Employee Worked Days Count = " + rowCount;
        alert(message);
      }
  </script>

<!-- End Table Count -->


	
	
<!-- Search table -->
	
  <script type="text/javascript">

      function searchRows(tblId) {
      var tbl = document.getElementById(tblId);
      var headRow = tbl.rows[0];
      var arrayOfHTxt = new Array();
      var arrayOfHtxtCellIndex = new Array();

        for (var v = 0; v < headRow.cells.length; v++) {
              if (headRow.cells[v].getElementsByTagName('input')[0]) {
                  var Htxtbox = headRow.cells[v].getElementsByTagName('input')[0];
                      if (Htxtbox.value.replace(/^\s+|\s+$/g, '') != '') {
                          arrayOfHTxt.push(Htxtbox.value.replace(/^\s+|\s+$/g, ''));
                            arrayOfHtxtCellIndex.push(v);
                             }
                           }
                         }

        for (var i = 1; i < tbl.rows.length; i++) {

             tbl.rows[i].style.display = 'table-row';

                 for (var v = 0; v < arrayOfHTxt.length; v++) {

                      var CurCell = tbl.rows[i].cells[arrayOfHtxtCellIndex[v]];

                      var CurCont = CurCell.innerHTML.replace(/<[^>]+>/g, "");

                      var reg = new RegExp(arrayOfHTxt[v] + ".*", "i");

                          if (CurCont.match(reg) == null) {

                               tbl.rows[i].style.display = 'none';

                             }

                          }

                      }
               }
  </script>

	
<!-- End of search table -->

<!-- Side Nav JS -->
<script src="views/assets/js/sideNav.js"></script>


<%@include file="Footer.jsp" %>