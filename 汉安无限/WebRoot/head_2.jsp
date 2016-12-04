<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="z" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上导航</title>
    
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/head_2.css">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>

<style type="text/css">
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;}
.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover{width:114px;height:53px;background:url(images/nav_li_current.gif) no-repeat bottom;display:block;color:#fff;}
.menu_nav .nav_content li a:hover{background:url(images/nav_li_hover.gif) no-repeat bottom;height:53px;line-height:53px;text-decoration:none;}
img{border:0px;}
p{
margin-bottom:15px}
.hot {
	float: right;
	position: relative;
}
.divhead a {
	float: right;
}
body {
    color: #888888;
    font-family: "宋体","Arial Narrow";
    font-size: 12px;
    font-size-adjust: none;
    font-style: normal;
    font-variant: normal;
    font-weight: normal;
    background: url("images/body_bg.jpg") repeat;
}

</style>
</head>

<body>
<div class="header">
	<h1 class="header_logo">
		<a target="_self" title="汉安无限·畅享高清" href="getindexMsg.action">汉安无限·畅享高清</a>
	</h1>
	<ul class="login_wrapper">
		<li><a target="_self" title="登录" href="login.jsp">登录</a></li>
		<li><a target="_self" title="注册" href="register.jsp">注册</a></li>
	</ul>
	<form id="searchform" target="_self" action="searchByKey.action" method="post">
		<div class="search_wrapper">
			<div class="btnSearch_wrapper">
				<button id="btnSearch" type="submit"></button>
			</div>
			<div class="search_txt_wrapper">
				<input class="search_txt" type="text" maxlength="50" onfocus="javascript:document.getElementById('searchbox1').value=''"  name="keyword" value="超级战舰" />
			</div>
		</div>
	</form>
	<div class="searchbox_hottag">
		<a target="_blank" title="AA制生活" href="player.action?ID=1338&movieNum=1">AA制生活</a>
		<a target="_blank" title="决战星球" href="player.action?ID=27&movieNum=1">决战星球</a>
		<a target="_blank" title="生化危机" href="player.action?ID=39&movieNum=1">生化危机</a>
		<a target="_blank" title="星球大战" href="player.action?ID=57&movieNum=1">星球大战</a>
		<a target="_blank" title="失恋33天" href="player.action?ID=98&movieNum=1">失恋33天</a>
	</div>
	
</div>

<div class="mainnav">
	<div class="mainnav_list">
		<a id="top_nav_0" class="" title="首页"  href="getindexMsg.action">首页</a>
		<a id="top_nav_1" title="网址大全" href="nav.jsp">网址大全</a>
		<a id="top_nav_2" href="movieIndex.action" title="电影">电影</a>
		<a id="top_nav_3" href="showTV.action" title="电视剧">电视剧</a>
		<a id="top_nav_4"  href="zongyi.action" title="综艺">综艺</a>
		<a id="top_nav_5"  href="animes.action" title="动漫">动漫</a>
		<a id="top_nav_13" href="musicIndex.action" title="音乐">音乐</a>
		<a id="top_nav_6" title="游戏" href="games.jsp">游戏下载</a>
		<a id="top_nav_15" href="softwareIndex.action" title="软件下载">软件下载</a>
		<a id="top_nav_7" href="funnyvideo.jsp" title="搞笑视频">搞笑视频</a>
		<a id="top_nav_8" href="gamevideo.jsp" title="游戏视频">游戏视频</a>
		<a id="top_nav_9" title="上传视频" href="upload.jsp">上传视频</a>
		<%--
		<a id="top_nav_14" title="电视台" href="searchByCateID.action?cateid=5">动作片</a>
		<div class="mainnav_list_2">
			<a id="top_nav_om" title="爱情片" target="_self" href="searchByCateID.action?cateid=6">爱情片</a>
			<%--<a id="top_nav_jd" title="经典大片" target="_self" href="searchByCateID.action?cateid=7">喜剧片</a>
			<a id="top_nav_hy" title="华语大片" target="_self" href="searchByCateID.action?cateid=9">科幻片</a>
		</div>
		--%>
	</div>
</div>
<div class="nav_bottom"></div>
</body>
</html>

