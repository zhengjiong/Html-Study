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
    
    <title></title>
    
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>

<style type="text/css">
OL LI {
	MARGIN: 8px
}
#con {
	FONT-SIZE: 12px;
	WIDTH: 680px;
}
#tags {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 10px; WIDTH: 650px; PADDING-TOP: 0px; HEIGHT: 23px
}
#tags LI {
	BACKGROUND: url(images/tagleft.gif) no-repeat left bottom; FLOAT: left; MARGIN-RIGHT: 1px; LIST-STYLE-TYPE: none; HEIGHT: 23px
}
#tags LI A {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; BACKGROUND: url(images/tagright.gif) no-repeat right bottom; FLOAT: left; PADDING-BOTTOM: 0px; COLOR: #999; LINE-HEIGHT: 23px; PADDING-TOP: 0px; HEIGHT: 23px; TEXT-DECORATION: none
}
#tags LI.emptyTag {
	BACKGROUND: none transparent scroll repeat 0% 0%; WIDTH: 4px
}
#tags LI.selectTag {
	BACKGROUND-POSITION: left top; MARGIN-BOTTOM: -2px; POSITION: relative; HEIGHT: 25px
}
#tags LI.selectTag A {
	BACKGROUND-POSITION: right top; COLOR: #000; LINE-HEIGHT: 25px; HEIGHT: 25px
}
#tagContent {
	BORDER-RIGHT: #aecbd4 1px solid; PADDING-RIGHT: 1px; BORDER-TOP: #aecbd4 1px solid; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; BORDER-LEFT: #aecbd4 1px solid; PADDING-TOP: 1px; BORDER-BOTTOM: #aecbd4 1px solid; BACKGROUND-COLOR: #fff;
}
.tagContent {
	DISPLAY: none;BACKGROUND: url(images/bg.gif) repeat-x;WIDTH: 650px; COLOR: #474747;overflow:hidden;position: relative;
}
#tagContent DIV.selectTag {
	DISPLAY: block
}

<!--
/*导航*/
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;}
#hottotal ul li {
	float: left;
	margin-top: 10px;
	font-size: 12px;
	overflow: hidden;
}


