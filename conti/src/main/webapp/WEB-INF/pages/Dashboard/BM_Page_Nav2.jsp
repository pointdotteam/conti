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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="topnavcolor fa fa-user fa-lg"></i><b class="caret"></b></a>
					
                    <ul class="dropdown-menu dropdown-user in myaccountpopupwidth">
						<li Style="background: #fff;">
							
								<div class="col-lg-12" style="padding-left:0px!important">
									<div class="col-lg-4">
										<br><img src="data:image/jpg;base64,${image}" onerror="this.onerror=null;this.src='data:image/jpg;base64,${Dummylogo}';" alt="data:image/jpg;base64,${Dummylogo}"  style="width:100px;height:100px;left: 100px;" /> &nbsp;&nbsp;&nbsp;
									</div>
									<div class="col-lg-8">
										<br><br>
										<span style="color:#337ab7; font-family: verdana;" >${sessionScope.bromanuser}</span><br>
											
											<c:forEach var="rlist" items="${rolelist}">
											 <c:if test="${rlist.role_Id == userdetaillist.role_Id}">
												<span style="color:#2e6da4; font-family: verdana;" ><c:out value="${rlist.role_Name}" /></span><br>
											</c:if>
												 </c:forEach>
										<span style="color:#2e6da4; font-family: verdana;font-weight:bold;" >${companydetail.company_Name}</span>
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
                        <a href="Adminpanel"><i class="fa fa-fw fa fa-book"></i>Broman Admin Panel</a>
                    </li>  
                    <li>
                        <a href="SignupRegister"><i class="fa fa-fw fa fa-book"></i> SignUp Register</a>
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
