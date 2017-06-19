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
                		<span>From Branch</span>
                		<select class="form-control">
                			<option>Coimbatore Branch</option>
                			<option>Chennai Branch</option>
                			<option>Bangalore Branch</option>
                		</select>
                		
                		<span>Service</span>
                		<select class="form-control">
                			<option>Counter</option>
                			<option>Door Delivery</option>                			
                		</select>
                		
                		<span>Product</span>
                		<select class="form-control">
                			<option> Small Box </option>
                			<option>Large Box</option>                			
                		</select>
                		
                		<span>Product Type</span>
                		<select class="form-control">
                			<option> Box </option>
                			<option> Cover</option>                			
                		</select>
                	
                	</div>                	
                	
                	<div class="col-lg-2" style="padding-top:50px;">
                		 <input type="checkbox" value=""><span>Default Price</span>
                		 <input type="text" class="form-control">
                		 <input type="checkbox" value=""><span>Default Handling Charges</span>
                		 <input type="text" class="form-control">
                	</div>
                	
                  
                </div>
                </div>
                
                
                
                
                 
                        
                
                <div class="row">
                <div class="col-lg-12">
                
                
                        <div class="panel panel-default">                            
						<div class="panel-heading">							
						</div>
						<div class="panel-body customer-field">
							<div class="col-lg-3">
	                	
	                	    </div>  
                	
                	        <div class="col-lg-6">                	
                               <div class="panel panel-default">                                
                                <div class="panel-body">
                                  <div class="table-responsive">
                                     <table class="table table-striped table-bordered table-hover">
	                                    <thead>
	                                        <tr>
	                                          
	                                            <th>From Branch</th>
	                                            <th>Weight Range</th>
	                                            <th></th>
	                                            <th></th>
	                                            <th>Price</th>
	                                        </tr>
	                                    </thead>
		                                    <tbody>
		                                        <tr>
		                                            <td>
		                                            	<select class="form-control">
								                			<option>Coimbatore Branch</option>
								                			<option>Chennai Branch</option>
								                			<option>Bangalore Branch</option>
								                		</select>
								                    </td>
		                                            <td class="col-sm-1"><input type="text" class="form-control"></td>
		                                            <td class="col-sm-1">To</td>
		                                            <td class="col-sm-1"><input type="text" class="form-control"></td>
		                                            <td><input type="text" class="form-control"></td>
		                                           
		                                        </tr>
		                                        
		                                    </tbody>
                                   </table>
                            </div>
                        </div>
                    </div>
                   </div>                	
                	
                	
                	<div class="col-lg-3">
                		
                	</div>  
				</div>
                </div>
                	  
                </div>
                </div>
                
                
               <br>
               <br>
                
                <div class="row">
                <div class="col-lg-12">
                
                	<div class="col-lg-6">
                		<button type="button" class="btn btn-danger pull-right">Clear</button>
                	</div>  
                	
                	<div class="col-lg-6">
                		<button type="button" class="btn btn-success">Save</button>
                	</div>  
                	
                	
                </div>
                </div>
          
            
        </div>
        <!-- /. PAGE WRAPPER  -->
		
		
    </div>
    <!-- /. WRAPPER  -->
   

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