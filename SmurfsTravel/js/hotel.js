$(()=>{
	 $(".blue_btn_select").hover(
	 	function(){ 
	 		$(".blue_all_select").show();
	 	},
	 	function(){
	 		$(".blue_all_select").hide();
	 	}
	 );
	 $(".blue_img_3_img").hover(
	 	function(){
	 	 $(this).children(".blue_hotel_mask").css(
	 	 	"height",160);
	 	 $(this).children(".blue_hotel_mask").css(
	 	 	"padding",20);
	 	},
	 	function(){
	 		$(this).children(".blue_hotel_mask").css("height",0);
	 		$(this).children(".blue_hotel_mask").css(
	 	 	"padding",0);
	 	}
	 );

	 // 预定弹出框
	 $(".btn_order").click(function(e){
	 	e.preventDefault();
	 	var a=$(this);
	 	var id=a.attr("href");
	 	$(id).show();
	 })
	 $(".close").click(function(){
	 	$(".h_dialog").hide();
	 });
	 //成人，儿童人数选择
	$(".adult").click(function(){
		if($(".perNum").is(":hidden")){
            $(".perNum").css("margin-left","-95px").show();
		}else{
            $(".perNum").hide();
		}
	});
    $(".child").click(function(){
        if($(".perNum").is(":hidden")){
            $(".perNum").css("margin-left","38px").show();
        }else{
            $(".perNum").hide();
        }
    })
})