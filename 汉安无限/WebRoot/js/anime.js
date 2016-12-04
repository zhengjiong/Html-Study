
$(function(){
	for(var i=0;i<16;i++){
		$("#top_nav_"+i).attr("class","");
	}
	$("#top_nav_5").addClass("on");
	
	for(var i=0;i<12;i++){
		$("#big_pic_nav_"+i).bind("mouseover",{'value':i},function(v){
			switchPic(v.data["value"]);
		}).bind("mouseout",function(){
			time=setTimeout('autoChange()',3000);
		});
	}
	//ranklist_box_typeB    Tab_forecast_0
	for(var i=0;i<2;i++){
		$("#Tab_forecast_"+i).bind("mouseover",{'value':i},function(v){
			switchTab(v.data["value"]);
		});
	}
	
	
});
var margintop = 0;
var imgIndex = 0;
var time = setTimeout("autoChange()",3000);

function switchPic(x){
	clear();
	imgIndex = x;
	margintop = -312*x;
	for(var i=0;i<12;i++){
		$("#big_pic_nav_"+i).attr("class","");
	}
	if(x > 5){
		$("#big_pic_nav_"+x).addClass("righton");
	}else{
		$("#big_pic_nav_"+x).addClass("lefton");
	}
	$("#switchBigPic").stop();
	$("#switchBigPic").animate({marginTop:margintop},100);
}
function autoChange()
{
	clear();
	$("#switchBigPic").stop();
	time = setTimeout("autoChange()",3000);
	margintop-=312;
	imgIndex++;
	if(margintop < -3432){
		margintop = 0;
	}
	if(imgIndex > 11){
		imgIndex = 0;
	}
	
	for(var i=0;i<12;i++){
		$("#big_pic_nav_"+i).attr("class","");
	}
	if(imgIndex > 5){
		$("#big_pic_nav_"+imgIndex).addClass("righton");
	}else{
		$("#big_pic_nav_"+imgIndex).addClass("lefton");
	}
	$("#switchBigPic").animate({marginTop:margintop},100);
}
function clear(){
	window.clearTimeout(time);
}
function switchTab(x){
	for(var i=0;i<2;i++){
		$("#Tab_forecast_"+i).attr("class","");
	}
	$("#Tab_forecast_"+x).addClass("on");
	for(var i=0;i<2;i++){
		$("#ranklist_box_type_"+i).css("display","none");
	}
	$("#ranklist_box_type_"+x).css("display","block");
}