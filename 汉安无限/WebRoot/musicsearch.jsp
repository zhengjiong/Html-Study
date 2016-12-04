<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="z" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>汉安无限-音乐搜索频道</title>
    
	<meta http-equiv="pragma" content="no-cache" charset="UTF-8">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-音乐搜索频道">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<style type="text/css">
body {font-size:11px; margin:0;font-family:微软雅黑 !important;background: url("images/body_bg.jpg") repeat;}
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}
img{border:0px;}

.menu_navcc{width:960px; margin:0 auto;}
.menu_nav{width:970px;height:53px;background:url(images/nav_bg.gif) repeat-x top;float:left;}
.menu_nav .nav_content{padding-left:4px;background:url(images/nav_l_bg.gif) no-repeat left top;float:left;}
.menu_nav .nav_content li{width:114px;height:53px;padding-left:10px;padding-right:10px;background:url(images/nav_li_right.gif) no-repeat right top;float:left;line-height:53px;text-align:center;font-size:14px;font-weight:bold;}
.menu_nav .nav_content li a{color:#000;width:114px;height:53px;display:block;}
.menu_nav .nav_content li.current{line-height:53px;}


.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover{width:114px;height:53px;background:url(images/nav_li_current.gif) no-repeat bottom;display:block;color:#fff;}
.menu_nav .nav_content li a:hover{background:url(images/nav_li_hover.gif) no-repeat bottom;height:53px;line-height:53px;text-decoration:none;}

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
	border: 1px solid #09F;
	padding-right: 0px;
	padding-left: 0px;
}
#searchList {
	width: 540px;
	height: 300px;
	float: left;
	margin-left: 20px;
}
.hotList {
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #30F;
	padding-top: 10px;
}
#searchList ul li {
	float: left;
	width: 150px;
	height: 20px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #CCC;
	margin-top: 10px;
	font-size: 14px;
	overflow: hidden;
}
#song ul li {
	padding-top: 10px;
	margin-left: 20px;
}
#song ul li span {
	margin-right: 20px;
}
#boxList {
	width: 750px;
	float: left;
	margin-left: 10px;
	overflow: hidden;
	font-size: 12px;
}
#musicList ul li {
	float: left;
	width: 220px;
	margin-left: 20px;
	height:30px;
	line-height: 30px;
	overflow: hidden;
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
.cateImg {
	border: 1px solid #6FF;
	height: 200px;
	width: 140px;
	float: left;
	margin-right: 10px;
	margin-top: 10px;
	text-align: center;
}
#recommend li
{
	float: left;
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
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;}
#footer a{
	color:#414141;
}
#footer a:hover{
	color:#09a8dd;
}
</style>
<script type="text/javascript">
	function chkAll(chkAll)
	{
		if(chkAll)
		{
			$("#musics :checkbox").each(function(){
				$(this).attr("checked","checked");
			});
		}else{
			$("#musics :checkbox:checked").each(function(){
				$(this).removeAttr("checked");
			});
		}
	}
</script>
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
		<a id="top_nav_4" href="zongyi.action" title="综艺">综艺</a>
		<a id="top_nav_5" href="animes.action" title="动漫">动漫</a>
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
<div style="margin-top:10px;width:970px;overflow: hidden;margin-left:auto;margin-right:auto;">
  
  <div id="mainContent" style="overflow: hidden;">
    <div class="divborde" id="sidebar"><img src="images/OOOPIC_1.jpg" width="200" height="300" /></div>
    <div id="searchList">
    <div class="divhead">搜索列表</div>
	<z:iterator value="#request.searchMusicVos" id="music" status="status">
		<ul>
	    	<li>
	    		<a href="musicListPlayer.action?musicChk=<z:property value="#music.ID"/>">
	    			<z:property value="#music.musicName"/>
	    		</a>
	    	</li>
			<li><z:property value="#music.roleName"/></li>
	        <li style="text-align: center;"><a href="musicListPlayer.action?musicChk=<z:property value="#music.ID"/>">播放</a></li>
		</ul>
	</z:iterator>
    </div>
    <div id="sidebar2"><span class="divborde"><img src="images/OOOPIC_2.jpg" alt="" width="200" height="300" /></span></div>
  </div>
  <div id="mainContent" style="overflow: hidden;">
    <div class="divborde" id="sidebar"><img src="images/OOOPIC_3.jpg" width="200" height="300" /></div>
    <div id="musicList" >
	    <form action="musicListPlayer.action" id="musicPlay" name="musicPlay" method="post">
		    <div class="divhead">推荐音乐</div>
		    <div class="divborde" style="height:240px;overflow: hidden;">
				<ul id="musics">
				  <z:iterator value="#session.recommendMusicVos" id="music">
				      <li>
					    <input name="musicChk" type="checkbox" value="<z:property value="#music.ID"/>" />
				    	<a href="musicListPlayer.action?musicChk=<z:property value="#music.ID"/>">
			    			<z:property value="#music.musicName"/> - 
			    			<z:property value="#music.roleName"/>
			    		</a>
					  </li>
				  </z:iterator>
				</ul>
		    </div>
		    <input type="button" value="全选" onclick="javascript:chkAll(true)" />
			<input type="button" value="取消" onclick="chkAll(false)"/>
			<input type="submit"" value="播放" />
		</form>
    </div>
  </div>
  <div id="mainContent" style="overflow: hidden;height:350px;">
    <div id="sidebar"><span class="divborde"><img src="images/4402.jpg" alt="" width="200" height="300" /></span></div>
    <div id="boxList">
	    <div class="divhead">推荐专辑</div>
	    <div class="divborde"  style="overflow:hidden;">
	    <z:iterator value="#session.newAlbumVos" id="album">
		<div style="width:240px;height:100px;overflow: hidden;float: left;">
	        <div style="float: left;width:100px;height:100px;">
		  		<img src="<z:property value="#album.cover"/>" width="100" height="100" border="0" />
		  	</div>
	  		<ul style="float: left;width:138px;height:100px;overflow: hidden;">
	  			<li style="float: left;padding: 5px;">
	  				<a href="musicSearch.action?albumId=<z:property value="#album.ID"/>">
		  				<z:property value="#album.albumName"/>-
		  				<z:property value="#album.singer"/>
	  				</a>
	  			</li>
	  			<li style="overflow: hidden;float: left;padding: 5px;">唱片公司:<z:property value="#album.company"/></li>
	  			<li style="height:15px;overflow: hidden;float: left;padding: 5px;">发行时间:<z:property value="#album.issueDate"/></li>
	  		</ul>
		</div>
		</z:iterator>
	    </div>
  </div>
  </div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br/>
    蜀ICP备 12005138号-1
</div>
</body>
</html>
