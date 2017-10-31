$(".divmain dt").css({"background-color":"#3992d0"});
/*$(".divmain dt img").attr("src","images/left/select_xl01.png");*/

$(function(){
	$(".divmain dd").hide();
	$(".divmain dt").click(function(){
		$(".divmain dt").css({"background-color":"#3992d0"})
		$(this).css({"background-color": "#317eb4"});
		$(this).parent().find('dd').removeClass("menu_chioce");
		/*$(".divmain dt img").attr("src","images/left/select_xl01.png");
		$(this).parent().find('img').attr("src","images/left/select_xl.png");*/
		$(".menu_chioce").slideUp(); 
		$(this).parent().find('dd').slideToggle();
		$(this).parent().find('dd').addClass("menu_chioce");
	});
});