
// begin---------------------//
$('.drawerOpen').click(function(){


	window.setTimeout(function(){	
		animationOpenClick('.overlay', 'fadeIn');	
	},750);
	
	window.setTimeout(function(){	
		$('.overlay').removeClass('hideme');
	},1400);
	
	window.setTimeout(function(){	
		$('.drawer').removeClass('hideme');
		$('body').addClass('scrollHidden');
	},1500);

	window.setTimeout(function(){	
		animationOpenClick('.drawer', 'bounceInRight');
	},1500);
	
	
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
	//$('.overlay').addClass('hideme');

	window.setTimeout(function(){							
	$('.drawer').addClass('hideme');
	
	},1000);
	
	window.setTimeout(function(){	
		animationOpenClick('.overlay', 'fadeOut');	
	},1200);
	window.setTimeout(function(){	
		$('.overlay').addClass('hideme');
		$('body').removeClass('scrollHidden');
	},1500);
	
});
// ------------------------------ Drawer Open event
// end---------------------//




 