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
						<span class="pull-right">Mobile No<input type="text" class="form-rounded" name="search"></span>
						
						<div class="col-lg-5 col-lg-offset-3">
						
						
                		<span>Name</span>
                		<input type="text" class="form-control">
                		
                		<span>Mobile No</span>
                		<input type="text" class="form-control">
                		
                		<span>Branch Name</span>
                		<select class="form-control">
                				<option>Coimbatore</option>
                				<option>Chennai</option>
                				<option>Bangalore</option>
                		
                		</select>
                		
                		<span>Address</span>
                		<input type="text" class="form-control">
                		
                		<span>Location</span>
                		<select class="form-control">
                				<option>Peelamedu</option>
                				<option>Ganthipuram</option>
                				<option>Ukkadam</option>
                		
                		</select>
                		
                		<span>City</span>
                		<input type="text" class="form-control">
                		
                		
                		<span>State</span>
                		<input type="text" class="form-control">
                		
                		
                		<span>Country</span>
                		<input type="text" class="form-control">
                		
                		<span>Pincode</span>
                		<input type="text" class="form-control">
                		
                		<span>Mail</span>
                		<input type="text" class="form-control">
                		
                		<br>
                		<input type="checkbox" class="checkalt"> Save Address
                		</div>
                		</div>
                		</div>
                		</div>
                		
                		<div class="col-lg-5">
                		<div class="panel panel-default">
						  <div class="panel-heading">
						  	Consignee Info
						  </div>
						  <div class="panel-body ">
						  <span class="pull-right">Mobile No<input type="text" class="form-rounded" name="search"></span>
                		<div class="col-lg-5 col-lg-offset-3">
						
						
                		<span>Name</span>
                		<input type="text" class="form-control">
                		
                		<span>Mobile No</span>
                		<input type="text" class="form-control">
                		
                		<span>Branch Name</span>
                		<select class="form-control">
                				<option>Coimbatore</option>
                				<option>Chennai</option>
                				<option>Bangalore</option>
                		
                		</select>
                		
                		<span>Address</span>
                		<input type="text" class="form-control">
                		
                		<span>Location</span>
                		<select class="form-control">
                				<option>Peelamedu</option>
                				<option>Ganthipuram</option>
                				<option>Ukkadam</option>
                		
                		</select>
                		
                		<span>City</span>
                		<input type="text" class="form-control">
                		
                		
                		<span>State</span>
                		<input type="text" class="form-control">
                		
                		
                		<span>Country</span>
                		<input type="text" class="form-control">
                		
                		<span>Pincode</span>
                		<input type="text" class="form-control">
                		
                		<span>Mail</span>
                		<input type="text" class="form-control">
                		
                		<br>
                		<input type="checkbox" class="checkalt"> Save Address
                		</div>
                		</div>
                		</div>              		
                		         		
                		</div>
                        </div>                 
                       </div>
                       </div>
                       </div>
            
                
             
             
             
             
             
             
                     <div class="panel panel-default">
							<div class="panel-body customer-field">
							 <div class="panel-heading">
							<h4>Shipment Info</h4>
						  </div>
						<div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-11 col-lg-offset-1">
						  <div class="panel panel-default">
						  <div class="panel-heading">
						  		
						  </div>	
						 <div class="panel-body"> 
						
						<div class="col-lg-3 col-lg-offset-1">
						<span>Status</span>
						<select class="form-control">
								<option>Select</option>
								<option>Booked</option>
								
						</select>
						
						<span>No of Parcel</span>
						<input type="text" class="form-control">
						
						</div>
						
						<div class="row">
                <div class="col-md-12">
                   
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>                                           
                                            <th>Product Type</th>
                                            <th>Product</th>
                                            <th colspan="3">Dimensions(cm)</th>
                                            <th>Weight(Kg)</th>
                                            <th>Price</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td>
                                            <select class="form-control">                                            
		                                           <option> Box</option>
		                                           <option>Cover</option>
                                            </select>
                                            </td>
                                            <td><select class="form-control">                                            
		                                           <option>Small Box</option>
		                                           <option>Large Box</option>
                                            </select></td>
                                            <td>Length</td>
                                            <td>Width</td>
                                            <td>Height</td>
                                            <td>20</td>
                                            <td>50</td>
                                            
                                        </tr>
                                 
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                 
                </div>
            </div>
                		</div>
                		</div>
                		</div>
                		
                		
                        </div>                 
                       </div>
                       </div>
                       </div>
  
             
             
             
             
                          <div class="panel panel-default">
							<div class="panel-body customer-field">
							 <div class="panel-heading">
							<h4>Service & Payment Info</h4>
						  </div>
						<div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-5 col-lg-offset-1">
						  <div class="panel panel-default">
						  <div class="panel-heading">
						  		Services
						  </div>	
						 <div class="panel-body"> 
						
						
						<div class="col-lg-5 col-lg-offset-3">
						
						
                		<span>Service</span>
                		<select class="form-control">
                				<option>Counter</option>
                				<option>Door Delivery</option>
                		</select>
                		
                		<span>Shipment Value</span>
                		<input type="text" class="form-control">
                		
              
                		
                		<span>Description</span>
                		<input type="text" class="form-control">
                		
                		</div>
                		
                		
                		
                		
                		</div>
                		</div>
                		</div>
                		
                		<div class="col-lg-5">
                		<div class="panel panel-default">
						  <div class="panel-heading">
						  	Payment Details
						  </div>
						  <div class="panel-body ">
						
                		<div class="col-lg-5 col-lg-offset-3">
						
						
                		<span>Chargeable Weight(Kg)</span>
                		<input type="text" class="form-control">
                		
                		<span>Delivery Charges &nbsp;<i class="fa fa-inr"></i></span>
                		<input type="text" class="form-control">
                		
                	                		
                		<span>Handling Charges &nbsp;<i class="fa fa-inr"></i></span>
                		<input type="text" class="form-control">
                		
                		
                		
                		<span>Tax  &nbsp;<i class="fa fa-inr"></i></span>
                		<input type="text" class="form-control">
                		
                		
                		<span>Total Charges &nbsp;<i class="fa fa-inr"></i></span>
                		<input type="text" class="form-control">
                		
                		</div>
                		</div>
                		</div>              		
                		         		
                		</div>
                        </div>                 
                       </div>
                       </div>
                       </div>
                       
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