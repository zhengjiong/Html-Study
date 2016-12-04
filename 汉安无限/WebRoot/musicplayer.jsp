<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="z" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    
    <title>汉安无限-音乐播放频道</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-音乐播放频道">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script type="text/javascript">
var passit_title = "";//自定义分享标题，删除和留空表示使用默认
var passit_url = "";//自定义分享网址，删除和留空表示使用默认
var passit_content= "";//自定义分享内容，删除和留空表示使用默认Meta中的描述
var passit_image= "";//自定义分享图片，删除和留空表示不分享图片
var sina_appkey= "";//sina微博appkey,删除和留空表示使用默认
var qq_appkey= "";//腾讯微博appkey,删除和留空表示使用默认
</script>
<script type="text/javascript">
bookmark_service_div="qq,kxzt,qqxy,baiduHi,bookmark,baidu,douban,sohuweibo,163weibo,more";
bookmark_service="qqkj,sinaweibo,xnzt,qqweibo,more";</script>
<script type="text/javascript" src="http://www.passit.cn/js/passit_bar_new.js?pub=0&simple=1" charset="UTF-8"></script>
<STYLE type=text/css>
 
TD { FONT-SIZE: 9pt; LINE-HEIGHT: 17px; }
 
BODY{
 
FONT-SIZE: 9pt;
 
LINE-HEIGHT: 17px;
 
margin-left: 0px;
 
margin-top: 0px;
 
margin-right: 0px;
 
margin-bottom: 0px;
 
}
#lrcollbox td, #lrcollbox font {font-family: 黑体; font-size: 16px;}
 
#lrcoll td { color:#0080C0; cursor: default; }
 
#lrcbox { color:#00FF00 }
 
#lrcfilter { filter: alpha(opacity=0) }
 
#lrcbc { color:#FFFF33 }
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;}
#footer a{
	color:#414141;
}
#footer a:hover{
	color:#09a8dd;
}
body {font-size:11px; margin:0;font-family:微软雅黑 !important;background: url("images/body_bg.jpg") repeat;}
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}
img{border:0px;}
.menu_navcc{width:970px; margin:0 auto;}
.menu_nav{width:970px;height:53px;background:url(images/nav_bg.gif) repeat-x top;float:left;margin:0 auto;}
.menu_nav .nav_content{padding-left:4px;background:url(images/nav_l_bg.gif) no-repeat left top;float:left;}
.menu_nav .nav_content li{width:114px;height:53px;padding-left:10px;padding-right:10px;background:url(images/nav_li_right.gif) no-repeat right top;float:left;line-height:53px;text-align:center;font-size:14px;font-weight:bold;}
.menu_nav .nav_content li a{color:#000;width:114px;height:53px;display:block;}
.menu_content{width:970px;margin:0 auto;overflow:hidden;}
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
.playlist {
	border: 1px solid #06F;
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
	padding-right: 0px;
	padding-left: 0px;
	margin-right: 5px;
	margin-left: 5px;
}
.playerlist {
	border: 1px solid #000;
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
</style>
 
</head>
 
<script language="JavaScript">
 
self.moveTo(0,0);
 
self.resizeTo(screen.availWidth,screen.availHeight);
 
</script>
 
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
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
<div class="menu_navcc" style="margin-top:15px;margin-bottom: 10px;">
	<img border="0" width="970" height="100" src="images/yidong.jpg" id="aeaoofnhgocdbnbeljkmbjdmhbcokfdb-mousedown">
</div>
<div class="menu_navcc" style="height:300px;padding-left:110px;margin-top: 20px;">
	<div style="float:left;width:300px;height:300px;">
		<a href="javascript:void;">
			<img src="images/qipai.jpg" width="250" height="300" border=0 />
		</a>
	</div>
	<div style="float:left;width:240px;height:200px;">
		<object type="application/x-shockwave-flash" data="js/dewplayer-playlist.swf" width="240" height="200" id="dewplayer" name="dewplayer">
			<param name="wmode" value="transparent" />
			<param name="movie" value="js/dewplayer-playlist.swf" />
			<param name="flashvars" value="showtime=true&autoreplay=true&autostart=1&xml=musicxml/<z:property value="#session.uniqueString"/>.xml" />
		</object>
	</div>
	<div style="float:left;width:240px;margin-left:50px;">
		<a href="javascript:void;">
			<img src="images/qipailogin.jpg" width="240" height="300" border=0 />
		</a>
	</div>
</div>
<br/>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br/>
    蜀ICP备 12005138号-1
</div>
</body>
</html>