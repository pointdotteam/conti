 		// ------------------------ track Session ------------------------------------------------ // 
 		
		var valid = false;
		
		function force_logout () {
	 		
	 		 var token = $("meta[name='_csrf']").attr("content");
	 		 var header = $("meta[name='_csrf_header']").attr("content");
	 		 alert("call force_logout");
	 		 $.ajax({
	 		        url : 'logout',
	 		        type : 'POST',
	 		        data: token,
	 		        beforeSend:function(xhr){
	 		             xhr.setRequestHeader(header, token);
	 		        },
	 		        success : function(data) { 
	 		        	window.location ="http://localhost:8080/Conti/login?logout";    
	 		        }, 
	 		        error : function(data) {
	 		            console.log(data);
	 		        }
	 		    });
	 	} 

//		 window.onload = function (e) {
//			
//			  console.log(e);
//		  }
		 
			window.onbeforeunload = function(e) {	
				console.log(e);
				
	 	        if( !valid ){
	 	        	force_logout();
	 	        }
	 	       } 
			 
			$("button").on("click", function() {
		 		  valid = true;			
		 		}); 
			
			$("tr").on("dblclick", function() {
		 		  valid = true;			
		 		});
	 	
	 	  $("a").bind("click", function() {
	 		  valid = false;			
	 		}); 
	 	  
	 		  $(document.body).on("keydown", this,
	 		     function (event) {
	 			  
	 		        if (event.keyCode == 116) { valid = true; } 
	 		        if( event.keyCode == 82 && event.ctrlKey) { valid = true; } 
	 		        if( event.keyCode == 82 && event.ctrlKey && event.shiftKey ) { valid = true; }
	 		});
			
	 		 function setValidtrue(){
	 			 valid = true;
	 		 }