.menu_navcc{width:970px; margin:0 auto;}
.menu_nav{width:970px;height:53px;background:url(images/nav_bg.gif) repeat-x top;float:left;}
.menu_nav .nav_content{padding-left:4px;background:url(images/nav_l_bg.gif) no-repeat left top;float:left;}
.menu_nav .nav_content li{width:114px;height:53px;padding-left:10px;padding-right:10px;background:url(images/nav_li_right.gif) no-repeat right top;float:left;line-height:53px;text-align:center;font-size:14px;font-weight:bold;}
.menu_nav .nav_content li a{color:#000;width:114px;height:53px;display:block;}
.menu_nav .nav_content li.current{line-height:53px;}


.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover{width:114px;height:53px;background:url(images/nav_li_current.gif) no-repeat bottom;display:block;color:#fff;}
.menu_nav .nav_content li a:hover{background:url(images/nav_li_hover.gif) no-repeat bottom;height:53px;line-height:53px;text-decoration:none;}
img{border:0px;}
.menu_nav_right{padding-right:20px;background:url(images/nav_r_bg.gif) no-repeat right top;float:right;margin-left:50px;padding-top:13px;height:23px;padding-bottom:12px;}
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
}
.divhead {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 2px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #6CF;
	border-right-color: #6CF;
	border-bottom-color: #6CF;
	border-left-color: #6CF;
	text-align: left;
	background-color: #F0EFFC;
	font-size: 14px;
	font-weight: bold;
	color: #000;
}
.divborde {
	border: 2px solid #09F;
}
.hotList {
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #30F;
	padding-top: 10px;
}
#song ul li {
	padding-top: 10px;
	margin-left: 20px;
}
#song ul li span {
	margin-right: 20px;
}
.divhead1 {	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 2px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #6CF;
	border-right-color: #6CF;
	border-bottom-color: #6CF;
	border-left-color: #6CF;
	text-align: left;
	background-color: #F0EFFC;
	font-size: 14px;
	font-weight: bold;
	color: #000;
}
#newmusic ul li {
	float: left;
	width: 150px;
}
-->
.hotRow
{
	line-height: 21px;
	height: 21px;
}
.hotRow_left
{
	width: 20px;
	padding-left: 5px;
	float: left;
}
.hotRow_right
{
	float: left;
}
.singerTopRow
{
	line-height:28px;
	margin:0 auto;
	width:250px;
	overflow: hidden;
}
.singerTopRow_column
{
	float: left;
	width:80px;
	text-align:center;
	overflow: hidden;
}
.albumContent
{
}
.albumItem
{
	float:left;
	width:150px;
	overflow:hidden;
	margin-top:2px;
}
.albumItem_img
{
	float:left;
	width:70px;
	height:70px;
}
.albumItem_info
{
	float:left;
	color:#878787;
	width:80px;
	height:70px;
}
.albumItem_info dd
{
	font-size:9px;
	line-height:12px;
	padding-top: 5px;
	height:12px;
	overflow: hidden;
	padding-left: 2px;
}
.albumItem_info_title
{
	font-size:9px;
	width:80px;
	font-weight:bolder;
	overflow: hidden;
	height:12px;
	padding-top:10px;
	padding-left: 2px;
}
.tagContent_row
{
	width:650px;
	line-height:26px;
	font-size:12px;
	overflow: hidden;
}
.tagContent_row_item
{
	width:210px;
	height:26px;
	line-height:26px;
	float:left;
	overflow: hidden;
}
.tagContent_row_left
{
	width:26px;
	height:26px;
	line-height:25px;
	float:left;
	font-size:12px;
	font-weight:bolder;
	overflow: hidden;
}
.tagContent_row_chk
{
	float:left;
}
.divbordeContent
{
	width:970px;
	overflow: hidden;
	margin: 0 auto;
}
.tagContent_row_middle
{
	height:26px;
	line-height:26px;
	float:left;
	width:100px;
	overflow:hidden;
	padding-left:5px;
}
.tagContent_row_right
{
	height:26px;
	line-height:26px;
	float:left;
}
.tagContent_row a
{
	text-decoration: underline;
}
h1, h2, h3, h4, h5, h6 {
    font-size: 100%;
}
.header
{
	width:970px;
	margin: 0 auto;
	height: 58px;
    overflow: hidden;
    position: relative;
    padding-top: 20px;
    text-align: left;
    color: #888888;
}
.header_logo {
    height: 90px;
    left: 23px;
    position: absolute;
    top: 20px;
    width: 260px;
    margin-top:-10px;
}
.header_logo a{
	display: block;
    height: 150px;
    overflow-x: hidden;
    overflow-y: hidden;
    text-indent: -9999px;
    
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images//logo.png");
    background-origin: padding-box;
    background-repeat: no-repeat;
    background-size: auto auto;
}
.searchbox {
    left: 297px;
    position: absolute;
    top: 24px;
    width: 399px;
}
.searchbox_hottag {
    color: #E6E6E6;
    margin-top: 3px;
    padding-left: 5px;
}
.searchbox_hottag a{
	color: #A9A9A9;
	font-family: "宋体","Arial Narrow";
}
.searchbox_search
{
	border: 3px solid #EEEEEE;
    height: 27px;
    overflow: hidden;
    width: 393px;
}
.searchbox_search .input {
    -moz-border-bottom-colors: none;
    -moz-border-image: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background-position: 0 -85px;
    background-repeat: repeat-x;
    border-color: #BABEBF -moz-use-text-color #BABEBF #BABEBF;
    border-style: solid none solid solid;
    border-width: 1px medium 1px 1px;
    color: #B2B2B2;
    float: left;
    font-size: 14px;
    height: 14px;
    line-height: 14px;
    padding: 6px 0 5px 5px;
    width: 319px;
    
}
.searchbox_search button {
    -moz-border-bottom-colors: none;
    -moz-border-image: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background-position: 0 -36px;
    border-bottom-color: -moz-use-text-color;
    border-bottom-style: none;
    border-bottom-width: medium;
    border-left-color-ltr-source: physical;
    border-left-color-rtl-source: physical;
    border-left-color-value: -moz-use-text-color;
    border-left-style-ltr-source: physical;
    border-left-style-rtl-source: physical;
    border-left-style-value: none;
    border-left-width-ltr-source: physical;
    border-left-width-rtl-source: physical;
    border-left-width-value: medium;
    border-right-color-ltr-source: physical;
    border-right-color-rtl-source: physical;
    border-right-color-value: -moz-use-text-color;
    border-right-style-ltr-source: physical;
    border-right-style-rtl-source: physical;
    border-right-style-value: none;
    border-right-width-ltr-source: physical;
    border-right-width-rtl-source: physical;
    border-right-width-value: medium;
    border-top-color: -moz-use-text-color;
    border-top-style: none;
    border-top-width: medium;
    color: #FFFFFF;
    float: left;
    font-size: 14px;
    font-weight: bold;
    height: 27px;
    width: 68px;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images/headerpage_970_1.png");
    background-origin: padding-box;
    background-repeat: no-repeat;
    background-size: auto auto;
    cursor: pointer;
    border: none;
}
.userpanel_box {
    color: #E6E6E6;
    position: absolute;
    right: 0;
    top: 39px;
    text-align: right;
}
.userpanel_box a{
	color:#a9a9a9;
	font-size:14px;
}
.quickpanel {
    top: 60px;
    color: #E6E6E6;
    position: absolute;
    right: -3px;
}
.userpanel a, .quickpanel a {
    color: #A9A9A9;
    margin-bottom: 0;
    margin-left: 5px;
    margin-right: 5px;
    margin-top: 0;
}
.mainnav{
	-moz-border-bottom-colors: none;
    -moz-border-image: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background-repeat: repeat-x;
    border-bottom-color: #DDDDDD;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-left-color-ltr-source: physical;
    border-left-color-rtl-source: physical;
    border-left-color-value: #DDDDDD;
    border-left-style-ltr-source: physical;
    border-left-style-rtl-source: physical;
    border-left-style-value: solid;
    border-left-width-ltr-source: physical;
    border-left-width-rtl-source: physical;
    border-left-width-value: 1px;
    border-right-color-ltr-source: physical;
    border-right-color-rtl-source: physical;
    border-right-color-value: #DDDDDD;
    border-right-style-ltr-source: physical;
    border-right-style-rtl-source: physical;
    border-right-style-value: solid;
    border-right-width-ltr-source: physical;
    border-right-width-rtl-source: physical;
    border-right-width-value: 1px;
    border-top-color: #DDDDDD;
    border-top-style: solid;
    border-top-width: 1px;
    height: 35px;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
    width: 968px;
    margin-top: 10px;
    overflow-x: visible;
    overflow-y: visible;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images/headerpage_970_1.png");
    background-origin: padding-box;
    background-position: 0 0;
    background-size: auto auto;
    text-align: left;
    color: #888888;
    font-family: "宋体","Arial Narrow";
    font-size: 12px;
    font-size-adjust: none;
    font-style: normal;
    font-variant: normal;
    font-weight: normal;
    line-height: 1.5em;
}
.mainnav_list {
    line-height: 35px;
    padding-left: 10px;
    text-align: left;
}
.mainnav_list a {
    color: #414141;
    display: inline;
    float: left;
    font-size: 14px;
    margin-bottom: 0;
    margin-left: 11px;
    margin-right: 11px;
    margin-top: 0;
    -moz-text-blink: none;
    -moz-text-decoration-color: -moz-use-text-color;
    -moz-text-decoration-line: none;
    -moz-text-decoration-style: solid;
    line-height: 35px;
    
}
.mainnav_list .on {
    background-position: 0 -111px;
    color: #0081C2;
    display: block;
    font-weight: bold;
    height: 32px;
    line-height: 28px;
    margin-bottom: 0;
    margin-left: 0;
    margin-right: 0;
    margin-top: 4px;
    position: relative;
    text-align: center;
    width: 57px;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images/headerpage_970_2.png");
    background-origin: padding-box;
    background-repeat: no-repeat;
    background-size: auto auto;
}
.mainnav_list .on2 {
    background-position: -107px -111px;
    color: #0081C2;
    display: block;
    font-weight: bold;
    height: 32px;
    line-height: 28px;
    margin-bottom: 0;
    margin-left: 0;
    margin-right: 0;
    margin-top: 4px;
    position: relative;
    text-align: center;
    width: 65px;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images/headerpage_970_2.png");
    background-origin: padding-box;
    background-repeat: no-repeat;
    background-size: auto auto;
}
.top_nav_videolink {
    float: left;
    text-align: left;
    line-height: 35px;
    
}
.dropbox_1 {
    margin-right: 10px;
}
.dropbox {
    display: inline;
    float: right;
    height: 31px;
    margin-bottom: 0;
    margin-left: 0;
    margin-top: 3px;
    position: relative;
    width: 74px;
    z-index: 100;
}
.dropbox_tigger {
    color: #414141;
    display: block;
    height: 31px;
    line-height: 29px;
    position: relative;
    text-align: center;
    width: 72px;
    z-index: 100;
    -moz-text-blink: none;
    -moz-text-decoration-color: -moz-use-text-color;
    -moz-text-decoration-line: none;
    -moz-text-decoration-style: solid;
}
.mainnav_site {
    border-bottom-color: #F8F8F8;
    border-bottom-style: solid;
    border-bottom-width: 2px;
    text-align: left;
    text-align: left;
    margin-left: auto;
    margin-right: auto;
    width: 968px;
}
.mainnav_site a
{
	color: #414141;
}
.mainnav_site_con {
    -moz-border-bottom-colors: none;
    -moz-border-image: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-bottom-color: #EBEBEB;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-left-color-ltr-source: physical;
    border-left-color-rtl-source: physical;
    border-left-color-value: #EBEBEB;
    border-left-style-ltr-source: physical;
    border-left-style-rtl-source: physical;
    border-left-style-value: solid;
    border-left-width-ltr-source: physical;
    border-left-width-rtl-source: physical;
    border-left-width-value: 1px;
    border-right-color-ltr-source: physical;
    border-right-color-rtl-source: physical;
    border-right-color-value: #EBEBEB;
    border-right-style-ltr-source: physical;
    border-right-style-rtl-source: physical;
    border-right-style-value: solid;
    border-right-width-ltr-source: physical;
    border-right-width-rtl-source: physical;
    border-right-width-value: 1px;
    border-top-color: -moz-use-text-color;
    border-top-style: none;
    border-top-width: medium;
    color: #EBEBEB;
    height: 29px;
    line-height: 29px;
    padding-left: 18px;
    text-align: left;
}
.mainnav_site_con .on {
    color: #0082C6;
    font-weight: bold;
}
.mainnav_site_con a {
    display: inline;
    float: left;
    margin-bottom: 0;
    margin-left: 5px;
    margin-right: 5px;
    margin-top: 0;
    -moz-text-blink: none;
    -moz-text-decoration-color: -moz-use-text-color;
    -moz-text-decoration-line: none;
    -moz-text-decoration-style: solid;
    line-height: 29px;
    text-align: left;
}
span.cutline {
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("http://misc.web.xunlei.com/movie_index_60/img/cutline.png");
    background-origin: padding-box;
    background-position: 0 0;
    background-repeat: repeat;
    background-size: auto auto;
    display: block;
    float: left;
    height: 17px;
    margin-top: 6px;
    overflow-x: hidden;
    overflow-y: hidden;
    width: 1px;
    line-height: 29px;
    text-align: left;
}
.topinfo {
	width:180px;
    color: black;
    position: absolute;
    right: 80px;
    top: 5px;
    text-align: right;
    font-size: 12px;
}
</style>
</head>

