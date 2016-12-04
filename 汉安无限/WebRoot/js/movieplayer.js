$(function(){
	
	for(var i=0;i<2;i++){
		$("#Tab_rebo_"+i).bind("mouseover",{'value':i},function(v){
			switchTab(v.data["value"]);
		});
	}
	for(var i=0;i<16;i++){
		$("#top_nav_"+i).attr("class","");
	}
	$("#bigHover").bind("mouseover",function(){clear();}).bind("mouseout",function(){time=setTimeout('autoChange()',3000);});
	for(var i=0,j=0;i<8;i++,j+=91){
		$("#scrollimg2_tigger_"+i).bind("mouseover",{'value':i,"left":j},function(v){
			tiggerMove(v.data["left"],v.data["value"]);
		});
	}
	$(".box_tt_right").bind("click",function(){hideDiv();});
	for(var i=1;i<500;i++){
		$("#play_"+i).bind("click",{'value':i},function(v){
			showPlayerNum(v.data["value"]);
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
	for(var i=0;i<8;i++){
		$("#showDiv_"+i).css("display","none");
	}
	$("#showDiv_"+imgIndex).fadeIn(100);
	$(".scrollimg2_tigger_hoverbg").animate({marginLeft:width},10);
}
function autoChange()
{
	clear();
	time = setTimeout("autoChange()",3100);
	width+=91;
	imgIndex++;
	if(width > 637){
		width = 0;
	}
	if(imgIndex > 7){
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
function hideDiv(){
	$("#wrapper_box").slideUp(300);
}
function showPlayerNum(j){
	for(var i=1;i<500;i++){
		$("#play_"+i).attr("class","");
	}
	$("#play_"+j).attr("class","on");
}