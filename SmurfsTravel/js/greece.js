$(()=>{
	$(".tirp_detail_line").on("click",".tirp_detail_title",
		function(){
		var text=$(this).siblings()
			if(text.is(":hidden")){
				text.slideDown().prev().children(".trip_after").addClass("active");
				text.parent().siblings().children(".tirp_detail_text:not(:hidden)")
					.slideUp().prev().children(".trip_after").removeClass("active");
			}else{
				text.slideUp()
					.prev().children(".trip_after").removeClass("active");
			}
	});
	//弹出框效果
	$(".r_btn .t_myModal").click(function(e){
		e.preventDefault();
		var id=$(this).attr("href");
		if($(id).is(":hidden")){
			$(id).slideDown(3000);
		}else{
			$(id).slideUp(3000);
		}
		
	});
	$(".t_dialog .close").click(function(){
		$(".t_dialog").fadeOut();
	});
	//类似锚点效果
	$(".intro a").click(function(){
		var index=$(this).attr("data-index");
		var goScroll=0;//offset()是JQ中的用法，获取匹配元素在当前视口的相对偏移，
			//返回的对象包含两个属性：top left; offset().top获得位移高度
				//相对document	
		switch (index){
			case '1':
				goScroll=$("#1").offset().top;
				break;
			case '2':
				goScroll=$("#2").offset().top;
				break;
			case '3':
				goScroll=$("#3").offset().top;
				break;
			case '4':
				goScroll=$("#4").offset().top;
				break;
			case '5':
				goScroll=$("#5").offset().top;
				break;
			case '6':
				goScroll=$("#6").offset().top;
				break;
			default:alert("出错啦");
		}
		$('html,body').animate({scrollTop:goScroll-120},'slow');//slow是速度的一个等级，可以直接写秒数	
	});

	var ele=$(".intro ul");
	var startPos=ele.offset().top;//相对于文档（document）的上部的距离
	//console.log(startPos);
	$.event.add(window,"scroll",function(){
		var p=$(window).scrollTop();//超出文档显示区的距离
		//console.log(p);
		ele.css("position",(p>startPos)?"fixed":"absolute");
		ele.css("top",(p>startPos)?"100px":"");
		ele.css("width","100%");
		
	})
	
})