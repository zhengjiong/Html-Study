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
    
<title>汉安无限-播放</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/movieplayer.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript" src="js/player.js"></script>
<script src="js/27hp.js" type="text/javascript"></script>
<script type="text/javascript" src="ckplayer/ckplayer.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/movieplayer.css"/>

</head>
<body>
<s:include value="head.jsp"></s:include>
<div class="list_tt">
	正在播放&nbsp;&gt;
	<s:property value="#request.movie.MovieName" />
	 如果不能播放，请<a href="resources/RealPlayer_cn.exe">点击这里</a>
</div>
<div class="player_bg">
	<div class="player" id="player5">
		<!-- 
		<embed id="PlayerCtrl" width="100%" height="100%" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="movieType=movie" wmode="window" allowfullscreen="true" allowscriptaccess="always" quality="high" bgcolor="#000000" name="PlayerCtrl" src="http://js.kankan.xunlei.com/player/mp4/KKPlayer.swf?v=2.1&popup=1" type="application/x-shockwave-flash">
		 -->
		<script type="text/javascript" charset="gb2312">
			
					pv_r("video/[jumpcn][naruto][363][848x480].rmvb", 960, 540);
					
		</script>
	</div>
</div>
<div class="intro">
	<div class="intro_tt">播放集数</div>
	<ul class="intro_con_num">
			<s:iterator value="#request.moviesPathList" id="Moviepath" status="status">
			<li sytle="width=30px;"><a href="player.action?ID=<s:property value="#Moviepath.movieID"/>&movieNum=<s:property value="#Moviepath.movieNum"/>">第<s:property value="#Moviepath.movieNum"/>集</a></li>
			</s:iterator>
	
	</ul>
	
	<div class="intro_tt"><a style="position: absolute;left:20px;cursor: default;outline: none;" href="javascript:void;">影片信息</a></div>
	<ul class="intro_con">
		<li><font style="font-weight: bold;color:#3b3b3b;font-size:16px;"><s:property value="#request.movie.MovieName" /><font/></li>
		<li>主演:<s:property value="#request.movie.rolesName" /></li>
		<li>导演:<s:property value="#request.movie.directors" /></li>
		<li>地区:<s:property value="#request.movie.areaName" /></li>
		<li>上映时间:<s:property value="#request.movie.creatTime" /></li>
		<li>类型:<s:property value="#request.movie.cateSname" /></li>
	</ul>
	<div class="intro_tt">内容简介</div>
	<ul class="intro_con_2">
		<li>
			<s:property value="#request.movie.directName" />
		</li>
	</ul>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
</body>
</html>
