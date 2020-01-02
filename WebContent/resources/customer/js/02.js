
$(document).ready(function () {
	
	//pagination pastry page
    var numberOfItems = $(".list-pastry li").length;
    //console.log(numberOfItems);
    var limitPerPage = 9;   
    $(".list-pastry li:gt(" + (limitPerPage - 1) + ")").hide();
    var totalPages = Math.ceil(numberOfItems / limitPerPage);  

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
            //console.log(currentPage);
            $(".pagination ul li").removeClass("active");
            $(this).addClass("active");
            $(".list-pastry li").hide();
            var grandTotal = currentPage * limitPerPage;
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $(".list-pastry li:eq(" + i + ")").show();
            }

            $("html, body").animate({ scrollTop: 700 }, 600);
           
        }

    });

    $("#nextPage").on("click", function () {
        var currentPage = $(".pagination ul li.active").index();
        //console.log(currentPage);
        if (currentPage === totalPages) {
            return false;
        } else {
            $(".pagination ul li").removeClass("active");
            $(".list-pastry li").hide();
            currentPage++;
            var grandTotal = currentPage * limitPerPage;

            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $(".list-pastry li:eq(" + i + ")").show();
            }

            $(".pagination ul li.crtPage:eq(" + (currentPage - 1) + ")").addClass("active");
            $("html, body").animate({ scrollTop: 700 }, 600);
        }

    });

    $("#prevPage").on("click", function () {
        var currentPage = $(".pagination ul li.active").index();
       // console.log(currentPage);
        if (currentPage === 1) {
            return false;
        } else {
            $(".pagination ul li").removeClass("active");
            currentPage--;
            $(".pagination ul li.crtPage:eq(" + (currentPage - 1) + ")").addClass("active");
            $(".list-pastry li").hide();

            var grandTotal = currentPage * limitPerPage;

            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $(".list-pastry li:eq(" + i + ")").show();
            }
            
            $("html, body").animate({ scrollTop: 700 }, 600);
        }

    });
})