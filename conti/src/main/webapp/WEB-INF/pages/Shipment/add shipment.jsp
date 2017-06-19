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
	  
	   <link href="resources/built-in/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
                	<div class="col-lg-2 pull-right">
                		<span>Shipment Date ccc</span>
                	    <input type="text" class="form-control">
                	    
                	    <span>LR Number</span>
                	    <input type="text" class="form-control">
                	    
                	    <span>Payment Mode</span>
                	    <select class="form-control">
                	    	<option>Cash</option>
                	    	<option>Credit</option>
                	    </select>
                	</div>
                	
                </div>
                </div>
                
                
                
                
                
                		
                                   
					
						<br>
						<div class="panel panel-default">
							<div class="panel-body customer-field">
							 <div class="panel-heading">
							<h4>Location Info</h4>
						  </div>
						<div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-5 col-lg-offset-1">
						  <div class="panel panel-default">
						  <div class="panel-heading">
						  		Sender Info
						  </div>	
						 <div class="panel-body"> 
						 		<div class="col-lg-3 col-lg-offset-1"></div>
                		<span>Name</span>
                		<input type="text" class="form-control">
                		</div>
                		</div>
                		</div>
                		
                		<div class="col-lg-5">
                		<div class="panel panel-default">
						  <div class="panel-heading">
						  	Consignee Info
						  </div>
						  <div class="panel-body ">
                		<span>Shipment From Date</span>
                		</div>
                		</div>              		
                		         		
                		</div>
                        </div>                 
                       </div>
                       </div>
                       </div>
            
                
             
  
             
             
             
             
             
             
                
              
       
        </div>
        </div>
        <!-- /. PAGE WRAPPER  -->
		
		
    
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
  
  
	
    

    <script src="resources/built-in/assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="resources/built-in/assets/js/dataTables/dataTables.bootstrap.js"></script>

     <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>

</body>

</html>