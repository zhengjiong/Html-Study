$(function(){
	for(var i=0;i<16;i++){
		$("#top_nav_"+i).attr("class","");
	}
	$("#top_nav_15").addClass("on");
	if($cid != null){
		switchTabStar($cid);
		var $tt = $("a[class=wrapper_left_on]").html();
		$("#soft_tt").html($tt);
	}else{
		$("#soft_tt").html("全部软件");
	}
	if($cid != null){
		$("a[id^=page]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&cid="+$cid;
			$(this).attr("href",$href);
		});
		
	}
});
var $cid = GetQueryString("cid");
var $scid = GetQueryString("scid");
function switchTabStar(x){
	for(var i=0;i<15;i++){
		$("#Tab_star_"+i).removeClass("wrapper_left_on");
		$("#wrapper_left_content_"+i).css("display","none");
	}
	$("#Tab_star_"+x).attr("class","wrapper_left_on");
	$("#wrapper_left_content_"+x).css("display","block");
	
}
function GetQueryString(name) 
{ 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null; 
}  