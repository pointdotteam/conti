 		$(document).ready(function(){
			/*$('#trowser').each(function() {
				animationHover(this, 'slideInDown');
			});*/
			
			$('.test').click(function(){
				$('#trowserbody').load('file:///F:/Broman/blank-page');
			});
			
			$('body').addClass('scrollHidden');		
			$('.trowser').removeClass('hideme');
			animationOpenClick('.trowser', 'slideInDown');
			
			
			
			
			
			//shows the trowser
			$('#trowserShow').click(function(){
				$('.trowser').removeClass('hideme');
				$('body').addClass('scrollHidden');
				
				animationClick('.trowser', 'slideInDown');   
				
			});
			
			
			//hides the trowser
			$('#trowserHide').click(function(){				
				animationClick('.trowser', 'bounceOutUp');
				window.setTimeout( function(){
				$('.trowser').addClass('hideme');
				window.location.reload();
				},1000);
				
				
			});
			
			
			//------------------------------ Drawer close event begin---------------------//
			$('#contactSave').click(function(){
				
				 BootstrapDialog.confirm({
					title: 'WARNING',
					message: ' Do you want to save?',
					type: BootstrapDialog.TYPE_WARNING, // <-- Default value is BootstrapDialog.TYPE_PRIMARY
					closable: false, 
					draggable: false, 
					btnCancelLabel: 'No!', // <-- Default value is 'Cancel',
					btnOKLabel: 'Yes!', // <-- Default value is 'OK',
					btnOKClass: 'btn-warning', // <-- If you didn't specify it, dialog type will be used,
					callback: function(result) {
						
						if(result) {
							
							window.setTimeout( function(){
								
								$('.successmsg').removeClass('hideme');
								animationOpenClick('.successmsg', 'slideInDown');
							
							}, 1000);
						
							window.setTimeout( function(){
							
								animationOpenClick('.drawer', 'bounceOutRight');
							
							}, 3000);
						
							window.setTimeout( function(){
								$('.overlay').addClass('hideme');
								$('.drawer').addClass('hideme');
							
							}, 4000);
						
						
						
							window.setTimeout( function(){
							
								animationOpenClick('.successmsg', 'slideOutUp');
							
							}, 3000);  
						
						
							window.setTimeout( function(){
							
								$('.successmsg').addClass('hideme');
								history.back(0);
							}, 4000); 
							
							
						}else {
							
						}
					}
				});
			
			});
			
			function animationClick(element, animation){
				element = $(element);
				
					
						element.addClass('animated ' + animation);        
						//wait for animation to finish before removing classes
						window.setTimeout( function(){
							element.removeClass('animated ' + animation);
						}, 1000);         
			  
					
			}
			
			
			//open the drawer
			$('.drawerOpen').click(function(){
				$('.overlay').removeClass('hideme');				
				$('.drawer').removeClass('hideme');
				$('body').addClass('scrollHidden');	
			
				animationOpenClick('.drawer', 'bounceInRight');
			});
			
			//close the drawer
//			$('.drawerClose').click(function(){
//				
//				$('.overlay').addClass('hideme');
//				animationOpenClick('.drawer', 'bounceOutRight');
//				window.setTimeout( function(){ 
//				$('.drawer').addClass('hideme');
//
//				},1000);
//				
//				
//			});
			//------------------------------ Drawer close event begin---------------------//
			$('.drawerClose').click(function(){
				//alert("call Trowserdrawer"+  feedtyperefresh);
				console.log("callTrowserdrawer" );
				 BootstrapDialog.confirm({
					title: 'WARNING',
					message: 'Warning! Do you want to close without save?',
					type: BootstrapDialog.TYPE_WARNING, // <-- Default value is BootstrapDialog.TYPE_PRIMARY
					closable: false, 
					draggable: false, 
					btnCancelLabel: 'No!', // <-- Default value is 'Cancel',
					btnOKLabel: 'Yes!', // <-- Default value is 'OK',
					btnOKClass: 'btn-warning', // <-- If you didn't specify it, dialog type will be used,
					callback: function(result) {
						
						if(result) {
							
							animationClick('.trowser', 'bounceOutUp');
							window.setTimeout( function(){
							$('.trowser').addClass('hideme');
//							history.back(0);
							location.reload(true);
							
							},1000);
							
							
						}else {
							
						}
					}
				});
			
			});
			
			function animationOpenClick(element, animation){
				element = $(element);
				
					
						element.addClass('animated ' + animation);        
						//wait for animation to finish before removing classes
						window.setTimeout( function(){
							element.removeClass('animated ' + animation);
						}, 1000);         
			  
					
			}
			
			$("#trowserBack").click(function(e){
	 			animationOpenClick('.trowser', 'bounceOutUp');
	 			window.setTimeout( function(){
					$('.trowser').addClass('hideme');
					e.preventDefault();
					history.back(0);
					//location.reload(true);
					},1000);
	 		});
	 		$("#trowserCancel").click(function(e){
	 			animationOpenClick('.trowser', 'bounceOutUp');
	 			window.setTimeout( function(){
					$('.trowser').addClass('hideme');
					e.preventDefault();
					history.back(0);
					//location.reload(true);
					},1000);
	 		});
		});