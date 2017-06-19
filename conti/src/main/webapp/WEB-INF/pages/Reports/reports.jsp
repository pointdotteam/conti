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
                
                
                
                <div class="row">
                    <div class="col-lg-12">
                    <div class="col-lg-4">
                    </div>
                     
					<div class="col-lg-4">
						<div class="panel panel-default">                            
						<div class="panel-heading">
							 Filter by
						</div>
						<div class="panel-body customer-field">
							  <span> <input type="checkbox" value="">&nbsp;Date Wise</span>
							  <span> <input type="checkbox" value="">&nbsp;Branch Wise</span>
							   <span> <input type="checkbox" value="">&nbsp;LR No Wise</span>
							  <span> <input type="checkbox" value="">&nbsp;All</span>
							
						</div>
                        </div>  
				   </div>
							
					 <div class="col-lg-4">
                        </div>
                    </div>
                </div>
                
                
                
                
                
                		
                <div class="panel panel-default">                            
						<div class="panel-heading">			
						
							
						</div>
				<div class="panel-body customer-field">
						<div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-2">
                		<span class=" pull-right">Shipment From Date</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<input type="text" class="form-control">
                		</div>
                		
                		<div class="col-lg-2">
                		<span class=" pull-right">Shipment To Date</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<input type="text" class="form-control">
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>And</option>
                			<option>Or</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-1">
                			<span>Date Filter</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>Today</option>
                			<option>This Week</option>
                			<option>This Month</option>
                			<option>This Quater</option>
                		</select>
                		</div>           		
                		</div>
                        </div>
                        
                        <br>
                        <br>
                        <div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-2">
                		<span class=" pull-right">From Branch</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>All</option>
                			<option>Coimbatore</option>
                			<option>Chennai</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-2">
                		<span class=" pull-right"> To Branch</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>All</option>
                			<option>Coimbatore</option>
                			<option>Chennai</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>And</option>
                			<option>Or</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-1">
                			
                		</div>
                		
                		<div class="col-lg-1">
                		
                		</div>           		
                		</div>
                        </div>
                        
                        
                        <br>
                        <br>
                        <div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-2">
                		<span class=" pull-right">From LR Number</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>LR001</option>
                			<option>LR002</option>
                			<option>LR003</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-2">
                		<span class=" pull-right"> To LR Number</span>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>LR0011</option>
                			<option>LR0012</option>
                			<option>LR0013</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-1">
                		<select class="form-control">
                			<option>And</option>
                			<option>Or</option>
                		</select>
                		</div>
                		
                		<div class="col-lg-1">
                			
                		</div>
                		
                		<div class="col-lg-1">
                		
                		</div>           		
                		</div>
                        </div>
                        
                        <br>
                        <br>
                        
                        <div class="row ">
                         <div class="col-lg-12">
						
						<div class="col-lg-2 col-lg-offset-1">
                		<span>Product</span>
                		<select class="form-control ">
                		    <option>Select</option>
                			<option>Document</option>
                		</select>
                		
                		<span>Product Mode</span>
                		<select class="form-control ">
                		    <option>Cash</option>
                			<option>To Pay</option>
                		</select>
                		
                		
                		<span>Status</span>
                		<select class="form-control ">
                		    <option>Select</option>
                			<option>Picked Up</option>
                		</select>
                		</div>
                		
                		
                		</div>
                		          		
                		</div>
                        </div>
                		
                </div>
            
                <br>
                <div class="row">
                <div class="col-lg-12">
                	<div class="col-lg-4">
                		
                	</div>
                	
                	<div class="col-lg-4">
                		<button type="button" class="btn btn-info">View Report</button>
                	</div>
                	
                	<div class="col-lg-4">
                		<button type="button" class="btn btn-info">	<i class="fa fa-file-excel-o fa-2x "></i>Excel Report</button>
                	</div>
                </div>
                </div>
                
             
             <br>
             <div class="row">
                <div class="col-lg-12">
                   
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>LR No</th>
                                            <th>Product</th>
                                            <th>Origin</th>
                                            <th>Destination</th>
                                            <th>Sender</th>
                                            <th>Consignee</th>
                                            <th>Total Parcel</th>
                                            <th>Weight</th>
                                            <th>Service</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td>LR 0025</td>
                                            <td>Product</td>
                                            <td>Coimbatore</td>
                                            <td>Chennai</td>
                                            <td>Kali</td>
                                            <td>Durai</td>
                                            <td>2</td>
                                            <td>100Kg</td>
                                            <td>Parcel</td>
                                            <td>Delivered</td>
                                        </tr>
                                 
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                 
                </div>
            </div>
             
             
             
             
             
             
                
              
            
        </div>
        <!-- /. PAGE WRAPPER  -->
		
		
    </div>
    <!-- /. WRAPPER  -->
    

    <script src="resources/built-in/assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="resources/built-in/assets/js/dataTables/dataTables.bootstrap.js"></script>

     <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>

</body>

</html>