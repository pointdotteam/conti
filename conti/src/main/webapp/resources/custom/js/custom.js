
// begin---------------------//
$('.drawerOpen').click(function(){


	$('.overlay').removeClass('hideme');
	
	$('.drawer').removeClass('hideme');
	$('body').addClass('scrollHidden');
	

	animationOpenClick('.drawer', 'bounceInRight');
});


//---------------------------- Animate function
// begins----------------------------------//
function animationOpenClick(element, animation){
	element = $(element);				
	element.addClass('animated ' + animation);        
	// wait for animation to finish before removing classes
	window.setTimeout( function(){
		element.removeClass('animated ' + animation);
	}, 1000);         

}
// ---------------------------- Animate function
// end----------------------------------//


$('.drawerClose').click(function(){
	
		
	animationOpenClick('.drawer', 'bounceOutRight');
	$('.overlay').addClass('hideme');

	window.setTimeout(function(){							
	$('.drawer').addClass('hideme');
	
	$('body').removeClass('scrollHidden');
	},1000);
	
	
	
});
// ------------------------------ Drawer Open event
// end---------------------//




 