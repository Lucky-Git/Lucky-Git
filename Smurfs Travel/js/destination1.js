/**
 * Created by web-01 on 29/06/2018.
 */
$(()=>{
    $(".blue_page_list").on("click","[data-flag=0]",function(){
        // $(this).siblings().slideDown()
        // 		.parent().siblings().find("show").slideUp();
        var a=$(this).siblings();
			if(a.is(":hidden"))
				a.slideDown()
				   .parent().siblings().children("dd:not(:hidden)").slideUp();
			else
				a.slideUp();
	});

	//国家信息按钮展开
	$("#btn_country_message").click(function(){
		$("#myModal").show();
	})
	var btn=$("#myModal");
	btn.on("click","span.close",function(){
		if(btn.is(":hidden")){
			btn.slideDown();
		}else{
			btn.slideUp(300);
		}
	})
})