<body>
<div class="header">
	<h1 class="header_logo">
		<a target="_self" title="汉安无限·畅享高清" href="getindexMsg.action">汉安无限·畅享高清</a>
	</h1>
	<div class="searchbox">
		<%--
		<form id="searchform" target="_self" action="" method="get">
			<fieldset class="searchbox_search">
				<input id="searchbox1" class="input" type="text" maxlength="50" onfocus="" name="keyword">
				<button id="btnSearch" type="submit">搜 索</button>
			</fieldset>
		</form>
		--%><form id="searchform" target="_self" action="searchByKey.action" method="post">
			<fieldset class="searchbox_search">
				<input id="searchbox1" class="input" type="text" maxlength="50" onfocus="javascript:document.getElementById('searchbox1').value=''"  name="keyword" value="超级战舰" />
				<button id="btnSearch" type="submit">搜 索</button>
			</fieldset>
		</form>
		
		<div class="searchbox_hottag">
			<a target="_blank" title="AA制生活" href="player.action?ID=1338&movieNum=1">AA制生活</a>
			<a target="_blank" title="金陵十三钗" href="player.action?ID=183&movieNum=1">金陵十三钗</a>
			<a target="_blank" title="决战星球" href="player.action?ID=27&movieNum=1">决战星球</a>
			<a target="_blank" title="生化危机" href="player.action?ID=39&movieNum=1">生化危机</a>
			|
			<a target="_blank" title="星球大战" href="player.action?ID=57&movieNum=1">星球大战</a>
			<a target="_blank" title="失恋33天" href="player.action?ID=98&movieNum=1">失恋33天</a>
		</div>
	</div>
	<div class="userpanel_box">
		<a id="top_login" target="_self" title="登录" href="login.jsp">登录</a>&nbsp;|&nbsp;<a title="注册" href="register.jsp">注册</a>
	</div>
	<!-- 
	<div class="quickpanel">
		<a title="迅雷会员" href="">迅雷会员</a>
		|
		<a target="_blank" title="数字商城" href="">数字商城</a>
		|
		<a title="帮助" href="">帮助</a>
	</div>
	-->
