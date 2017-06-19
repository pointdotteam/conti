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
                
                
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">                            
						<div class="panel-heading">
							Shipment Filter
						</div>
						<div class="panel-body customer-field">
							<div class="col-lg-2">
							  <span class="pull-right">From Branch</span>
							</div>
							
							<div class="col-lg-2">
								<select class="form-control">
		                			<option>Coimbatore Branch</option>
		                			<option>Chennai Branch</option>
		                			<option>Bangalore Branch</option>
	                		    </select>
							</div>
							
							<div class="col-lg-1">
							  To Branch
							</div>
							
							<div class="col-lg-2">
								<select class="form-control">
		                			<option>Coimbatore Branch</option>
		                			<option>Chennai Branch</option>
		                			<option>Bangalore Branch</option>
	                		    </select>
							</div>
							
							<div class="col-lg-1">
							  Shipment Date
							</div>
							
							<div class="col-lg-1">
								<input type="text" class="form-control">
							</div>
							
							<div class="col-lg-1">
							 <button type="button" class="btn btn-info">View Shipment</button>
							</div>
							
							<div class="col-lg-2">
								<span>LR Number <input type="text" name="search" placeholder="search"></span>
							</div>
							
							
							
						</div>
                        </div>
                    </div>
                </div>
                
                
                
                
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
                                            <th>Date</th>
                                            <th>LR No</th>
                                            <th>Product</th>
                                            <th>Origin</th>
                                            <th>Destination</th>
                                            <th>Sender</th>
                                            <th>Consignee</th>
                                            <th>Status</th>
                                            <th>Receipt</th>
                                            <th>Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td>19-06-2017</td>
                                            <td>LR 0025</td>
                                            <td>Product</td>
                                            <td>Coimbatore</td>
                                            <td>Chennai</td>
                                            <td>Kali</td>
                                            <td>Durai</td>
                                            <td>Delivered</td>
                                            <td>Receipt </td>
                                            <td>Action</td>
                                            
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
    

</body>

</html>