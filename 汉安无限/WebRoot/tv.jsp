<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
    
<title>汉安无限-电视剧频道</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="汉安无限-电视剧频道">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/tv.js"></script>
<script type="text/javascript">
$(function(){
for(var i=0;i<16;i++){
	$("#top_nav_"+i).attr("class","");
}
$("#top_nav_3").addClass("on");
});
</script>
<link rel="stylesheet" type="text/css" href="css/tv.css"/>

</head>
<body>
<s:include value="head_2.jsp"></s:include>
<div class="topdiv">
	<div class="foucebox">
		<div class="triggerbox tiggerbox_left">
			<ul class="scrollimg_tigger scrollimg_tigger_left">
			<s:iterator value="#request.hotLeft" id="MoviesVo" status="status">
				<s:if test="%{#status.count == 1}">
				<a id="big_pic_nav_<s:property value="#status.count-1"/>" class="lefton" title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
					<img class="pic" src="<s:property value="#MoviesVo.mainPic"/>">
					<strong><s:property value="#MoviesVo.MovieName"/></strong>
					<p><s:property value="#MoviesVo.directName"/></p>
				</a>
				</s:if>
				<s:else>
					<a id="big_pic_nav_<s:property value="#status.count-1"/>" class="" title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
					<img class="pic" src="<s:property value="#MoviesVo.mainPic"/>">
					<strong><s:property value="#MoviesVo.MovieName"/></strong>
					<p><s:property value="#MoviesVo.directName"/></p>
				</a>
				</s:else>
			</s:iterator>
			</ul>
		</div>
		<div class="scrollimg">
			<div id="switchBigPic">
			<s:iterator value="#request.hotLeft" id="MoviesVo" status="status">
				<div class="scrollimg_div">
					<a class="scrollimg_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
						<img src="<s:property value="#MoviesVo.picPath"/>" title="">
					</a>
				</div>
			</s:iterator>	
			<s:iterator value="#request.hotReghit" id="MoviesVo" status="status">
				<div class="scrollimg_div">
					<a class="scrollimg_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
						<img src="<s:property value="#MoviesVo.picPath"/>" title="">
					</a>
				</div>
			</s:iterator>	
			</div>
		</div>
		<div class="tiggerbox">
			<ul class="scrollimg_tigger" >
			<s:iterator value="#request.hotReghit" id="MoviesVo" status="status">
				<a id="big_pic_nav_<s:property value="#status.count+5"/>" class="" title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
					<img class="pic" src="<s:property value="#MoviesVo.mainPic"/>">
					<strong><s:property value="#MoviesVo.movieName"/></strong>
					<p><s:property value="#MoviesVo.directName"/></p>
				</a>
			</s:iterator>
				
			</ul>
		</div>
	</div>
	<div class="ranklist">
		<div class="ranklist_tt">
			<h2 id="Tab_forecast_0" class="on" style="border-left:none;" onmouseover="switchTab('forecast',0,2,'on','')">热播榜</h2>
			<h2 id="Tab_forecast_1" class="" onmouseover="switchTab('forecast',1,2,'on','')">经典榜</h2>
		</div>
		<div class="ranklist_box">
			<ul id="ranklist_box_type_0" class="ranklist_box_type">
			<s:iterator value="#request.hotPlayerTop" id="MoviesVo" status="status">
				<s:if test="%{#status.count <= 3}">
				<li class="top">
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="<s:property value="#MoviesVo.MovieName"/>" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:if>
				<s:else>
				<li>
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="<s:property value="#MoviesVo.MovieName"/>" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:else>
			</s:iterator>
				
			</ul>
			<ul id="ranklist_box_type_1" class="ranklist_box_type" style="display: none;">
			<s:iterator value="#request.concernsTop" id="MoviesVo" status="status">
				<s:if test="%{#status.count <= 3}">
				<li class="top">
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="Fring" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:if>
				<s:else>
					<li>
					<em><s:property value="#status.count"/></em>
					<p>
						<a  href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="Fring" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:else>
			</s:iterator>
				
			</ul>
			<div class="ranklist_box_more"><a href="searchByKey.action?bid=2&key=">更多&gt;&gt;</a></div>
		</div>
	</div>
</div>
<!-- 
<dl class="toptag">
	<dt>热门索引:</dt>
	<dd>
		<a title="内地" href="">内地</a>
		<a title="香港" href="">香港</a>
		<a title="台湾" href="">台湾</a>
		<a title="韩剧" href="">韩剧</a>
		<a title="古装" href="">古装</a>
		<a title="都市言情" href="">都市言情</a>
		<a title="军事战争" href="">军事战争</a>
	</dd>
</dl>
-->
<div class="middleindex">
	
	<dl class="index_1">
		<dt>按年代</dt>
		<dd>
			<a href="searchByKey.action?key=2012&bid=2">2012</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2011&bid=2">2011</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2010&bid=2">2010</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2009&bid=2">2009</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2008&bid=2">2008</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2007&bid=2">2007</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2006&bid=2">2006</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2005&bid=2">2005</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2004&bid=2">2004</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2003&bid=2">2003</a>
		</dd>
	</dl>
	<dl class="index_2">
		<dt>按地区</dt>
		<dd>
			<a href="searchByKey.action?aresid=1&bid=2">港台</a>
		</dd>
		<dd>
			<a href="searchByKey.action?aresid=2&bid=2">大陆</a>
		</dd>
		<dd>
			<a href="searchByKey.action?aresid=3&bid=2">欧美</a>
		</dd>
		<dd>
			<a href="searchByKey.action?aresid=4&bid=2">日韩</a>
		</dd>
	</dl>
	<dl class="index_3">
		<dt>按明星</dt>
		<dd><a href="searchByKey.action?bid=2&key=杨幂">杨幂</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=刘诗诗">刘诗诗</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=杨丞琳">杨丞琳</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=阮经天">阮经天</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=唐嫣">唐嫣</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=陈乔恩">陈乔恩</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=柳云龙">柳云龙</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=吴奇隆">吴奇隆</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=邓超">邓超</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=李小冉">李小冉</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=林心如">林心如</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=邓超">邓超</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=冯绍峰">冯绍峰</a></dd>
		<dd><a href="searchByKey.action?bid=2&key=">其他</a></dd>
	</dl>
</div>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>热门推荐</h2>
			<a href="searchByKey.action?bid=2&key=">更多&gt;</a>
		</div>
		<ul class="animelist">
		<s:iterator value="#request.hotRecommend" id="MoviesVo" status="status">
			<li>
				<a class="pic" target="_blank" title="<s:property value="#MoviesVo.MovieName"/>" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
					<img title="<s:property value="#MoviesVo.MovieName"/>" src="<s:property value="#MoviesVo.mainPic"/>">
				</a>
				<p>
					<a title="<s:property value="#MoviesVo.MovieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
				</p>
				<p>
					<s:property value="#MoviesVo.roleName"/>
				</p>
				<p>
					上传者:王军
				</p>
			</li>
		</s:iterator>
			
		</ul>
	</div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
<script src="http://s16.cnzz.com/stat.php?id=4427800&web_id=4427800&show=pic" language="JavaScript"></script>
</body>
</html>
