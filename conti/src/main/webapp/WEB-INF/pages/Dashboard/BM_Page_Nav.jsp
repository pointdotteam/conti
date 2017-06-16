<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>	
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<meta name="_csrf" content="${_csrf.token}" />
	<meta name="_csrf_header" content="${_csrf.headerName}" />
	<link rel="icon" type="image/gif/png" href="resources/image/broman.png">
    <title>Broman - Dashboard</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/broman/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/broman/css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/broman/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="resources/broman/css/animate.css">
	
	<!-- trouserDrawer CSS -->
	<link href="resources/broman/css/trouserDrawer.css" rel="stylesheet" type="text/css">
	
	<!-- Dashboard.css -->
	<link href="resources/broman/css/Dashboard.css"  rel= "stylesheet"  type="text/css"> 
	
    
	<style>
	
	@font-face {
		font-family: rageitalic;
		src: url("fonts/31297_RageItalic2.ttf");
	}
	
	
	</style>
</head>

<body>


  <div id="wrapper">
	
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:#F9b566; border-color:#f7C972">
            <!-- Brand and toggle get grouped for better mobile display -->
			
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"   
				style=" margin-left: 15px  ! important ; float: left ! important ;margin-right: 5px  ! important; padding: 8px 8px ! important; " 
				data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-fw fa-dashboard dashboardIcon" style="font-size: 20px; ! important ;" ></i>
                </button>
			
                <a class="navbar-brand" href="Dashboard" style="color:#292929;"><span>${companyname} </span></a><!--<i class="fa fa-map-marker fa-lg"></i>-->
				 
				 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".setbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar" style="height: 4px ! important ;"></span>
                    <span class="icon-bar" style="height: 4px ! important ;"></span>
                    <span class="icon-bar" style="height: 4px ! important ;"></span>
                </button>
            </div>
			
            <!-- Top Menu Items -->
			<div class="collapse navbar-collapse setbar-ex1-collapse">
            <ul class="nav navbar-right top-nav">
				<li class="dropdown">
                    <a href="#" class="dropdown-toggle topnavcolor" data-toggle="dropdown"><i class="fa fa-plus fa-lg"  ></i> <b class="caret"></b></a>
					<ul class="dropdown-menu entrypopupwidth">
					<div class="col-lg-12">
						<div class="col-lg-4 ">
							<li class="lititlesize">
								<a href=""> Entry</a>
							</li>
							<li class="divider"></li>
							<li class="lipadding">
								<a href="Mortality_Transaction">Mortality</a>
							</li>
							<li class="lipadding">
								<a href="Feed_Transaction"> Feed</a>
							</li>
							<li class="lipadding">
								<a href="Egg_Transaction"> Egg</a>
							</li>
							<li class="lipadding">
							
								<a href="Cull_Transaction"> Cull</a>
							</li>
							
							
							
						</div>
						
						<div class="col-lg-4">
							<li class="lititlesize">
								<a href="#">Record</a>
							</li>
							<li class="divider"></li>
							<li class="lipadding">
								<a href="Batch_Arrival"> Batch Arrival</a>
							</li>
							<li class="lipadding">
								<a href="Batch_Transfer"> Batch Transfer</a>
							</li>
							
							<li class="lipadding">
								<a href="Vaccine_Report_Transaction">Vaccine Report</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Production_Transaction">Production</a> -->
								<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Production</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Consumption_Transaction">Consumption</a> -->
								<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Consumption</a>
							</li>
						</div>
						
						<div class="col-lg-4">
							<li class="lititlesize">
								<a href="#"> Transaction</a>
							</li>
							<li class="divider"></li>
							<li class="lipadding">
<!-- 								<a href="Invoice_Transaction"> Invoice</a> -->
								 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Invoice</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Bill_Transaction"> Bill</a> -->
								 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Bill</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Expenses_Transaction"> Expense</a> -->
								 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Expense</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Journal_Transaction"> Journal</a> -->
								 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Journal</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Receipt_Transaction"> Receipt</a> -->
								 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Receipt</a>
							</li>
							<li class="lipadding">
