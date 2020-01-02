
function pagination(className) {
    var numberOfItems = $(".menu-img li." + className).length;
    if(className=="Drink"){    	
    	numberOfItems=$(".menu-img li.Juice, li.Coffee, li.MilkTea").length;    	
    }   
  
    var limitPerPage = 9;
    //console.log(numberOfItems);
    if(className=="Drink"){    	
    	var n = limitPerPage;
    	if(numberOfItems<limitPerPage){    	
    		var n = numberOfItems;
    	}
    	$(".menu-img li").hide();
    	for(var t=0; t<n;t++){    		
    		$(".menu-img li.Juice, li.Coffee, li.MilkTea").eq(t).show();
    	}
    	
    }else{
    	$(".menu-img li." + className + ":gt(" + (limitPerPage - 1) + ")").hide();
    }
    
    var totalPages = Math.ceil(numberOfItems / limitPerPage);
    //console.log("totalpage : "+ totalPages);
    var numberOfNavigation = $(".pagination ul li").length;
    //console.log(numberOfNavigation);        
    $(".pagination ul li").remove();

    $(".pagination ul").append("<li id='prevPage'><a href='javascript:void(0)'>&laquo;</a></li>  ");
    $(".pagination ul").append("<li class='active crtPage' ><a  href='javascript:void(0)'>1</a></li>");
    for (var i = 2; i <= totalPages; i++) {
        $(".pagination ul").append("<li class='crtPage'><a href='javascript:void(0)'>" + i + "</a></li>");
    }
    $(".pagination ul").append(" <li id='nextPage'><a href='javascript:void(0)'>&raquo;</a></li>");

    $(".pagination ul li.crtPage").on("click", function () {
        if ($(this).hasClass("active")) {
            return false;
        } else {
            var currentPage = $(this).index();
            console.log(currentPage);
            $(".pagination ul li").removeClass("active");
            $(this).addClass("active");
            $(".menu-img li").hide();
            var grandTotal = currentPage * limitPerPage;
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
            	if(className=="Drink"){
            		$(".menu-img li.Juice, li.Coffee, li.MilkTea").eq(i).show();
            	}else{            		
            		$(".menu-img li." + className + ":eq(" + i + ")").show();            		
            	}
                
            }

            $("html, body").animate({ scrollTop: 700 }, 600);
            //$("html, body").scrollTop(700);
        }

    });

    $("#nextPage").on("click", function () {
        var currentPage = $(".pagination ul li.active").index();
        console.log(currentPage);
        if (currentPage === totalPages) {
            return false;
        } else {
            $(".pagination ul li").removeClass("active");
            $(".menu-img li").hide();

            currentPage++;
            var grandTotal = currentPage * limitPerPage;

            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
            	if(className=="Drink"){
            		$(".menu-img li.Juice, li.Coffee, li.MilkTea").eq(i).show();
            	}else{            		
            		$(".menu-img li." + className + ":eq(" + i + ")").show();            		
            	}
            }

            $(".pagination ul li.crtPage:eq(" + (currentPage - 1) + ")").addClass("active");
            $("html, body").animate({ scrollTop: 700 }, 600);
        }

    });

    $("#prevPage").on("click", function () {
        var currentPage = $(".pagination ul li.active").index();
        console.log(currentPage);
        if (currentPage === 1) {
            return false;
        } else {
            $(".pagination ul li").removeClass("active");
            currentPage--;
            $(".pagination ul li.crtPage:eq(" + (currentPage - 1) + ")").addClass("active");
            $(".menu-img li").hide();

            var grandTotal = currentPage * limitPerPage;

            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
            	if(className=="Drink"){
            		$(".menu-img li.Juice, li.Coffee, li.MilkTea").eq(i).show();
            	}else{            		
            		$(".menu-img li." + className + ":eq(" + i + ")").show();            		
            	}
            }

            $("html, body").animate({ scrollTop: 700 }, 600);
        }

    });
}

