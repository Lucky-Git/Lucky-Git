$(()=>{
	$(":button").click(function(){
		$.ajax({
			type:"post",
			url:"data/users/signin.php",
			data:$("form").serialize(),
			success:function(result){
				if(result=="false"){
					alert("用户名或密码错误");
				}else{
					alert("登陆成功");
					location.href="index.html";
				}
			}
		})
	})
})