<!-- 								<a href="Payment_Transaction"> Payment</a> -->
								 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Payment</a>
							</li>
						</div>
					</div>		
				</ul>
					
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle " data-toggle="dropdown"><i class="topnavcolor fa fa-cog fa-lg"></i> <b class="caret"></b></a>
                    	<ul class="dropdown-menu settingpopupwidth">
				<div class="col-lg-12">
					<div class="col-lg-4 ">
						<li class="lititlesize">
							<a href="#"> Flock Management</a>
						</li>
						<li class="divider"></li>
						<li class="lipadding">
							<a href="Strain"> Strain</a>
						</li>
						<li class="lipadding">
							<a href="Feed_Formulation"> Feed</a>
						</li>
						<li class="lipadding">
							<a href="Vaccination"> Vaccination</a>
						</li>
					</div>
						
					<div class="col-lg-4">
						<li class="lititlesize">
							<a href="#">Master</a>
						</li>
						<li class="divider"></li>
						<li class="lipadding">
							<a href="Farm"> Farm</a>
						</li>
						<li class="lipadding">
							<a href="Shed"> Shed</a>
						</li>
						<li class="lipadding">
							<a href="Item"> Item</a>
						</li>
						<li class="lipadding">
							<a href="Customer"> Customers</a>
						</li>
						<li class="lipadding">
							<a href="Supplier"> Suppliers</a>
						</li>
						<li class="lipadding">
<!-- 							<a href="Import"> Import Master</a> -->
							 <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Import Master</a>
						</li>
						
					</div>
						
					<div class="col-lg-4">
					
						<li class="lititlesize">
							<a href=""> Settings</a>
						</li>
						<li class="divider"></li>
						<li class="lipadding">
							<a href="Company"> Company Settings</a>
						</li>
						<li class="lipadding">
							<a href="General"> General Setting</a>
						</li>
<!-- 						<li class="lipadding"> -->
<!-- 							<a href=""> Import and Export</a> -->
<!-- 						</li> -->
						<li class="lipadding">
<!-- 							<a href="#">Accounting </a> -->
					<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Accounting</a>
						</li>
						<li class="lipadding">
							<a href="User_Control">User Management</a>
<!-- 							<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">User Management</a> -->
						</li>
						<li class="lipadding">
							<a href="Contact"> Alert and Notification</a> 
<!-- 							<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Alert and Notification</a> -->
						</li>
						<li class="lipadding">
							<a href="Listofcharts"> List of charts</a> 
							
						</li>
						
					
					</div>
				</div>		
				</ul>
					
                </li>
                
				<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="topnavcolor fa fa-flag fa-lg"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu dropdown-alerts in notificationpopupwidth">
						<li class="lipadding"><a href="#" class="active">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="lipadding"><a href="#" class="active">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="lipadding"><a href="#" class="active">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="lipadding"><a href="#" class="active">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="lipadding"><a href="#" class="active">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="lititlesize">
							<a class="text-center active" href="#"> Alerts & Notification and Setting </a>
						</li>
					</ul>
				</li>
				
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="topnavcolor fa fa-user fa-lg"></i><b class="caret"></b></a>
					
                    <ul class="dropdown-menu dropdown-user in myaccountpopupwidth">
						<li Style="background: #fff;">
							
								<div class="col-lg-12" style="padding-left:0px!important">
									<div class="col-lg-4">
										<br><img src="data:image/jpg;base64,${image}" onerror="this.onerror=null;this.src='data:image/jpg;base64,${Dummylogo}';" alt="data:image/jpg;base64,${Dummylogo}"  style="width:100px;height:100px;left: 100px;" /> &nbsp;&nbsp;&nbsp;
									</div>
									<div class="col-lg-8">
										<br><br>
										&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#337ab7; font-family: verdana;" >${usern}</span><br>
											&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2e6da4; font-family: verdana;font-weight:bold;" >${companyname}</span><br>
											<c:forEach var="rlist" items="${rolelist}">
											 <c:if test="${rlist.role_Id == userdetaillist.role_Id}">
												  &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2e6da4; font-family: verdana;" ><c:out value="${rlist.role_Name}" /></span>
											</c:if>
											</c:forEach>
										
									</div>
								</div>
							
						</li>
								
						<hr>
							<c:url value="/logout" var="logoutUrl" />
							<form action="${logoutUrl}" method="post" id="logoutForm">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								
							</form>
							<script>
								function formSubmit() {
									localStorage.setItem('pstate', 'dashnav');
									document.getElementById("logoutForm").submit();
									
								}
							</script>
								
							<c:if test="${pageContext.request.userPrincipal.name != null}">
							<div class="col-lg-12">
								<div class="col-lg-6">
									<button type="button" class="form-control btn btn-primary" data-toggle="modal" data-target="#myModal">My Account</button>
								</div>
								<div class="col-lg-6">
									<a href="javascrip	t:formSubmit()"><button type="button" class="form-control btn btn-default"><i class="fa fa-sign-out fa-fw"></i>Logout</button></a>
								</div>	
							</div>
							</c:if>	
							<div class="col-lg-12"><br></div>	
							</ul>
                </li>
            </ul>
			</div>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav" style="top: 60px !important;">
                    <li>
                        <a href="Dashboard"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    
					<li>
                        <a href="#" data-toggle="collapse" data-target="#Register"><i class="fa fa-book" aria-hidden="true"></i> Register</a>
                        <ul id="Register" class="collapse">
                            <li><a href="Batch_Register">Batch </a></li>
							<li><a href="Batch_Transfer_Register">Batch Transfer</a></li>
							<li><a href="Mortality_Register">Mortality </a></li>
							<li><a href="Feed_Register">Feed </a></li>
							<li><a href="Egg_Register">Egg </a></li>
							<li><a href="Cull_Register">Cull </a></li>
							<li><a href="Vaccine_Register">Vaccine</a></li>
                        </ul>
                    </li>
					<li>
