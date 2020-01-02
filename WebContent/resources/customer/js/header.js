$(document).ready(function(){	
	//navbar header
	
	$("ul.navbar-nav li").on("click", function(){
		$("ul.navbar-nav li").removeClass("active");
		$(this).addClass("active");
	});
	//back to top
	$(window).scroll(function() {
	    var height = $(window).scrollTop();

	    if(height  > 200) {	    	
	    	$(".back-to-top").css("transform","translateX(0)");
	    }else{	    	
	    	$(".back-to-top").css("transform","translateX(200%)");
	    }
	});
	$(".back-to-top").on("click",function(){
		$("html, body").animate({scrollTop: 0},1000);
	})
})