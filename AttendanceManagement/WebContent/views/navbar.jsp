<style>

#navbar {
z-index:1;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

/* Add some top padding to the page content to prevent sudden quick movement (as the navigation bar gets a new position at the top of the page (position:fixed and top:0) */
.sticky + .content {
  padding-top: 1px;
}

</style>
<div id="navbar">
<nav class="navbar navbar-expand-lg navbar-dark teal darken-1 m-3">

			  <!-- Navbar brand -->
			  <a  style="font-family:Product Sans; color:white;" class="navbar-brand" href="#">Employee Attendance Management</a>
		
				  <!-- Collapse button -->
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
				    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
		
						  <!-- Collapsible content -->
						  <div class="collapse navbar-collapse" id="basicExampleNav">
		
							    <!-- Links -->
							    <ul class="navbar-nav mr-auto">
							      <li class="nav-item active">
							        <a class="nav-link"  style="font-family:Century Gothic;" href="views/service.html">Sevice Menu
							          <span class="sr-only">(current)</span>
							        </a>
							      </li>
		   						 </ul>
		   						 
		 				 </div>
		  
</nav>
</div>

  <!-- Sticky nav bar -->
  <script type="text/javascript">
//When the user scrolls the page, execute myFunction
  window.onscroll = function() {myFunction()};

  // Get the navbar
  var navbar = document.getElementById("navbar");

  // Get the offset position of the navbar
  var sticky = navbar.offsetTop;

  // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
  function myFunction() {
    if (window.pageYOffset >= sticky) {
      navbar.classList.add("sticky")
    } else {
      navbar.classList.remove("sticky");
    }
  }
  </script>
