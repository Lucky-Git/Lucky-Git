$(()=>{
    $('#menu>ul').on('click',"li",function(){
         $(this).addClass("active").siblings().removeClass("active");

    });
    $('#menu>ul>li').hover(
        function(){
            $(this).addClass("active").siblings().removeClass("active");
            if($(this).hasClass('dropdown')){
                $('.active>.dropdown-menu').slideDown(100).parent()
                    .siblings().find('.dropdown-menu').slideUp(100);
            }
        },
        function(){
            $('.active>.dropdown-menu').slideUp(100);
        }
    );
    // 左右箭头
    var move=0,LIWIDTH=288;
    $('.nav-arrow.nav-left').click(function(){
        if(!$('.footer-top .imgs>.ulImgs').is(":animated")){
            if(move==0){
                move=5;
                $('.footer-top .imgs>.ulImgs').css('left',-move*LIWIDTH);
            }
            move--;
            $('.footer-top .imgs>.ulImgs').animate({'left':-move*LIWIDTH},1000);

        }
    });
    $(".nav-arrow.nav-right").click(function(){
        if(!$('.footer-top .imgs>.ulImgs').is(":animated")){
            move++;
            $('.footer-top .imgs>.ulImgs').animate({left:-move*LIWIDTH},
                1000,function(){
                    if(move==5){
                        $('.footer-top .imgs>.ulImgs').css("left",0);
                        move=0;
                    }
                })
        }

    })	;
    $(".product-list .pic").hover(
        function(){
            $(this).children(".mask").css("height","40px");
        },
        function(){
            $(this).children(".mask").css("height","0");
        }
    );
    //自动播放人物照片
    // function task(){
    //     var show=$(".person .person-detail.show");
    //     show.removeClass("show");
    //     var next=show.next(".person-detail");
    //     if(next.length!=0){
    //         next.addClass("show");
    //        // console.log(next.html())
    //     }else{
    //         show.parent().children(":eq(0)").addClass("show");
    //         show.removeClass("show");
    //
    //     }
    // }
    // var timer=setInterval(task,3000);
    // $(".person .person-detail").hover(
    //     function(){
    //         clearInterval(timer);
    //         timer=null;
    //     },
    //     function(){
    //         timer=setInterval(task,3000);
    //     }
    // )
    var i=0,timer=null;
    function task(){
        //$(".person .person-detail").eq(i).addClass("show").siblings("show").removeClass("show");
       // $(".person .person-detail").eq(i).fadeIn(500).siblings(".person-detail").fadeOut(500);
        $(".person .person-detail").eq(i).css("display","block").siblings(".person-detail").css("display","none");
        $(".person>.inds>li").eq(i).css({"background":"#00E58B","box-shadow":"0 0 10px #00E58B"})
            .siblings("li").css({"background":"#fff","box-shadow":"none"})
        i++;
        i=i>2?0:i;
    }
    task();
    timer=setInterval(task,3000);
    $(".person .person-detail").hover(
        function(){
             clearInterval(timer);
            timer=null;
         },
         function(){
             timer=setInterval(task,3000);
         }
     );
    $(".person>.inds").on("click","li",function(){
        var index=$(this).index();
        $(".person>.inds>li").eq(index).css({"background":"#00E58B","box-shadow":"0 0 10px #00E58B"})
            .siblings("li").css({"background":"#fff","box-shadow":"none"})
        $(".person .person-detail").eq(index).css("display","block").siblings(".person-detail").css("display","none");

    });
    // 手风琴效果
    $(".accordion_line").on("click",".accordion_title",function(){
        if($(this).next().is(":hidden")){
            $(this).next().slideDown().parent().siblings().children(".accordion_text:not(:hidden)").slideUp();
            $(this).find("i").css("display","inline-block")
            .parent().parent().parent().siblings().children(".accordion_text:not(:hidden)").prev().find("i").css("display","none");
        }else{
            $(this).next().slideUp();
            $(this).find("i").css("display","none");

        }
        
        //     .parent().children(".accordion_text:not(:hidden)").css("display","none");
    });
    // about轮播
    var move=0,LIWIDTH=365;
    $('.about .nav-arrow.nav-left').click(function(){
        if(!$('.about .about-slide>ul').is(":animated")){
            if(move==0){
                move=4;
                $('.about .about-slide>ul').css('left',-move*LIWIDTH);
            }
            move--;
            $('.about .about-slide>ul').animate({'left':-move*LIWIDTH},1000);

        }
    });
    $(".about .nav-arrow.nav-right").click(function(){
        if(!$('.about .about-slide>ul').is(":animated")){
            move++;
            $('.about .about-slide>ul').animate({left:-move*LIWIDTH},
                1000,function(){
                    if(move==4){
                        $('.team-item .team-imgabout .about-slide>ul').css("left",0);
                        move=0;
                    }
                })
        }

    });
    //about页面中的遮罩
    $(".about .team-item .team-img>.mask").hover(
        function(){
            // $(this).css("opacity",1);
            $(this).css({
                "opacity":1,
                "transform": "rotateY(360deg) scale(1,1)"
            })
        },
        function(){
            $(this).css({
                "opacity":0,
                "transform": "rotateY(360deg) scale(0.5,0.5)"
            })
        }
    );
    $('.top-products ul').on("click","li",function(){
        var $li=$(this);
        if($li.css("opacity",0.5)){
            $li.css("opacity",1).siblings('li').css("opacity",0.5);
        }else if($li.css("opacity",1)){
            $li.css("opacity",1).siblings('li').css("opacity",0.5);
        }
        
    })


})
