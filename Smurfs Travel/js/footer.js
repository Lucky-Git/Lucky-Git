$(()=>{
	var link=document.createElement("link");
	link.href="css/footer.css";
	link.rel="stylesheet";
	document.head.appendChild(link);
	$.ajax({
		type:"get",
		url:"footer1.html",
		success:function(html){
			$("#footer").html(html);
		}
	});
})