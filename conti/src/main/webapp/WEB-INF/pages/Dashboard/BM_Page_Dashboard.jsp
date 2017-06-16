<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
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
		src: url("resources/broman/font-awesome/fonts/RageItalic.ttf");
	
	}
	
	</style>
</head>

<body>


<!-- <div class="trowser hideme">  -->
<!-- 			<div class="modal-header"> Header -->
<!-- 			<button type="button" class="btn btn-primary" style="float:right;" id="trowserHide">Close</button> -->
<!-- 			</div> -->
			
<!-- 			<div class="modal-body trowserbodycolor"  id ="trowserbody" style="height:840px;"> -->
<!-- 				Body		 -->
<!-- 			</div> -->

<!-- 			<div class="modal-footer" style="min-height: 75px;">  -->
<!-- 				<button type="button" class="btn btn-primary drawerOpen" style="float:right;">Drawer</button> -->
<!-- 				<button type="button" class="btn btn-primary test" style="float:right;">Drawer</button> -->
<!-- 			</div> -->
<!--   </div> -->
  
  
  
  
  
<!--   <div class="drawer hideme"> 		 -->
<!-- 	<div class="modal-body static drawerBody" > -->
<!-- 		<div class="row" style="height:880px;"> -->
<!-- 			<div class="col-lg-12"> -->
<!-- 				<h1 class="page-header">Drawer</h1> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
<!-- 	<div class="modal-footer drawerFooter" > -->
<!-- 		<div class="row"> -->
<!-- 			<button type="button" class="btn btn-primary" style="float:right; margin-right: 25px;" id="drawerClose">Close</button> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!--   </div> -->
  
  
   
  <div id="wrapper">
  
	
        <!-- Navigation -->
       
		<div id="page-wrapper" style="height: 1050px;">

            <div class="container-fluid">
<div>
        <jsp:include page="BM_Page_Nav.jsp"/>
</div>
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard
                           
                        </h1>
                        
                    </div>
                </div>
                <!-- /.row -->
				<div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="panel panel-default">
                            <div class="panel-body" style="height: 250px;">
                               
	 <img src="resources/image/broman.png" />
										We are currently working on this !
					
			
			
                    </div>
                </div>
				
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
		<!-------------------- POP OUT START-------------------------------->
			 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialogpopup">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Popup Alert</h4>
						</div>
						<div class="modal-body">
						 
						
						<div class="col-lg-6"><img src="resources/image/broman.png" /></div>
										We are currently working on this !
						 
						</div>
						<div class="modal-footer">
<!-- 							<button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button> -->
<!-- 							<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button> -->
						  
						</div>
					</div>
				   
				</div>
			   
			</div>
		<!-------------------- POP OUT END-------------------------------->
		
			
    </div>
	</div>
	</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/broman/js/bootstrap.min.js"></script>    
	<script src="resources/broman/js/jquery.js"></script> 
<!--      Trouser Drawer JavaScript -->
<!-- 	<script src="resources/broman/js/trouserDrawer.js"></script> -->
	
</body>

</html>