$(document).ready(function () {
    // var grid = $('.grid').isotope({
    //options
    //itemSelector: '.grid-item',
    //layoutMode : 'fitRows'
    // });
    // var grid = $('.grid').isotope({
    //     itemSelector: '.grid-item'
    // });

    // $("ul.nav-menu li a").click(function(){       
    //     var filters = $(this).data('filter');
    //     console.log(filters);



    //     grid.isotope({
    //         filter: filters
    //     })

    //     return false;
    // })

    //     var body = $("html, body");
    // body.stop().animate({scrollTop:0}, 500, 'swing');

	
	
	
	
    //index menu
    $(".menu-img-index li.Hot:gt(5)").hide(); 
    $("ul.index-menu li").on("click", function () {
        $("ul.index-menu li").removeClass("active");
        $(this).addClass("active");
        var name = $(this).attr("name");
        //console.log(name);
        $(".menu-img li").hide();
        $(".menu-img li").filter("." + name).show();
        //pagination(name);
        var limitPerPage = 6;
        if(name=="Drink"){
        	var numberOfItemsDrink = $(".menu-img li.Coffee, li.Juice, li.MilkTea").length;
        	var n = limitPerPage;
        	if(numberOfItemsDrink < limitPerPage){
        		n=numberOfItemsDrink;
        	}
        	for(var t =0; t<n; t++){
        		$(".menu-img li.Coffee, li.Juice, li.MilkTea").eq(t).show();
        	}
        }else{
        	$(".menu-img li." + name + ":gt(" + (limitPerPage - 1) + ")").hide();     
        }
        
        
                     
    })

    //pagination menu
    pagination("Hot");

    $("ul.nav-menu li").on("click", function () {
        $("ul.nav-menu li").removeClass("active");
        $(this).addClass("active");
        var name = $(this).attr("name");
        //console.log(name);
        $(".menu-img li").hide();
        $(".menu-img li").filter("." + name).show();
        pagination(name);
    })

    $("ul.nav-drink li").on("click", function () {
        $("ul.nav-drink li").removeClass("active");
        $(this).addClass("active");
    })

    $("ul.nav-pastry li").on("click", function () {
        $("ul.nav-pastry li").removeClass("active");
        $(this).addClass("active");
    })

    //bottom drink slide
    var crtPageDrink = 1;
    var numberOfItemsDrink = $(".bottom-drink li").length;
    var limitPerPage = 6;
    var totalPagesDrink = Math.ceil(numberOfItemsDrink / limitPerPage);
    $(".bottom-drink li:gt(" + (limitPerPage - 1) + ")").hide();
    $(".introduce_drinks .icon-next").on("click", function () {
        if (crtPageDrink === totalPagesDrink) {
            return false;
        } else {
            crtPageDrink++;
            $(".bottom-drink li").hide();
            var grandTotal = crtPageDrink * limitPerPage;
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $(".bottom-drink li:eq(" + i + ")").show();
            }
        }
        //console.log($(this));
    });

    $(".introduce_drinks .icon-prev").on("click", function () {
        if (crtPageDrink === 1) {
            return false;
        } else {
            crtPageDrink--;
            $(".bottom-drink li").hide();
            var grandTotal = crtPageDrink * limitPerPage;
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $(".bottom-drink li:eq(" + i + ")").show();
            }
        }

    });


    //bottom pastry slide
    var crtPagePastry = 1;
    var numberOfItemsPastry = $(".bottom-pastry li").length;
    var limitPerPagePastry = 6;
    var totalPagesPastry = Math.ceil(numberOfItemsPastry / limitPerPagePastry);
    $(".bottom-pastry li:gt(" + (limitPerPagePastry - 1) + ")").hide();
    $(".introduce_pastry .icon-next").on("click", function () {
        if (crtPagePastry === totalPagesPastry) {
            return false;
        } else {
            crtPagePastry++;
            $(".bottom-pastry li").hide();
            var grandTotal = crtPagePastry * limitPerPagePastry;
            for (var i = grandTotal - limitPerPagePastry; i < grandTotal; i++) {
                $(".bottom-pastry li:eq(" + i + ")").show();
            }
        }
        //console.log($(this));
    });

    $(".introduce_pastry .icon-prev").on("click", function () {
        if (crtPagePastry === 1) {
            return false;
        } else {
            crtPagePastry--;
            $(".bottom-pastry li").hide();
            var grandTotal = crtPagePastry * limitPerPagePastry;
            for (var i = grandTotal - limitPerPagePastry; i < grandTotal; i++) {
                $(".bottom-pastry li:eq(" + i + ")").show();
            }
        }

    });




})