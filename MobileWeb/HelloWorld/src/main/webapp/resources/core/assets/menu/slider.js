$(document).ready(function() {
	$("#closeSlider").click(function(){
		animateSlider();
	});

	//Para abrir com swipe
	$(this).swipe({
		swipeRight:function(event, direction, distance, duration, fingerCount) {
			animateSlider();  
		},
		
	});
	//Para Fechar com Swipe
	$(this).swipe({
		swipeLeft:function(event, direction, distance, duration, fingerCount) {
			setSliderSize();  
		},
		
	});
		
	$(document).ready(function() {
		$('#content').off('click');
		setSliderSize();
	});
	
	$( window ).resize(function() {
		setSliderSize();
		scaleTabs();
	});
	
	//abrir slider ao carregar no botao
	$("#toggleMenu").click(function(event){
		event.preventDefault();
		animateSlider();
	});
	
	$('#menu > li').click(function (event){
	    var idVal = $(this).find("a").attr('id');
	    var children = $(".menu > li");
	    children.removeClass("selected");
	    if($(event.target).prop("tagName") == "A" || $(event.target).prop("tagName") == "a"){
	    	$(event.target).parent().addClass("selected");
	    }else{
	    	$(event.target).addClass("selected");
	    }
	    
	    animateSlider();
	    
	    if(idVal == "logOut"){
	    	 event.preventDefault();
	         var addr  = $(this).find("a").attr("href");
	         var seTitle = $(this).find("a").attr("datatitle");
	         var urlA = addr;
	         $.ajax({
	        	 url:"",
	             type:"DELETE",
	             cache:false,
	             success:function(result){
	                 $('#toggle').html(result);
	                 $('#title').html(seTitle);
	                 //$("#toggleMenu").hide();
	             }
	         });
	    }else if( idVal != "" && idVal != " ")
	       {
	            event.preventDefault();
	            var addr  = $(this).find("a").attr("href");
	            var seTitle = $(this).find("a").attr("datatitle");
	            var urlA = addr;
	            $.ajax({
	                url:urlA,
	                cache:false,
	                success:function(result){
	                    $('#toggle').html(result);
	                    $('#title').html(seTitle);
	                    
	                }
	            });
	        }
	});
	
});


function animateSlider(){
	
	var width = parseInt($(window).width())-105;
	setSliderSize();
	//vai fechar
	if($("#slider").css("right") == "105px"){

		$("#slider").animate({right:"100%"},function(){$("#slider").css("width","0")});
		$("#content").animate({left:"0px",
					right:"0px"});
		$('#closeSlider').css("z-index","100");
		$('#content').css("z-index","101");
		$('#closeSlider').hide();
		$('#content').css("overflow-y","auto");	
		setTimeout(function(){$("#slider").hide();},500);
	}//vai abrir
	else{
		$("#slider").show();
		$("#slider").animate({right:"105px"});
		$("#slider").css("width",width+"px");
		$("#content").animate(
				{left:width+"px",
				right:"-"+width+"px"});
		$('#closeSlider').css("z-index","101");
		$('#content').css("z-index","100");
		$('#closeSlider').show();
		$('#content').css("overflow-y","hidden");
	}
}

function setSliderSize(){
	var width = parseInt($(window).width())-105;
	//esta aberto, ajustar tamanho
	if($("#slider").css("right") == "105px"){
		$("#content").css("left",width+"px");
		$("#content").css("right","-"+width+"px");		
		$("#slider").css("width",width+"px");

		//esta fechado, ajustar tamanho
	}else{
		$("#content").css("left","0px");
		$("#content").css("right","0px");
		$("#slider").css("width","0px");
	}
	

}

/*

$('#menu > li').click(function (event){
    var idVal = $(this).find("a").attr('id');
    var children = $(".menu > li");
    children.removeClass("selected");
    if($(event.target).prop("tagName") == "A" || $(event.target).prop("tagName") == "a"){
    	$(event.target).parent().addClass("selected");
    }else{
    	$(event.target).addClass("selected");
    }
    
    animateSlider();
    
	//Faz os eventos do click
    if(idVal == "logOut"){
    	 event.preventDefault();
         var addr  = $(this).find("a").attr("href");
         var urlA = addr;
         $.ajax({
        	 url:"",
             type:"DELETE",
             cache:false,
             success:function(result){
                 $('#toggle').html(result);
                 $("#toggleMenu").hide();
             }
         });
    }
    else if( idVal != "" && idVal != " ")
    {
        event.preventDefault();
        var addr  = $(this).find("a").attr("href");
        var urlA = addr;
        $.ajax({
            url:urlA,
            cache:false,
            success:function(result){
                $('#toggle').html(result);
                $('#title').html("HAHAHA");
                scaleTabs();
            }
        });
    }
});
*/

function scaleTabs(){
	try{
		
		var width = parseInt($(window).width());
		var tabs = $("#tabs")[0];
		if(tabs != undefined){
			$(tabs).css("width",width-(width/100)*2+"px");
			$(tabs).css("margin-right","1%");
			$(tabs).children().css("width",(width-(width/100-2)*2-(15*$(tabs).children().length))/$(tabs).children().length+"px");
		}
	}catch(err){
		console.log("NO TABS!");
	}
	
}

//Scrooldown iPhone
$("#content").scroll(function () {
	if(navigator.userAgent.indexOf("iPhone") == -1)
		
	if ($("#content").scrollTop() > "400") {
        $("#topAnchor").show();
    } else {
    	$("#topAnchor").hide();
    }
});

$( "body" ).on( "click", "#topAnchor", function() {
	$("body, #content").animate({ scrollTop: 0 }, 500);
});










