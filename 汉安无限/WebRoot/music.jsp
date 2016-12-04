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
    
    <title>汉安无限-音乐频道</title>
    
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-音乐频道">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<title>汉安无限-音乐频道</title>
<LINK rel=stylesheet type=text/css 
href="CSS/style.css" media=all/>
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
#hottotal ul li {
	float: left;
	margin-top: 10px;
	font-size: 12px;
	overflow: hidden;
}
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;}
#footer a{
	color:#414141;
}
#footer a:hover{
	color:#09a8dd;
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
	color: #3b3b3b;
	padding:2px 0 2px 5px;
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
	line-height:10px;
	padding-top: 5px;
	height:10px;
	overflow: hidden;
	padding-left: 2px;
	font-size: 10px;
}
.albumItem_info_title
{
	font-size:9px;
	width:80px;
	font-weight:bolder;
	overflow: hidden;
	height:14px;
	padding-top:10px;
	padding-left: 2px;
	font-size: 12px;
}
.albumItem_info_title a
{
	display: block;
	height: 14px;
	line-height: 14px;
	overflow: hidden;
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

.userpanel_box {
    color: #E6E6E6;
    position: absolute;
    right: 0;
    top: 39px;
    width: 258px;
    text-align: right;
}
.userpanel_box a{
	color:#a9a9a9;
	font-size:11px;
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
.header
{
	width:970px;
	margin: 0 auto;
    overflow: hidden;
    position: relative;
    text-align: left;
    color: #888888;
}
.header_logo {
    height: 66px;
    width: 189px;
    margin-top: 35px;
    margin-left: 45px;
}
.header_logo a{
	display: block;
    height: 66px;
    overflow-x: hidden;
    overflow-y: hidden;
    text-indent: -9999px;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images/logo_2.png");
    background-origin: padding-box;
    background-repeat: no-repeat;
    background-size: auto auto;
}
.login_wrapper{
	background: url("images/login_bg.png") no-repeat;
	width: 200px;
	height: 23px;
	position: absolute;
	right: 0px;
	top:0px;
}
.login_wrapper li{
	width: 100px;
	float: left;
	text-align: center;
}
.login_wrapper li a{
	color: #5d5e33;
	font-size: 14px;
	font-weight: bold;
}
.search_wrapper{
	overflow: hidden;
	position: absolute;
	right: 0px;	
	top:40px;
	font-size: 14px;
}
.search_txt_wrapper{
	background: url("images/search_frame.png");
	float: right;
	height: 43px;
	overflow: hidden;
}
.search_txt{
	background: none;
	border: none;
	width: 271px;
	height: 43px;
	font-size: 14px;
	line-height: 42px;
}
.btnSearch_wrapper{
	float: right;
}
.btnSearch_wrapper button{
	width: 44px;
	height: 43px;
	background: url("images/search_btn.png");
	border: none;
}
.searchbox_hottag{
	position: absolute;
	right: 0px;
	top: 80px;
	font-size: 12px;
	padding: 2px 15px 2px 0;
}
.searchbox_hottag a{
	color: #676767;
}

.mainnav{
	-moz-border-bottom-colors: none;
    -moz-border-image: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    overflow: hidden;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
    width: 968px;
    margin-top: 3px;
    overflow-x: visible;
    overflow-y: visible;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
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
    height: 43px;
    background: url("images/nav_bg.png");
}
.mainnav_list {
    line-height: 43px;
    padding-left: 10px;
    text-align: left;
}
.mainnav_list a {
    color: #c4e379;
    display: inline;
    float: left;
    font-size: 16px;
    margin-bottom: 0;
    margin-top: 0;
    padding: 0 11px 0 11px;
    -moz-text-blink: none;
    -moz-text-decoration-color: -moz-use-text-color;
    -moz-text-decoration-line: none;
    -moz-text-decoration-style: solid;
    line-height: 43px;
    font-weight: bold;
}
.mainnav_list a:hover{
	text-decoration: none;
}
.mainnav_list .on {
    background-position: 0 -111px;
    color: #5d5e33;
    display: block;
    font-weight: bold;
    height: 43px;
    line-height: 43px;
    margin-bottom: 0;
    margin-left: 0;
    margin-right: 0;
    position: relative;
    text-align: center;
    background-attachment: scroll;
    background-color: transparent;
    background: url("images/nav_on_bg.png") repeat-x;
    background-origin: padding-box;
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
.nav_bottom{
	height: 5px;
	background: url("images/nav_bottom_bg.png") repeat-x;
	width: 968px;
	margin: 0 auto;
	margin-top: -1px;
}
</style>
<script type="text/javascript">
$(function(){
	for(var i=0;i<16;i++){
		$("#top_nav_"+i).attr("class","");
	}
	$("#top_nav_13").addClass("on");
});
	function chkAll(chkAll,tag)
	{
		if(chkAll)
		{
			$("#tagContent"+tag+" :checkbox").each(function(){
				$(this).attr("checked","checked");
			});
		}else{
			$("#musics :checkbox:checked").each(function(){
				$(this).removeAttr("checked");
			});
		}
	}
	function formsubmit()
	{
		if($("#musics :checkbox:checked").size() == 0)
		{
			return false;
		}else{
			return true;
		}
	}
</script>
</head>

<body>
<%--<div class="divbordeContent">
	<div>
		<table width="932" border="0" cellpadding="0" cellspacing="0">
		    <tr>
		      <td width="235" align="right"><h3>&nbsp;</h3>
		        <font style="font-family: 方正舒体;font-size: 40px;color:#0052a1;">汉安无限&nbsp;</font></td>
		      <td width="380" align="center"><br />
			      <form action="musicSearch.action" method="post">
			        <input name="condition" type="text" id="condition" size="50" maxlength="50" />
			        <input type="submit" name="button" id="button" value="提交" />
			      </form>
		      </td>
		      <td width="209"><p>&nbsp;</p>
		        <p><a href="register.jsp">注册</a>&nbsp;|&nbsp;<a href="login.jsp">登陆</a>&nbsp;|&nbsp;<a href="findusers.action">个人空间</a>&nbsp;|&nbsp;<a href="softwareIndex.action">常用软件下载</a></p>
		    </tr>
	  </table>
	</div>
	<div style="width:970px;" class="menu_nav clearfix">
	  <ul class="nav_content">
		<li id="memu0"><a href="getindexMsg.action" ><span>首页</span></a></li>
	    <li id="memu1"><a href="musicIndex.action" ><span>音乐</span></a></li>
	    <li id="memu2"><a href="movieindexs.action" ><span>电影</span></a></li>
	    <li id="memu3"><a href="tvindexs.action" ><span>电视剧</span></a></li>
	    <li id="memu4"><a href="zongyiindex.action"><span>综艺动漫</span></a></li>
	    <li id="memu5"><a href="javascript:void(0)"  ><span>娱乐游戏</span></a></li>
	    <li id="memu6"><a href="javascript:void(0)" ><span>新业务天地</span></a></li>
	  </ul>
	</div>
	<div style="width: 970px;"><a href="#"><img src="images/id=PHDsnWD1nHn&amp;gp=403&amp;time=nHnzrHb4n1Tknf.jpg" width="970" height="90" /></a>
	</div>
</div>
--%>
<div class="header">
	<h1 class="header_logo">
		<a target="_self" title="汉安无限·畅享高清" href="getindexMsg.action">汉安无限·畅享高清</a>
	</h1>
	<ul class="login_wrapper">
		<li><a target="_self" title="登录" href="login.jsp">登录</a></li>
		<li><a target="_self" title="注册" href="register.jsp">注册</a></li>
	</ul>
	<form id="searchform" target="_self" action="musicSearch.action" method="post">
		<div class="search_wrapper">
			<div class="btnSearch_wrapper">
				<button id="btnSearch" type="submit"></button>
			</div>
			<div class="search_txt_wrapper">
				<input id="searchbox1" class="search_txt" type="text" maxlength="50" onfocus="" name="condition">
			</div>
		</div>
	</form>
</div>

<div class="mainnav">
	<div class="mainnav_list">
		<a id="top_nav_0" title="首页"  href="getindexMsg.action">首页</a>
		<a id="top_nav_1" title="网址大全" href="nav.jsp">网址大全</a>
		<a id="top_nav_2" href="movieIndex.action" title="电影">电影</a>
		<a id="top_nav_3" href="showTV.action" title="电视剧">电视剧</a>
		<a id="top_nav_4"  href="zongyi.action" title="综艺">综艺</a>
		<a id="top_nav_5"  href="animes.action" title="动漫">动漫</a>
		<a id="top_nav_13" class="on" href="musicIndex.action" title="音乐">音乐</a>
		<a id="top_nav_6" target="_self" title="游戏" href="games.jsp">游戏下载</a>
		<a id="top_nav_15" href="softwareIndex.action" title="软件下载">软件下载</a>
		<a id="top_nav_7" href="" title="搞笑视频">搞笑视频</a>
		<a id="top_nav_8" href="" title="游戏视频">游戏视频</a>
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
<div class="divbordeContent" style="margin-top:20px;">
	<div class="divborde" style="position:relative;float:left;width:300px;height:235px;overflow: hidden;">
	  <div class="divhead">热门专辑</div>
	  <div class="albumContent">
		  <z:iterator value="#session.newAlbumVos" id="album">
		  	<div class="albumItem">
		  		<div class="albumItem_img">
		  			<img src="<z:property value="#album.cover"/>" width="70" height="70" border="0" />
		  		</div>
		  		<dl class="albumItem_info">
		  			<dt class="albumItem_info_title">
		  				<a title="<z:property value='#album.albumName'/>-<z:property value='#album.singer'/>" href="musicSearch.action?albumId=<z:property value="#album.ID"/>">
			  				<z:property value="#album.albumName"/>-
			  				<z:property value="#album.singer"/>
		  				</a>
		  			</dt>
		  			<dd>唱片公司:<z:property value="#album.company"/></dd>
		  			<dd>时间:<z:property value="#album.issueDate"/></dd>
		  		</dl>
		  	</div>
		  </z:iterator>
	  </div>
	</div>
	
	<div class="divborde" style="float:left;margin-left:20px;width:300px;height:235px;">
	  <div class="divhead">新歌速递
	  </div>  
	  <div style="width: 300px;">
	  	<z:iterator value="#session.musicVos" id="music" status="status">
		  	<div class="hotRow">
		  		<div class="hotRow_left"><z:property value="#status.count"/></div>
		  		<div class="hotRow_right"><a href="musicListPlayer.action?musicChk=<z:property value="#music.ID"/>"><z:property value="#music.roleName"/> - <z:property value="#music.musicName"/></a></div>
		  	</div>
	  	</z:iterator>
	  </div>
	</div>
	
	<div class="divborde" style=" float:left ;margin-left:20px;width:300px; height:235px; ">
	  <div class="divhead">热门歌手</div>
	  <div style="width: 300px;">
	  	<div style="padding-top:5px;padding-left: 2px;">
	  		<img src="images/singer1.JPG" width="54" height="50" alt="周杰伦" />
	  		<img src="images/singer2.JPG" width="54" height="50" alt="许嵩" />
	  		<img src="images/singer3.JPG" width="54" height="50" alt="梁静茹" />
	  		<img src="images/singer4.JPG" width="54" height="50" alt="刘德华" />
	  		<img src="images/singer5.JPG" width="54" height="50" alt="王力宏" />
	  	</div>
	  	<div style="border-top:1px dotted #66ccff;margin:0 auto;width:250px;height:1px;"></div>
	  	<div class="singerTopRow">
	  		<z:iterator value="#session.singers" id="singers" status="status">
	  			<a href="musicSearch.action?roleName=<z:property value="#singers.roleName"/>">
		  			<div class="singerTopRow_column"><z:property value="#singers.roleName"/></div>
		  		</a>
		  		<z:if test="%{#status.count % 3 == 0}">
	  				<div style="float:left;border-top:1px dotted #66ccff;margin:0 auto;width:250px;height:1px;"></div>
	  			</z:if>
			</z:iterator>
	  	</div>
	  	<div style="border-top:1px dotted #66ccff;margin:0 auto;width:250px;height:1px;"></div>
	  </div>
	</div>
</div><tr valign="middle"></tr>
<div class="divbordeContent">
<div class="divborde" style="float:left ;margin-top:20px;width:650px;overflow: hidden;">
	<DIV id=con>
		<UL id=tags>
		  <LI class=selectTag><A onClick="selectTag('tagContent0',this)" 
		  href="javascript:void(0)">流行歌曲</A> </LI>
		  <LI><A onClick="selectTag('tagContent1',this)" 
		  href="javascript:void(0)">网络歌曲</A> </LI>
		  <LI><A onClick="selectTag('tagContent2',this)" 
		  href="javascript:void(0)">经典老歌</A> </LI>
		</UL>
		<DIV id="tagContent">
			<DIV class="tagContent selectTag" id="tagContent0">
				<form action="musicListPlayer.action" onsubmit="return formsubmit();" id="musicPlay" name="musicPlay" method="post">
					<div class="tagContent_row" style="padding-bottom:20px;">
						<z:iterator value="#session.popMusicVos" id="popMusic" status="status">
							<ul class="tagContent_row_item" id="musics">
								<li class="tagContent_row_left"><z:property value="#status.count"/></li>
								<li class="tagContent_row_chk">
									<input name="musicChk" type="checkbox" value="<z:property value="#popMusic.ID"/>" />
								</li>
								<li class="tagContent_row_middle">
									<a href="musicListPlayer.action?musicChk=<z:property value="#popMusic.ID"/>"><z:property value="#popMusic.musicName" /></a>
								</li>
								<li class="tagContent_row_right"><z:property value="#popMusic.roleName"/></li>
							</ul>
						</z:iterator>
					</div>
					<z:if test="%{#session.popMusicVos != null}">
					<div style="position: absolute;right: 0;bottom: 0;">
						<input type="button" value="全选" onclick="javascript:chkAll(true,0)" />
						<input type="button" value="取消" onclick="chkAll(false)"/>
						<input type="submit" value="播放" />
					</div>
					</z:if>
				</form>
			</DIV>
			
			<DIV class="tagContent" id=tagContent1>
				<form action="musicListPlayer.action" onsubmit="return " id="musicPlay" name="musicPlay" method="post">
					<div class="tagContent_row">
						<z:iterator value="#session.netMusicVos" id="netMusic" status="status">
							<ul class="tagContent_row_item" id="musics">
								<li class="tagContent_row_left"><z:property value="#status.count"/></li>
								<li class="tagContent_row_chk">
									<input name="musicChk" type="checkbox" value="<z:property value="#netMusic.ID"/>" />
								</li>
								<li class="tagContent_row_middle">
									<a href="musicListPlayer.action?musicChk=<z:property value="#netMusic.ID"/>"><z:property value="#netMusic.musicName" /></a>
								</li>
								<li class="tagContent_row_right"><z:property value="#netMusic.roleName"/></li>
							</ul>
						</z:iterator>
					</div>
					<z:if test="%{#session.netMusicVos != null}">
						<div style="position: absolute;right: 0;bottom: 0;">
							<input type="button" value="全选" onclick="javascript:chkAll(true,1)" />
							<input type="button" value="取消" onclick="chkAll(false)"/>
							<input type="submit" value="播放" />
						</div>
					</z:if>
				</form>
			</DIV>
			<DIV class=tagContent id=tagContent2>
				<form action="musicListPlayer.action" id="musicPlay" name="musicPlay" method="post">
					<div class="tagContent_row">
						<z:iterator value="#session.classicsMusicVos" id="classicsMusic" status="status">
							<ul class="tagContent_row_item" id="musics">
								<li class="tagContent_row_left"><z:property value="#status.count"/></li>
								<li class="tagContent_row_chk">
									<input name="musicChk" type="checkbox" value="<z:property value="#classicsMusic.ID"/>" />
								</li>
								<li class="tagContent_row_middle">
									<a href="musicListPlayer.action?musicChk=<z:property value="#classicsMusic.ID"/>"><z:property value="#classicsMusic.musicName" /></a>
								</li>
								<li class="tagContent_row_right"><z:property value="#classicsMusic.roleName"/></li>
							</ul>
						</z:iterator>
					</div>
					<z:if test="%{#session.classicsMusicVos != null}">
						<div style="position: absolute;right: 0;bottom: 0;">
							<input type="button" value="全选" onclick="javascript:chkAll(true,2)" />
							<input type="button" value="取消" onclick="chkAll(false)"/>
							<input type="submit"" value="播放" />
						</div>
					</z:if>
				</form>
			</DIV>
		</DIV>
	</DIV>
<SCRIPT type=text/javascript>
function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=0; j=document.getElementById("tagContent"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
</SCRIPT>
</div>
<div class="divborde" style="float:left ;margin-left:20px; margin-top:20px;width:250px;overflow: hidden;">
  <div class="divhead">热歌排行</div>
  <div id="hottotal" style="width:250px;overflow: hidden;padding-bottom: 5px;">
  	<z:iterator value="#session.musicVos" id="music" status="status">
  	<ul style="overflow: hidden;">
    	<li style="float:left;margin-left:4px;padding-left:0px;width:18px;height:15px;line-height:15px;background:#338ebe; text-align:center;"><font style="color: white;"><z:property value="#status.count"/></font></li>
        <li style="float:left;text-indent:1em;width:140px;height:15px;overflow: hidden;"><a href="musicListPlayer.action?musicChk=<z:property value="#music.ID"/>"><z:property value="#music.musicName"/></a></li>
        <li style="float:right;margin-right:3px;text-align:right;width:78px;height:15px;overflow: hidden;"><z:property value="#music.roleName"/></li>
    </ul>
    </z:iterator>
  </div>
</div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>

</body>
</html>

