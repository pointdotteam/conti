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
	
	
	 
    <!-- Morris Chart Styles-->
    <link href="resources/built-in/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="resources/built-in/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="resources/built-in/assets/js/Lightweight-Chart/cssCharts.css"> 
	
	 <link href="resources/built-in/assets/Drawer/trouserDrawer.css" rel="stylesheet" />
	  <link href="resources/built-in/assets/Drawer/animate.css" rel="stylesheet" />
	 <link href="resources/custom/css/custom.css" rel="stylesheet">
</head>


<body style="overflow-x:hidden;">
 
 		<div class="overlay hideme"></div>
 		
 		<div class="drawer hideme">
 			<div class="row">
 			<div class="col-lg-12">
 				 
                   <div class="col-lg-6">
                   		 <b class="model-title">Location Master</b>
                   </div>
                   
                   <div class="col-lg-6">
                   		<i class="fa fa-times fa-3x drawerClose  pull-right"></i>
                   </div>
            
             </div>
 			</div>
               
                 
                 
                 <div class="model-body test-size">
	                <div class="row">
		                <div class="col-lg-12">
			                
			               <div class="col-lg-6 col-lg-offset-1">
		                 	 
		                 	  <span>Location Name</span>
			                  <input type="text" class="form-control">
			                  
			                  <span>Location Code</span>
			                  <input type="text" class="form-control">
			                  
			                   <span>Abbreviation</span>
			                  <input type="text" class="form-control">
			                  
			                  <span>City</span>
			                  	<select class="form-control">
									<option>Coimbatore</option>
									<option>Chennai</option>
									<option>Bangalore</option>
								</select>
			                  
			                  <span>State</span>
			                  <input type="text" class="form-control">
			                  
			                  <span>Country</span>
			                  <input type="text" class="form-control">
			                  
			                  <span>Pincode</span>
			                  <input type="text" class="form-control">
			
			               
			             </div>  
			             </div>                
	                </div>   
	                
	                </div>
                 
                 <div class="modal-footer">
				
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-4">
							<button type="button" class="btn btn-danger drawerClose" style="float:left; margin-right: 25px;">Cancel</button>
						</div>
						
						<div class="col-lg-4" style="text-align:center; !important;">
							<a id="" class="btn btn-warning"	style="display: none; "><i class="fa fa-trash"  aria-hidden="true"></i> &nbsp;Delete</a> 
							
							<a id="" class="btn btn-primary" style="display:none;">Clear</a>							
						</div>
						
						<div class="col-lg-4">

						    <div class="btn-group dropup" id="savebutton">
								  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">					  
								  Save
								  </button>
								      
						</div>



						
						
						</div>
					</div>
				</div>
            </div>
 			
 			
 			
 		</div>
 
	
	<jsp:include page="../Dashboard/nav.jsp"/>
	
    <div id="wrapper">        	  
		<div id="page-wrapper">	 
      
      		<div class="row">
      		<div class="col-lg-12">
	      		<div class="page-header">
	      		    ${title}
	      		</div>      		
      		</div>      		
      		</div>
      		
      		<div class="row">
      		<div class="col-lg-12">
	      		<div class="col-lg-4">
	      		    <button class="btn btn-info drawerOpen" >Add New Location</button>
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
    
  <!--   <script src="js/trouserDrawer.js"></script>-->
    <script src="resources/custom/js/custom.js"></script>
  

</body>

</html>