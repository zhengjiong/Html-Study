$(function(){
	for(var i=0;i<16;i++){$("#top_nav_"+i).attr("class","");}
	for(var i=0;i<10;i++){$("area_"+i).removeClass("on");}
	
	if($bid!=null){
		switchSubMenu($bid);
		$("a[id^=page_]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&bid="+$bid;
			$(this).attr("href",$href);
		});
	}else{
		switchSubMenu(1);
	}
	if($aresid!=null){
		$("a[name=area_"+$aresid+"]").addClass("on");
		$("a[name^=year]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&aresid="+$aresid;
			$(this).attr("href",$href);
		});
		$("a[id^=cateid]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&aresid="+$aresid;
			$(this).attr("href",$href);
		});
		$("a[id^=page_]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&aresid="+$aresid;
			$(this).attr("href",$href);
		});
	}else{
		$("a[name=area_0]").addClass("on");
	}
	if($key != null){
		var $tempKey = parseInt($key);
		if(!isNaN($tempKey)){
			if($tempKey >= 1999 && $tempKey <= 2012){
				$("a[name=year_"+$tempKey+"]").addClass("on");
				$("a[name^=area]").each(function(){
					var $href = $(this).attr("href");
					$href = $href+"&key="+$tempKey;
					$(this).attr("href",$href);
				});
				$("a[id^=cateid]").each(function(){
					var $href = $(this).attr("href");
					$href = $href+"&key="+$tempKey;
					$(this).attr("href",$href);
				});
				$("a[id^=page]").each(function(){
					var $href = $(this).attr("href");
					$href = $href+"&key="+$tempKey;
					$(this).attr("href",$href);
				});
			}
		}else{
			/*
			$("a[name^=area]").each(function(){
				var $href = $(this).attr("href");
				$href = $href+"&key="+$key;
				$(this).attr("href",$href);
			});
			$("a[id^=cateid]").each(function(){
				var $href = $(this).attr("href");
				$href = $href+"&key="+$key;
				$(this).attr("href",$href);
			});
			*/
			$("a[name=year_all]").addClass("on");
		}
	}else{
		$("a[name=year_all]").addClass("on");
	}
	if($cateid!=null){
		$("a[name^=area]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&cateid="+$cateid;
			$(this).attr("href",$href);
		});
		$("a[name^=year]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&cateid="+$cateid;
			$(this).attr("href",$href);
		});
		$("a[id^=page]").each(function(){
			var $href = $(this).attr("href");
			$href = $href+"&cateid="+$cateid;
			$(this).attr("href",$href);
		});
		$("#cateid_"+$cateid).addClass("on");
	}else{
		$("#cateid_all").addClass("on");
	}
	
	
	for(var i=0;i<4;i++){
		$("#Tab_rebo_"+i).bind("mouseover",{"value":i},function(v){
			switchTab(v.data["value"]);
		});
	}
});
var $key = GetQueryString("key");
var $cateid = GetQueryString("cateid");
var $bid = GetQueryString("bid");
var $aresid = GetQueryString("aresid");
function switchTab(x){
	for(var i=0;i < 4;i++){
		$("#Tab_rebo_"+i).attr("class","");
		$("#list_rebo_"+i).css("display","none");
	}
	$("#Tab_rebo_"+x).addClass("on");
	$("#list_rebo_"+x).css("display","block");
}
function switchSubMenu(x){
	for(var i=0;i<5;i++){
		$("#right_box_"+i).css("display","none");
		$("#submenu_"+i).attr("class","");
	}
	$("#right_box_"+x).css("display","block");
	$("#submenu_"+x).addClass("on");
}
function GetQueryString(name) 
{ 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null; 
}  
