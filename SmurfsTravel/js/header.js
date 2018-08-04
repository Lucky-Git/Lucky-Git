$(()=>{
	var link=document.createElement("link");
	link.href="css/header.css";
	link.rel="stylesheet";
	document.head.appendChild(link);
	$.ajax({
		type:"get",
		url:"header1.html",
		success:function(html){
			$("#header").html(html);
			$(".menu-list").on("click",".dropdown",function(e){
				e.preventDefault();
				var a=$(this);
				a.siblings().addClass("show")
				 .parent().siblings().children().removeClass("show");
					a.blur(function(){
					$(".menu-list").find(".show").hide();//removeClass("show");
				});
				
			 
			});
			$(".menu-list>li:eq(3)").click(function(){//$("#i4").click(function(){
					location.href="hotel.html?back="+location.href;
			});
			$(".header .order_once").click(function(){
				location.href="login.html?back="+location.href;
				
			 })
		
		}
	});
	
}) 