<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<%@ page isELIgnored="false" %> 
<%@page session="true"%>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${title}</title>
    <!-- Bootstrap Styles-->
    <link href="resources/built-in/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="resources/built-in/assets/css/font-awesome.css" rel="stylesheet" />
	
	 <link href="resources/built-in/assets/Drawer/animate.css" rel="stylesheet" />
	 
    <!-- Morris Chart Styles-->
    <link href="resources/built-in/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="resources/built-in/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="resources/built-in/assets/js/Lightweight-Chart/cssCharts.css"> 
	
	 <link href="resources/built-in/assets/Drawer/trouserDrawer.css" rel="stylesheet" />
	  <link href="resources/custom/css/custom.css" rel="stylesheet">
</head>


<body style="overflow-x:hidden;">
 
	
	<jsp:include page="../Dashboard/nav.jsp"/>
	
    <div id="wrapper">        	  
		<div id="page-wrapper">	 
      
      	    		
      		  <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">                            
						<div class="panel-heading">
							
						</div>
						<div class="panel-body customer-font">
						<b>${title}</b>
						</div>
                        </div>
                    </div>
                </div>
                
                <div class="row customer-field">
                <div class="col-lg-12">
                
                	<div class="col-lg-3">
                	
                	</div>  
                	
                	<div class="col-lg-3">
                		<span>User Name</span>
                		<input type="text" class="form-control">
                		
                		<span>Branch Name</span>
                		<select class="form-control">
                			<option>Coimbatore Branch</option>
                			<option>Chennai Branch</option>
                			<option>Bangalore Branch</option>
                		</select>
                		
                		<span>Employee Name</span>
                		<select class="form-control">
                			<option> Kumar </option>
                			<option>Sekar</option>
                			<option>Raman</option>
                		</select>
                		
                		<span>Phone Number</span>
                		<input type="text" class="form-control">
                		
                		<span>Email</span>
                		<input type="text" class="form-control">
                		
                		<span>Password</span>
                		<input type="text" class="form-control">
                		
                		
                		<span>Confirm Password</span>
                		<input type="text" class="form-control">
                		
                		<span>Confirm Password</span>
                		<select class="form-control">
                				<option>Driver</option>
                				<option>Staff</option>
                		</select>
                	</div>                	
                	
                	<div class="col-lg-3">
                		
                	</div>
                	
                	<div class="col-lg-3">
                		
                	</div>  
                </div>
                </div>
                
                
               <br>
               <br>
                
                <div class="row">
                <div class="col-lg-12">
                
                	<div class="col-lg-4">
                		<button type="button" class="btn btn-danger pull-right">Clear</button>
                	</div>  
                	
                	<div class="col-lg-2 col-lg-offset-1">
                		<button type="button" class="btn btn-success">Save</button>
                	</div>  
                	
                	<div class="col-lg-3">
              			
              			
                	</div>                	
                	
                	<div class="col-lg-3">
                		
                	</div>
                	
                	
                </div>
                </div>
          
            
        </div>
        <!-- /. PAGE WRAPPER  -->
		
		
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="resources/built-in/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="resources/built-in/assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="resources/built-in/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="resources/built-in/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="resources/built-in/assets/js/morris/morris.js"></script>
	
	
	<script src="resources/built-in/assets/js/easypiechart.js"></script>
	<script src="resources/built-in/assets/js/easypiechart-data.js"></script>
	
	 <script src="resources/built-in/assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="resources/built-in/assets/js/custom-scripts.js"></script>

      <script>
    // ------------------------------ Drawer open event
	// begin---------------------//
	$('.drawerOpen').click(function(){
	
	
	
		$('.overlay').removeClass('hideme');
		
		$('.drawer').removeClass('hideme');
		$('body').addClass('scrollHidden');
		
	
		animationOpenClick('.drawer', 'bounceInRight');
	});
	// ------------------------------ Drawer Open event
	// end---------------------//
	
	$('.drawerClose').click(function(){
		
			$('.overlay').addClass('hideme');		
		     $('.drawer').addClass('hideme');
		
	});
      </script>

</body>

</html>