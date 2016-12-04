$(function(){
	$("#bigHover").bind("mouseover",function(){clear();}).bind("mouseout",function(){time=setTimeout('autoChange()',3000);});
	for(var i=0,j=0;i<12;i++,j+=61){
		$("#scrollimg2_tigger_"+i).bind("mouseover",{'value':i,"left":j},function(v){
			tiggerMove(v.data["left"],v.data["value"]);
		});
	}
	for(var i=0;i<6;i++){
		$("#Tab_rebo_"+i).bind("mouseover",{'value':i},function(v){
			switchTab(v.data["value"]);
		});
	}
	for(var i=0;i<6;i++){
		$("#Tab_mfen_"+i).bind("mouseover",{'value':i},function(v){
			switch_mfen_Tab(v.data["value"]);
		});
	}
	for(var i=0;i<6;i++){
		$("#Tab_tv_"+i).bind("mouseover",{'value':i},function(v){
			switch_tv_Tab(v.data["value"]);
		});
	}
	for(var i=0;i<6;i++){
		$("#Tab_zy_"+i).bind("mouseover",{'value':i},function(v){
			switch_zy_Tab(v.data["value"]);
		});
	}
	for(var i=0;i<6;i++){
		$("#Tab_anime_"+i).bind("mouseover",{'value':i},function(v){
			switch_anime_Tab(v.data["value"]);
		});
	}
	MoveLayer('float_div');
	MoveLayer('float_div2');
	//setTimeout("bannerSwitch()", 2000);
	setTimeout("popupImgSwitch()",2500);
});
function switchTab(x)
{
	for(var i=0;i<6;i++){
		$("#tabbox_ul_"+i).css("display","none");
		$("#Tab_rebo_"+i).attr("class","");
	}
	$("#tabbox_ul_"+x).css("display","block");
	$("#Tab_rebo_"+x).addClass("on");
}

var width = 0;
var imgIndex = 0;
var time = setTimeout("autoChange()",3000);

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
	time = setTimeout("autoChange()",3010);
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
function get_cookie(Name) 
{ 
   var search = Name + "=";
   var returnvalue = ""; 
   if (document.cookie.length > 0) { 
     offset = document.cookie.indexOf(search);
     if (offset != -1) {                            // 如果指定的cookie已经存在
        offset += search.length;                     // 长度指定到cookie值的位置               
        end = document.cookie.indexOf(";", offset); // 判断是否还包括其他cookie值
        if (end == -1)                              //如果不包括
           end = document.cookie.length;            //获取cookie的长度
        returnvalue=unescape(document.cookie.substring(offset, end)); //获取cookie的值
      } 
   }   
   return returnvalue; 
} 
function bodyonload(){
	if (get_cookie("popped")==""){                   //判断是否已经弹出过窗口
		alert("“特别声明：本站所有视频内容均系视频爱好者上传，仅供宽带测试及视频学习交流使用，如您喜欢该视频内容，请支持购买正版！”");;
	    document.cookie="popped=yes";                //设置cookie值
	} 
}
function switch_mfen_Tab(x){
	//main_list_ul_0   Tab_mfen_0
	for(var i=0;i<6;i++){
		$("#main_list_ul_"+i).css("display","none");
		$("#Tab_mfen_"+i).attr("class","");
	}
	$("#main_list_ul_"+x).css("display","block");
	$("#Tab_mfen_"+x).addClass("on");
}
function switch_tv_Tab(x){
	for(var i=0;i<6;i++){
		$("#main_list_ul_tv_"+i).css("display","none");
		$("#Tab_tv_"+i).attr("class","");
	}
	$("#main_list_ul_tv_"+x).css("display","block");
	$("#Tab_tv_"+x).addClass("on");
}
function switch_zy_Tab(x){
	for(var i=0;i<6;i++){
		$("#main_list_ul_zy_"+i).css("display","none");
		$("#Tab_zy_"+i).attr("class","");
	}
	$("#main_list_ul_zy_"+x).css("display","block");
	$("#Tab_zy_"+x).addClass("on");
}
function switch_anime_Tab(x){
	for(var i=0;i<6;i++){
		$("#main_list_ul_anime_"+i).css("display","none");
		$("#Tab_anime_"+i).attr("class","");
	}
	$("#main_list_ul_anime_"+x).css("display","block");
	$("#Tab_anime_"+x).addClass("on");
}
function MoveLayer(layerName) {
	var x = 2;
	var y = 0;
	var scrolltop = document.body.scrollTop;
	var postop = document.all.float_div.style.posTop;
	
	if(scrolltop == 0 || scrolltop == "undefined"){
		scrolltop = document.documentElement.scrollTop;//ie
	}
	if(scrolltop == 0 || scrolltop == "undefined"){
		//scrolltop = window.pageYOffset;//NetScape
	}
	//$("#float_div").html(postop);
	/*if(postop == 0 || postop == "undefined"){
		postop = document.documentElement.all.float_div.style.posTop;
	}*/
	var diff = (scrolltop + y - postop)*.50;
	var z = scrolltop + y - diff;
	//var z = -scrolltop;
	if(layerName == "float_div"){
		eval("document.all." + layerName + ".style.posBottom = -scrolltop");
		eval("document.all." + layerName + ".style.posLeft = x");
		setTimeout("MoveLayer('float_div');", 50);
		
	}else if(layerName == "float_div2"){
		eval("document.all." + layerName + ".style.posBottom = -scrolltop");
		eval("document.all." + layerName + ".style.posRight = x");
		setTimeout("MoveLayer('float_div2');", 50);
	}
}
function hidefloat(i){
	if(i==1){
		$("#float_div").css("display","none");
	}else if(i==2){
		$("#float_div2").css("display","none");
	}
		
}
/*
var bannerId = 1;
function bannerSwitch(){
	if (bannerId == 3) {
		bannerId = 0;
	}
	$(".switch_banner :eq("+bannerId+")").show(1);
	for ( var i = 0; i < 3; i++) {
		if (bannerId != i) {
			$(".switch_banner :eq("+i+")").hide(1);
		}
	}
	bannerId++;
	setTimeout("bannerSwitch()", 2000);
}
*/
var popupId = 1;
function popupImgSwitch(){
	if (popupId == 3) {
		popupId = 0;
	}
	$("#Div4 :eq("+popupId+")").show(1);
	for ( var i = 0; i < 3; i++) {
		if (popupId != i) {
			$("#Div4 :eq("+i+")").hide(1);
		}
	}
	popupId++;
	setTimeout("popupImgSwitch()", 2500);
}
