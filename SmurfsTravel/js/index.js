$(()=>{
	//请求目的地数据
	$.ajax({
		type:"get",
		url:"data/index/getDestination.php",
		dataType:"json",
		success:function(data){
			//console.log(data);
			var html="";
			for(var i=0;i<data.length/2;i++){
				var {pic,title,href}=data[i];
				html+=`<li>
							<a href="${href}">
								<img src="${pic}" alt="">
								<div class="blue_img_4_title">${title}</div>
							</a>
						</li>`;
			}
			$(".destination>ul:eq(0)").html(html);
			var html="";
			for(var i=4;i<data.length;i++){
				var {pic,title,href}=data[i];
				html+=`<li>
							<a href="${href}">
								<img src="${pic}" alt="">
								<div class="blue_img_4_title">${title}</div>
							</a>
						</li>`;
			}
			$(".destination>ul:eq(1)").html(html);
		},
		error:function(){
			// alert("网络故障请检查");
		}
	});
	$(".header .order_once").click(function(){
				alert("疼");
				// location.href="login.html?back="+location.href;
			})
	//请求推荐景点的数据
	$.ajax({
		type:"get",
		url:"data/index/getRecom.php",
		dataType:"json",
		success:function(data){
			console.log(data);
			var html="";
			for(var i=0;i<data.length/2;i++){//for(var p of data){
				var {pic,title,sub_title,price,href}=data[i];
				html+=`<li>
					<div class="blue_img_3_img">
						<img src="${pic}" alt=""> 
						<p>${title}</p> 
					</div> 
					<div class="blue_img_3_day">
						<span class="lf">7天</span> 
						<span class="rf">${price}</span>
					</div>
					<div class="blue_img_3_text"> 
						<p>${sub_title}</p> 
						<a href="${href}" class="rf btn btn-detail">查看详情</a>
					</div>
				</li>`;
			}
			$(".recommend>ul:eq(0)").html(html);
			var html="";
			for(var i=3;i<data.length;i++){//for(var p of data){
				var {pic,title,sub_title,price,href}=data[i];
				html+=`<li>
					<div class="blue_img_3_img">
						<img src="${pic}" alt=""> 
						<p>${title}</p> 
					</div> 
					<div class="blue_img_3_day">
						<span class="lf">7天</span> 
						<span class="rf">${price}</span>
					</div>
					<div class="blue_img_3_text"> 
						<p>${sub_title}</p> 
						<a href="${href}" class="rf btn btn-detail">查看详情</a>
					</div>
				</li>`;
			}
			$(".recommend>ul:eq(1)").html(html);
		}
	});
	// 请求旅行类型的数据
	$.ajax({
		type:"get",
		url:"data/index/getTraType.php",
		dataType:"json",
		success:function(data){
			console.log(data);
			var html="";
			for(var d of data){
				var {pic,title,href}=d;
				html+=`<li class="t2"><a href="${href}">
				<img src="${pic}" alt=""><p>${title}</p></a></li>`;
			}
			html+=html;
			$(".total_type>.travelType>ul").html(html);
				var $ulImgs=$(".travelType>ul");
		var index=0,LIWIDTH=160;
		$(".forward").click(function(e){
			e.preventDefault();
			//btn_right();
			index++;
			$ulImgs.animate({left:-index*LIWIDTH},
			300,function(){
				if(index==6){
					$ulImgs.css("left",0);
					index=0;
				}
			})
		});
		
		$(".prev").click(function(e){
			e.preventDefault();
			 	if(index==0){
			 	index=6;
			 	$ulImgs.css("left",-index*LIWIDTH)
			 	}
			 	index--;
			 	$ulImgs.animate({"left":-index*LIWIDTH},300)
		})	;
			
		},
		error:function(){
			// alert("网络故障请检查");
		}
	});
	//请求底部总结
	$.ajax({
		type:"get",
		url:"data/index/getSumary.php",
		dataType:"json",
		success:function(data){
			//console.log(data);
			html="";
			for(var s of data){
				var {pic,title,sub_title,href}=s;
				html+=`<li>
							<img src="${pic}" alt="">
							<div>
								<h3>${title}</h3>
								<p>${sub_title}</p>
								<a href="${href}">查看更多</a>	
							</div>
						</li>`;
			}
			$(".sumary>ul").html(html);
		},
		error:function(){
			// alert("网络故障请检查");
		}
	})


	$("a.btn_article_before").click(function(e){
		e.preventDefault();
		$('.blue_article_before').hide();
        $('.blue_article_after').slideDown();
	 	
	});
	$("a.btn_article_after").click(function(e){
		e.preventDefault();
		$('.blue_article_before').show();
        $('.blue_article_after').slideUp();
	 	
	});
	$(".spec_fixed>img").click(function(){
		$(".spec_fixed").hide();
	});
	//	分享微信弹出框
	$(".share .share_btn .share_wx_icon").hover(
		function(){
		
			$(".share_wx").addClass("s_active")
				.siblings().removeClass("s_active");
		},
		function(){
			$(".share_wx").removeClass("s_active");
		}
	);
	$(".share .share_btn .share_mail_icon").hover(
		function(){
		
			$(".share_mail").addClass("s_active")
				.siblings().removeClass("s_active");
		},
		function(){
			$(".share_mail").removeClass("s_active");
		}
	)
})