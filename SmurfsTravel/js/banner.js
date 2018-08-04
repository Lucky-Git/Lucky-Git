$(()=>{
	$bannerImgs=$(".banner_container>.banner_content>ul");
	$buttons=$(".buttons");
	$.ajax({
		type:"get",
		url:"data/index/getCarousel.php",
		dataType:"json",
		success:function(pics){
			//console.log(pics);
			var html="";
			for(var i=0;i<pics.length;i++){
				var {href,title,img}=pics[i];
				html+=`<li class="p${i}">
						<a href="${href}" title="${title}">
                    		<img src="${img}"> 
                 		</a>
 					</li> `;
			}
			$bannerImgs.html(html);
			$buttons.html("<a href='javascript:;'></a>".repeat(pics.length))
					.children(":first").addClass("color");
		}
	})
	//鼠标移入显示左右箭头和关闭按钮
	var timer='';
	$(".banner_container").hover(
		function(){//鼠标移入
			$(".btn_left").show('1000');
			$(".btn_right").show('1000');
			$(".btn_close").show('1000');
			clearInterval(timer);
		},
		function(){//鼠标移出
			$(".btn_left").hide('1000');
			$(".btn_right").hide('1000');
			$(".btn_close").hide('1000');
			timer=setInterval(btn_right,4000);
		}
	);
	//点击关闭隐藏轮播图
	$(".btn_close").click(function(){
		$(".banner_container").hide('1000');
	});
	var arr=['p1','p2','p3','p4','p5'];
	var index=0;
	//点击上一张的封装函数
	function btn_left(){
		arr.unshift(arr[4]);//数组头部放入最后一张图片
		arr.pop();//数组尾部弹出
		$(".banner_content li").each(function(i,elem){
			$(elem).removeClass()
					.addClass(arr[i]);
		});
		index--;
		if(index<0){
			index=4;
		}
		show();
	}
	//点击下一张的封装函数
	function btn_right(){
		arr.push(arr[0]);
		arr.shift();//数组头部弹出
		$(".banner_content li").each(function(i,elem){
			$(elem).removeClass()
					.addClass(arr[i]);
		});
		index++;
		if(index>4){
			index=0;
		}
		show();
	}
	//上一张
	$(".btn_left").on("click",function(){
		btn_left();
	});
	//下一张
	$(".btn_right").click(function(){
		btn_right();
	});
	//图片自动轮播
	timer=setInterval(btn_right,4000);

	//点击底部的按钮切换图片
	$(".buttons a").each(function(i,elem){
		$(this).click(function(){
			var myindex=$(this).index();
			var mindex=myindex-index;
			if(mindex==0){
				return;
			}else if(mindex>0){
				var newarr=arr.splice(0,mindex);
			//$.merge() 函数用于合并两个数组内容到第一个数组
			//splice会改变元素组
				arr=$.merge(arr,newarr);
				$(".banner_content li").each(function(i,elem){
					$(elem).removeClass().addClass(arr[i]);
				});
				index=myindex;
				show();
			}else if(mindex<0){
				//reverse() 方法用于颠倒数组中元素的顺序
				arr.reverse();
				var oldarr=arr.splice(0,-mindex);
				arr=$.merge(arr,oldarr);
				arr.reverse();
				$(".banner_content li").each(function(i,elem){
					$(elem).removeClass().addClass(arr[i]);
				});
				index=myindex;
				show();

			}
		});
	});
	//底部按钮点亮
	function show(){
		$(".buttons a").eq(index).addClass("color").siblings().removeClass("color");
	}

});