</div>
<div class="mainnav">
	<div class="mainnav_list">
		<a id="top_nav_0" class="on" title="首页"  href="getindexMsg.action">首页</a>
		<a id="top_nav_1" title="网址大全" href="nav.jsp">网址大全</a>
		<a id="top_nav_2" href="movieIndex.action" title="电影">电影</a>
		<a id="top_nav_3" href="showTV.action" title="电视剧">电视剧</a>
		<a id="top_nav_4"  href="zongyi.action" title="综艺">综艺</a>
		<a id="top_nav_5"  href="animes.action" title="动漫">动漫</a>
		<a id="top_nav_13" href="musicIndex.action" title="音乐">音乐</a>
		<a id="top_nav_15" href="softwareIndex.action" title="软件下载">软件下载</a>
		<div class="top_nav_videolink">
			<a id="top_nav_6" target="_self" title="游戏" href="games.jsp">游戏</a>
		</div>
		<a id="top_nav_9" title="上传视频" href="upload.jsp">上传视频</a>
		<a id="top_nav_14" title="电视台" href="searchByCateID.action?cateid=5">动作片</a>
		<div class="mainnav_list_2">
			<a id="top_nav_om" title="欧美大片" target="_self" href="searchByCateID.action?cateid=6">爱情片</a>
			<a id="top_nav_jd" title="经典大片" target="_self" href="searchByCateID.action?cateid=7">喜剧片</a>
			<a id="top_nav_hy" title="华语大片" target="_self" href="searchByCateID.action?cateid=9">科幻片</a>
			<img class="newico" src="images/new.png">
		</div>
	</div>
</div>
<!--
<div class="mainnav_site">
	<div class="mainnav_site">
		<div class="mainnav_site_con">
			<a class="on" href="">音乐首页</a>
			<span class="cutline"></span>
			<a href="">华语MV</a>
			<span class="cutline"></span>
			<a href="">韩语MV</a>
			<span class="cutline"></span>
			<a href="">日语MV</a>
			<span class="cutline"></span>
			<a href="">欧美MV</a>
			<span class="cutline"></span>
			<a href="">绝对Live</a>
			<span class="cutline"></span>
			<a href="">音乐News</a>
			<span class="cutline"></span>
			<a href="">人气最高</a>
			<span class="cutline"></span>
			<a href="">每日更新</a>
			<span class="cutline"></span>
			<a href="">评分最高</a>
			<span class="cutline"></span>
			<a href="">分类浏览</a>
		</div>
	</div>
</div>
 -->
</body>
</html>