<!--                         <a href="BM_Page_Store_REG"><i class="fa fa-cubes" aria-hidden="true"></i> Store</a> -->
                     	  <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal"> <i class="fa fa-cubes" aria-hidden="true"></i> Store</a>
                    </li>
					<li>
                        <a href="#" data-toggle="collapse" data-target="#Accounts"><i class="fa fa-inr" aria-hidden="true"></i> Accounts</a>
<!--                         <li><a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Accounts</a></li> -->
                        <ul id="Accounts" class="collapse">
<!--                             <li><a href="Sales_Register">Sales </a></li> -->
                            <li><a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Sales</a></li>
<!-- 							<li><a href="Purchase_Register">Purchase</a></li> -->
							<li><a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Purchase</a></li>
<!-- 							<li><a href="Expenses_Register">Expenses</a></li> -->
							<li><a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Expenses</a></li>
<!-- 							<li><a href="Cost_Center_Register">Cost Center</a></li> -->
							<li><a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal">Cost Center</a></li>
							
	                    </ul>
                    </li>
					
					
                    <li>
<!--                         <a class=""><i class="fa fa-bar-chart" aria-hidden="true"></i>  Reports</a> -->
                        <a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal"> <i class="fa fa-bar-chart" aria-hidden="true"></i> Reports</a></li>
                    </li>
                        
					
					<!-- <div class="navlistFooter collapse navbar-collapse navbar-ex1-collapse">-->
						<ul class="nav navbar-nav side-nav" style="top: 700px !important; overflow-y:hidden;">
							
							<li>
<!-- 								<a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> FAQ</a> -->
								<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal"><i class="fa fa-fw fa-desktop"></i>FAQ</a>
							</li>  
					
							<li>
<!-- 								<a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> Help & Support</a> -->
								<a style="cursor:pointer !important;" data-target="#commingSoon" data-toggle="modal"><i class="fa fa-fw fa-desktop"></i>Help & Support</a>
							</li> 
							
						</ul>
						
						
						<ul class="nav navbar-nav side-nav bromanLogo"  id="side-menu">
							<li class="bromanImage">
								<img src="resources/image/broman.png"  alt="Smiley face" height="116px" width="75%">
								
							</li>
							<li class="bromanName">
								<label style=" ">Broman</label>
							</li>
						</ul>
												
                </ul>	
				 
            </div>
		
            <!-- /.navbar-collapse -->
        </nav>
		</div>
  		<!-------------------- POP OUT START------------------------------>
			 <div class="modal fade" id="commingSoon" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialogpopup">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="col-lg-6"><img src="resources/image/broman.png" /></div>
									<h4 class="modal-title" id="myModalLabel">Under Production</h4>
									<div class="col-lg-6" style="position: absolute; top: 50%; left:70%; transform: translate(-50%,-50%); 
										">
										
										We are currently working on this !
									
									</div>
								</div>
							</div>
													 	
						 	
						</div>
						<div class="modal-footer">
							<!-- <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>	 -->					  
						</div>
					</div>
				   
				</div>
			   
			</div>
		<!-------------------- POP OUT END------------------------------>

    <!-- Bootstrap Core JavaScript -->
 
    <script src="resources/broman/js/bootstrap.min.js"></script>  
    <script src="resources/broman/js/jquery.js"></script>  
	<script src="resources/broman/js/session.js"></script> 
	
</body>

</html>
