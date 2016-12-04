$(function(){
		for(var i=0;i<16;i++){
			$("#top_nav_"+i).attr("class","");
		}
		$("#top_nav_2").addClass("on");
		for(var i=0;i<2;i++){
			$("#Tab_rebo_"+i).bind("mouseover",{'value':i},function(v){
				switchTab(v.data["value"]);
			});
		}
		$("#bigHover").bind("mouseover",function(){clear();}).bind("mouseout",function(){time=setTimeout('autoChange()',3000);});
		for(var i=0,j=0;i<12;i++,j+=61){
			$("#scrollimg2_tigger_"+i).bind("mouseover",{'value':i,"left":j},function(v){
				tiggerMove(v.data["left"],v.data["value"]);
			});
		}
		for(var j=0;j<6;j++){
			$("#Tab_star_"+j).bind("mouseover",{'value':j},function(v){
				switchTabStar(v.data["value"]);
			});
		}
		for(var i=0;i<2;i++){
			$("#Tab_starbang_"+i).bind("mouseover",{'value':i},function(v){
				switchTabStarBang(v.data["value"]);
			});
		}
});
	var width = 0;
	var imgIndex = 0;
	var time = setTimeout("autoChange()",3000);
	function switchTab(x)
	{
		for(var i=0;i<2;i++){
			$("#tabbox_ul_"+i).css("display","none");
			$("#Tab_rebo_"+i).attr("class","");
			$("#Tab_rebo_"+i).removeClass("on0");
			$("#Tab_rebo_"+i).removeClass("on1");
		}
		$("#tabbox_ul_"+x).css("display","block");
		if(x==0){
			$("#Tab_rebo_1").addClass("on1");
		}else{
			$("#Tab_rebo_0").addClass("on0");
		}
		
	}
	function tiggerMove(x,y)
	{
		clear();
		$(".scrollimg2_tigger_hoverbg").stop();
		width = x;
		imgIndex = y;
		for(var i=0;i<12;i++){
			$("#showDiv_"+i).css("display","none");
		}
		$("#showDiv_"+imgIndex).fadeIn(100);
		$(".scrollimg2_tigger_hoverbg").animate({marginLeft:width},10);
	}
	function autoChange()
	{
		clear();
		time = setTimeout("autoChange()",3100);
		width+=61;
		imgIndex++;
		if(width > 671){
			width = 0;
		}
		if(imgIndex > 11){
			imgIndex = 0;
		}
		$(".scrollimg2_tigger_hoverbg").stop();
		for(var i=0;i<12;i++){
			$("#showDiv_"+i).css("display","none");
		}
		$("#showDiv_"+imgIndex).fadeIn(100);
		$(".scrollimg2_tigger_hoverbg").animate({marginLeft:width},300);
	}
	function clear(){
		window.clearTimeout(time);
	}
	function switchTabStar(x){
		for(var i=0;i<7;i++){
			$("#Tab_star_"+i).removeClass("wrapper_left_on");
			$("#wrapper_left_content_"+i).css("display","none");
		}
		$("#Tab_star_"+x).attr("class","wrapper_left_on");
		$("#wrapper_left_content_"+x).css("display","block");
	}
	function switchTabStarBang(x){
		for(var i=0;i<2;i++){
			$("#Tab_starbang_"+i).attr("class","");
			$("#wrapper_right_ul_"+i).css("display","none");
		}
		$("#Tab_starbang_"+x).addClass("on");
		$("#wrapper_right_ul_"+x).css("display","block");
	}