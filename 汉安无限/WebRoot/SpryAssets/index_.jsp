<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base href="<%=basePath%>"/>
    
    <title>汉安无限</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="汉安无限"/>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/index_.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<script type="text/javascript">
function show(){
	$("#float_div").html(document.all.float_div.style.posTop);
	setTimeout("show();", 50);
}

//setTimeout("show();", 50);
var ini;
function inix(){
    ini=parseInt(document.getElementById("float_div").style.top);
    //alert(ini);
    ini2=parseInt(document.getElementById("float_div").style.top);
    
}
function move(){
    document.getElementById("float_div").style.top=document.body.scrollTop+ini;
    //alert("move,ini="+window.document.body.scrollTop);
}
window.onscroll=move;

</script>
<style type="text/css">
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
    height: 48px;
    left: 23px;
    position: absolute;
    top: 20px;
    width: 260px;
}
.header_logo a{
	background-position: -69px -36px;
	display: block;
    height: 48px;
    overflow-x: hidden;
    overflow-y: hidden;
    text-indent: -9999px;
    
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("images//headerpage_970_2.png");
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
    width: 258px;
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
.topinfo{
	position:absolute;
	right: 68px;
	top:24px;
	width:200px;
	overflow: hidden;
	color: #5eafff;
	font-weight: bold;
	font-size: 12px;
}
</style>
</head>
<body onload="javascript:bodyonload();inix();" id="body">
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
				<input id="searchbox1" class="input" type="text" maxlength="50" onfocus="javascript:document.getElementById('searchbox1').value=''"  name="keyword" value="超级战舰">
				<button id="btnSearch" type="submit">搜 索</button>
			</fieldset>
		</form>
		
		<div class="searchbox_hottag">
			<a target="_blank" title="AA制生活" href="player.action?ID=1338&movieNum=1">AA制生活</a>
			<a target="_blank" title="金陵十三钗" href="player.action?ID=283&movieNum=1">金陵十三钗</a>
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
	<div class="topinfo">本站所有视频均系网友上传，仅供测试带宽使用，观看请买正版</div>
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
		<a id="top_nav_1" target="_self" title="网址大全" href="nav.jsp">网址大全</a>
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
		<a id="top_nav_14" target="_self" title="电视台" href="searchByCateID.action?cateid=5">动作片</a>
		<div class="mainnav_list_2">
			<a id="top_nav_om" title="爱情片" target="_self" href="searchByCateID.action?cateid=6">爱情片</a>
			<a id="top_nav_jd" title="喜剧片" target="_self" href="searchByCateID.action?cateid=7">喜剧片</a>
			<a id="top_nav_hy" title="科幻片" target="_self" href="searchByCateID.action?cateid=9">科幻片</a>
			<img class="newico" src="images/new.png">
		</div>
	</div>
</div>
<div class="foucebox">
	<div class="foucebox_con">
		<div class="lamu">
			<div id="cm1169_outer" class="lamubox lamubox_L" style="display:none">
				<div id="cm1169_bg" class="lamu_bg lamu_bg_L" onmouseover="lamuLight()"></div>
					<a class="lamubox_close lamubox_close_L" onclick="lamuShow=false;lamuClose()" target="_self" title="" href="javascript://">关闭</a>
				<div id="cm1169" class="lamu_con" onmouseout="lamuShadow()"></div>
			</div>
			<div id="cm1170_outer" class="lamubox lamubox_R" style="display:none">
				<div id="cm1170_bg" class="lamu_bg lamu_bg_R" onmouseover="lamuLight()"></div>
					<a class="lamubox_close lamubox_close_R" onclick="lamuShow=false;lamuClose()" target="_self" title="" href="javascript://">关闭</a>
				<div id="cm1170" class="lamu_con" onmouseout="lamuShadow()"></div>
			</div>
		</div>
		<div class="scrollimg2">
			<div id="SwitchBigPic">
				<div id="showDiv_0" class="scrollimg2_bigimg" style="display: block; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711"  href="player.action?ID=433&movieNum=1" target="_blank">
							<img id="bigpic_0" src="images/fengmian/damoshushi.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_1" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" title="" target="_blank" href="player.action?ID=1015&movieNum=1">
							<img id="bigpic_0" title="" onload="loadNext()" src="images/fengmian/direnjiezhitongtiandiguo.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_2" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711"  href="player.action?ID=1903&movieNum=1" target="_blank">
							<img id="bigpic_0" onload="loadNext()" src="images/fengmian/diaosinvshi.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_3" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" title="" href="player.action?ID=2089&movieNum=1" target="_blank">
							<img id="bigpic_3" title="" alt="" src="images/fengmian/huangjindajiean.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_4" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a rel="external nofollow" blockid="3711" title="" href="player.action?ID=1638&movieNum=1" target="_blank">
							<img id="bigpic_4"  src="images/fengmian/wutafangwangshizi.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_5" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="player.action?ID=1338&movieNum=1" target="_blank">
							<img id="bigpic_5"  src="images/fengmian/AAzhishenghuo.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_6" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
					<a blockid="3711" href="player.action?ID=2139&movieNum=1" target="_blank">
						<img id="bigpic_6" src="images/fengmian/pifu.jpg"/>
					</a>
					</div>
				</div>
				<div id="showDiv_7" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="player.action?ID=1924&movieNum=1" target="_blank">
							<img id="bigpic_7" src="images/fengmian/zhenhuanchuan.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_8" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="player.action?ID=394&movieNum=1" target="_blank">
							<img id="bigpic_8" src="images/fengmian/Hello,shuxiansheng.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_9" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden; z-index: 0;">
					<div>
						<a blockid="3711"  href="player.action?ID=109&movieNum=1" target="_blank">
							<img id="bigpic_9" src="images/fengmian/woyuanyi.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_10" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a rel="external nofollow" href="player.action?ID=2088&movieNum=1" target="_blank">
							<img id="bigpic_10" src="images/fengmian/chaojizhanjian.jpg"/>
						</a>
					</div>
				</div>
				<div id="showDiv_11" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="player.action?ID=2215&movieNum=1" target="_blank">
							<img id="bigpic_11" src="images/fengmian/fuchouzhelianmeng.jpg"/>
						</a>
					</div>
				</div>
			</div>
			<div class="scrollimg2_tigger">
				<div id="bigHover" class="scrollimg2_tigger_hoverbg"></div>
				<ul>
					<li id="scrollimg2_tigger_0">
						<a href="player.action?ID=433&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_0" src="images/fengmian/damo.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_1">
						<a href="player.action?ID=1015&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_1" src="images/fengmian/shentan.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_2">
						<a href="player.action?ID=1903&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_2" src="images/fengmian/diaosinvshi1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_3">
						<a blockid="3711" href="player.action?ID=2089&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_3" src="images/fengmian/huangjindajiean1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_4">
						<a rel="external nofollow"  href="player.action?ID=1638&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_4" src="images/fengmian/wutafangwangshizi1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_5">
						<a blockid="3711" href="player.action?ID=1338&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_5" src="images/fengmian/AA.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_6">
						<a blockid="3711"  href="player.action?ID=2139&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_6" src="images/fengmian/pifu1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_7">
						<a blockid="3711" href="player.action?ID=1924&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_7" src="images/fengmian/zhenhuanchuan1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_8">
						<a blockid="3711" href="player.action?ID=394&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_8"  src="images/fengmian/Hello,shuxiansheng1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_9">
						<a blockid="3711" href="player.action?ID=109&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_9" src="images/fengmian/woyuan.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_10">
						<a rel="external nofollow"  href="player.action?ID=2088&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_10"  src="images/fengmian/chaojizhanjian1.jpg"/>
						</a>
					</li>
					<li id="scrollimg2_tigger_11">
						<a blockid="3711" href="player.action?ID=2215&movieNum=1" target="_blank">
						<img id="big_pic_nav_on_11" src="images/fengmian/fuchouzhelianmeng1.jpg"/>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="foucerank">
			<ul class="tabbox">
				<li id="Tab_rebo_0" class="on">热播</li>
				<li id="Tab_rebo_1">电影</li>
				<li id="Tab_rebo_2">电视</li>
				<li id="Tab_rebo_3">动漫</li>
				<li id="Tab_rebo_4">综艺</li>
				<!-- 
				<li id="Tab_rebo_5">纪录</li>
				-->
			</ul>
			<div style="overflow: hidden;height:260px;" >
				<ul id="tabbox_ul_0" style="height:260px;overflow: hidden;position:relative;">
					<a href="searchByKey.action?bid=1&key=" class="more">更多</a>
					<s:iterator value="#request.moviesvolistall" id="MoviesVo" status="status">
						<li>
							<font class="tabbox_ul_0_top"><s:property value="#status.count"/></font>
							<span class="tabbox_ul_0_content">
								<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
								<strong style="color:#5f5f5f;"><s:property  value="#MoviesVo.updateNum"/></strong>
							</span>
							<span class="tabbox_ul_0_content_score"><s:property  value="#MoviesVo.sore"/></span>
						</li>
					</s:iterator>
				</ul>
				<ul id="tabbox_ul_1" style="display: none;height:260px;overflow: hidden;position:relative;">
					<a href="movieIndex.action" class="more">更多</a>
					<s:iterator value="#request.moviesvolistdj" id="MoviesVo" status="status">
					<li>
						<font class="tabbox_ul_0_top"><s:property value="#status.count"/></font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
							<strong style="color:#5f5f5f;"><s:property  value="#MoviesVo.updateNum"/></strong>
						</span>
						<span class="tabbox_ul_0_content_score"><s:property  value="#MoviesVo.sore"/></span>
					</li>
					</s:iterator>
				</ul>
				<ul id="tabbox_ul_2" style="display: none;height:260px;overflow: hidden;position:relative;">
					<a href="showTV.action" class="more">更多</a>
					<s:iterator value="#request.moviesvolisttv" id="MoviesVo" status="status">
					<li>
						<font class="tabbox_ul_0_top"><s:property value="#status.count"/></font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
							<strong style="color:#5f5f5f;"><s:property  value="#MoviesVo.updateNum"/></strong>
						</span>
						<span class="tabbox_ul_0_content_score"><s:property  value="#MoviesVo.sore"/></span>
					</li>
					</s:iterator>
				</ul>
				<ul id="tabbox_ul_3" style="display: none;height:260px;overflow: hidden;position:relative;">
					<a href="animes.action" class="more">更多</a>
					<s:iterator value="#request.moviesvolistdm" id="MoviesVo" status="status">
					<li>
						<font class="tabbox_ul_0_top"><s:property value="#status.count"/></font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
							<strong style="color:#5f5f5f;"><s:property  value="#MoviesVo.updateNum"/></strong>
						</span>
						<span class="tabbox_ul_0_content_score"><s:property  value="#MoviesVo.sore"/></span>
					</li>
					</s:iterator>
				</ul>
				<ul id="tabbox_ul_4" style="display: none;height:260px;overflow: hidden;position:relative;">
					<a href="zongyi.action" class="more">更多</a>
					<s:iterator value="#request.moviesvolistzy" id="MoviesVo" status="status">
					<li>
						<font class="tabbox_ul_0_top"><s:property value="#status.count"/></font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
							<strong style="color:#5f5f5f;"><s:property  value="#MoviesVo.updateNum"/></strong>
						</span>
						<span class="tabbox_ul_0_content_score"><s:property  value="#MoviesVo.sore"/></span>
					</li>
				</s:iterator>
					
				</ul>
			</div>
			<div style="width:225px;height:60px;padding-left:10px;padding-top:10px;">
				电影最新消息
			</div>
		</div>
	</div>
</div>
<div class="topMovie">
	<div class="topMovie_con">
		<div class="topmovie_bg">
			<a href="searchByCateID.action?cateid=9&bid=1" class="topmovie_bg_title">科幻剧推荐</a>
			<ul>
				<s:iterator value="#request.moviesrmdp1" id="MoviesVo" status="status">
				<li>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_title_a">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" alt="" />
					</a>
					<div class="topmovie_bg_msg">
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_msg_name"><s:property  value="#MoviesVo.MovieName"/></a>
						<span class="topmovie_bg_msg_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
						<a href="" class="topmovie_bg_msg_img"></a>
					</div>
				</li>
				</s:iterator>
			</ul>
			<ul class="topmovie_bg_ul_2">
				<s:iterator value="#request.moviesrmdp2" id="MoviesVo" status="status">
				<li style="margin-top: 10px;">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_ul_2_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<span class="topmovie_bg_ul_2_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
					<div class="clear"></div>
					<span class="topmovie_bg_ul_2_intro">
						<s:property  value="#MoviesVo.roleName"/>
					</span>
				</li>
				</s:iterator>
			</ul>
		</div>
	</div>
	<div class="topMovie_con">
		<div class="topmovie_bg" style="border-top: 3px solid #879ac5;">
			<a href="searchByCateID.action?cateid=11&bid=1" class="topmovie_bg_title" style="color:#879ac5;">战争剧推荐</a>
			<ul>
				<s:iterator value="#request.moviesman1" id="MoviesVo" status="status">
				<li>
					<a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_title_a" target="_blank">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" alt="" />
					</a>
					<div class="topmovie_bg_msg">
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_msg_name" ><s:property  value="#MoviesVo.MovieName"/></a>
						<span class="topmovie_bg_msg_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
						<a href="" class="topmovie_bg_msg_img"></a>
					</div>
				</li>
				</s:iterator>
			</ul>
			<ul class="topmovie_bg_ul_2">
				<s:iterator value="#request.moviesman2" id="MoviesVo" status="status">
				<li style="margin-top: 10px;">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_ul_2_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<span class="topmovie_bg_ul_2_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
					<div class="clear"></div>
					<span class="topmovie_bg_ul_2_intro">
						<s:property  value="#MoviesVo.roleName"/>
					</span>
				</li>
				</s:iterator>
			</ul>
		</div>
	</div>
	<div class="topMovie_con">
		<div class="topmovie_bg" style="border-top: 3px solid #a6a6a6;">
			<a href="searchByAreaID.action?bid=2&aresid=4" class="topmovie_bg_title" style="color:#a6a6a6;">日韩剧推荐</a>
			<ul>
				<s:iterator value="#request.movieshwjc1" id="MoviesVo" status="status">
				<li>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_title_a">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" alt="" />
					</a>
					<div class="topmovie_bg_msg">
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_msg_name"><s:property  value="#MoviesVo.MovieName"/></a>
						<span class="topmovie_bg_msg_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
						<a href="" class="topmovie_bg_msg_img"></a>
					</div>
				</li>
				</s:iterator>
				
			</ul>
			<ul class="topmovie_bg_ul_2">
				<s:iterator value="#request.movieshwjc2" id="MoviesVo" status="status">
				<li style="margin-top: 10px;">
					<a target="_blank"  href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_ul_2_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<span class="topmovie_bg_ul_2_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
					<div class="clear"></div>
					<span class="topmovie_bg_ul_2_intro">
						<s:property  value="#MoviesVo.roleName"/>
					</span>
				</li>
				</s:iterator>
				
			</ul>
		</div>
	</div>
	<div class="topMovie_con">
		<div class="topmovie_bg" style="border-top: 3px solid #7ec0da;">
			<a href="searchByKey.action?key=&bid=3" class="topmovie_bg_title" style="color:#7ec0da;">动漫剧推荐</a>
			<ul>
				<s:iterator value="#request.moviesrqdm1" id="MoviesVo" status="status">
				<li>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_title_a">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" alt="" />
					</a>
					<div class="topmovie_bg_msg">
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_msg_name"><s:property  value="#MoviesVo.MovieName"/></a>
						<span class="topmovie_bg_msg_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
						<a href="" class="topmovie_bg_msg_img"></a>
					</div>
				</li>
				</s:iterator>
				
			</ul>
			<ul class="topmovie_bg_ul_2">
				<s:iterator value="#request.moviesrqdm2" id="MoviesVo" status="status">
				<li style="margin-top: 10px;">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_ul_2_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<span class="topmovie_bg_ul_2_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
					<div class="clear"></div>
					<span class="topmovie_bg_ul_2_intro">
						<s:property  value="#MoviesVo.roleName"/>
					</span>
				</li>
				</s:iterator>
				
			</ul>
		</div>
	</div>
	<div class="topMovie_con">
		<div class="topmovie_bg" style="border-top: 3px solid #e18786;">
			<a href="searchByAreaID.action?aresid=1&bid=2" class="topmovie_bg_title" style="color:#e18786;">港台剧推荐</a>
			<ul>
				<s:iterator value="#request.moviesgtjc1" id="MoviesVo" status="status">
				<li>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_title_a">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" alt="" />
					</a>
					<div class="topmovie_bg_msg">
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_msg_name"><s:property  value="#MoviesVo.MovieName"/></a>
						<span class="topmovie_bg_msg_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
						<a href="" class="topmovie_bg_msg_img"></a>
					</div>
				</li>
				</s:iterator>
			</ul>
			<ul class="topmovie_bg_ul_2">
				<s:iterator value="#request.moviesgtjc2" id="MoviesVo" status="status">
				<li style="margin-top: 10px;">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_ul_2_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<span class="topmovie_bg_ul_2_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
					<div class="clear"></div>
					<span class="topmovie_bg_ul_2_intro">
						<s:property  value="#MoviesVo.roleName"/>
					</span>
				</li>
				</s:iterator>
				
			</ul>
		</div>
	</div>
	<div class="topMovie_con">
		<div class="topmovie_bg" style="border-top: 3px solid #e4cd6f;">
			<a href="searchByKey.action?bid=4&key=" class="topmovie_bg_title" style="color:#e4cd6f;">综艺推荐</a>
			<ul>
				<s:iterator value="#request.moviesrqzy1" id="MoviesVo" status="status">
				<li>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_title_a">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" alt="" />
					</a>
					<div class="topmovie_bg_msg">
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_msg_name"><s:property  value="#MoviesVo.MovieName"/></a>
						<span class="topmovie_bg_msg_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
						<a href="" class="topmovie_bg_msg_img"></a>
					</div>
				</li>
				</s:iterator>
				
			</ul>
			<ul class="topmovie_bg_ul_2">
				<s:iterator value="#request.moviesrqzy2" id="MoviesVo" status="status">
				<li style="margin-top: 10px;">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="topmovie_bg_ul_2_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<span class="topmovie_bg_ul_2_resolution"><s:property  value="#MoviesVo.updateNum"/></span>
					<div class="clear"></div>
					<span class="topmovie_bg_ul_2_intro">
						<s:property  value="#MoviesVo.roleName"/>
					</span>
				</li>
				</s:iterator>
			</ul>
		</div>
	</div>
</div>
<div style="width:973px;height:83px;margin:0 auto;margin-top:15px;">
	<img width="973" height="85" src="images/123243.jpg">
</div>
<div class="wrapper_box">
	<div class="main">
		<div class="box_tt">
			<a class="box_tt_left" href="searchByKey.action?bid=1&key=">今日电影</a>
			<div class="box_tt_middle">
				<a target="_blank" href="player.action?ID=2088&movieNum=1">超级战舰</a>
				<span class="">(利亚姆·尼森演绎)</span>&nbsp;&nbsp;|
				<a href="player.action?ID=98&movieNum=1" target="_blank">失恋33天</a>
				<span>(迈克尔·杰特 )</span>&nbsp;&nbsp;|
				<a href="player.action?ID=638&movieNum=1" target="_blank">无间道</a>
				<span>(任贤齐)</span>
			</div>
			<a class="box_tt_right" href="searchByKey.action?bid=1&key=">更多</a>
		</div>
		<ul class="movielist">
			<s:iterator value="#request.moviestodaym" id="MoviesVo" status="status">
			<li>
				<a target="_blank" class="movielist_img" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" target="_blank">
					<img src="<s:property  value="#MoviesVo.mainPic"/>" />
				</a>
				<div class="movielist_row_1">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_play"></a>
				</div>
				<div class="movielist_row_2">
					<s:property  value="#MoviesVo.roleName"/><br/>
				</div>
				<div>
					上传者:<s:property  value="#MoviesVo.uploadName"/>
				</div>
			</li>
			</s:iterator>
		</ul>
	</div>
	<div class="main">
		<div class="box_tt">
			<a class="box_tt_left" href="earchByKey.action?bid=2&key=">今日电视剧</a>
			<div class="box_tt_middle">
				<a href="player.action?ID=1097&movieNum=1" target="_blank">鹿鼎记</a>
				<span class="">(黄晓明)</span>&nbsp;&nbsp;|
				<a href="player.action?ID=177&movieNum=1" target="_blank">养父</a>
				<span>(张国立 )</span>&nbsp;&nbsp;|
				<a href="player.action?ID=537&movieNum=1" target="_blank">怪侠欧阳德</a>
				<span>(小沈阳 林江国)</span>
			</div>
			<a class="box_tt_right" href="searchByKey.action?bid=2&key=">更多</a>
		</div>
		<ul class="movielist">
			<s:iterator value="#request.moviestodaytv" id="MoviesVo" status="status">
			<li>
				<a class="movielist_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" target="_blank">
					<img src="<s:property  value="#MoviesVo.mainPic"/>" />
				</a>
				<div class="movielist_row_1">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_play"></a>
				</div>
				<div class="movielist_row_2">
					<s:property  value="#MoviesVo.roleName"/>
				</div>
				<div>
					上传者:<s:property  value="#MoviesVo.uploadName"/>
				</div>
			</li>
			</s:iterator>
		</ul>
	</div>
	<div class="main">
		<div class="box_tt">
			<a class="box_tt_left" href="searchByKey.action?bid=4&key=">今日综艺</a>
			<div class="box_tt_middle">
				<a href="player.action?ID=935&movieNum=1" target="_blank">女人好犀利</a>
				<span class="">(第三十二期)</span>&nbsp;&nbsp;|
				<a href="player.action?ID=219&movieNum=1" target="_blank">天天向上</a>
				<span>(欧弟汪涵 )</span>&nbsp;&nbsp;|
				<a href="player.action?ID=1560&movieNum=1" target="_blank">中国达人秀</a>
				<span></span>
			</div>
			<a class="box_tt_right" href="searchByKey.action?bid=4&key=">更多</a>
		</div>
		<ul class="movielist">
			<s:iterator value="#request.moviestodayzy" id="MoviesVo" status="status">
			<li>
				<a class="movielist_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" target="_blank">
					<img src="<s:property  value="#MoviesVo.mainPic"/>" />
				</a>
				<div class="movielist_row_1">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_play"></a>
				</div>
				<div class="movielist_row_2">
					<s:property  value="#MoviesVo.roleName"/>
				</div>
				<div>
					上传者:<s:property  value="#MoviesVo.uploadName"/>
				</div>
			</li>
			</s:iterator>
		</ul>
	</div>
	<div class="main">
		<div class="box_tt">
			<a class="box_tt_left" href="searchByKey.action?bid=3&key=">今日动漫</a>
			<div class="box_tt_middle">
				<a href="player.action?ID=319&movieNum=1" target="_blank">超级大坏蛋</a>
				<span class="">(威尔·法瑞尔)</span>&nbsp;&nbsp;|
				<a href="player.action?ID=1086&movieNum=1" target="_blank">风之谷</a>
				<span>(岛本须美 )</span>&nbsp;&nbsp;|
				<a href="player.action?ID=1103&movieNum=1" target="_blank">龙猫</a>
				<span>(日高法)</span>
			</div>
			<a class="box_tt_right" href="searchByKey.action?bid=3&key=">更多</a>
		</div>
		<ul class="movielist">
			<s:iterator value="#request.moviestodaydm" id="MoviesVo" status="status">
			<li>
				<a class="movielist_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" target="_blank">
					<img src="<s:property  value="#MoviesVo.mainPic"/>" />
				</a>
				<div class="movielist_row_1">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_name"><s:property  value="#MoviesVo.MovieName"/></a>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_play"></a>
				</div>
				<div class="movielist_row_2">
					<s:property  value="#MoviesVo.roleName"/>
				</div>
				<div>
					上传者:<s:property  value="#MoviesVo.uploadName"/>
				</div>
			</li>
			</s:iterator>
		</ul>
	</div>
</div>


<!-- =============================================电影start================================= -->
<div class="wrapper_2">
	<div class="wrapper_2_main">
		<div class="box_tt">
			<h2 class="title_5">
				<a style="display: block;height: 18px;text-indent: -9999px;" title="电影" href="javascript:void(0);">电影</a>
			</h2>
			<div class="second_tab">
				<ul class="second_tab_list">
					<li class="on" id="Tab_mfen_0" onmouseover="switch_mfen_Tab(0)" >动作</li>
					<li id="Tab_mfen_1" onmouseover="switch_mfen_Tab(1)" >恐怖</li>
					<li id="Tab_mfen_2" onmouseover="switch_mfen_Tab(2)" >科幻</li>
					<li id="Tab_mfen_3" onmouseover="switch_mfen_Tab(3)" >爱情</li>
					<li id="Tab_mfen_4" onmouseover="switch_mfen_Tab(4)" >喜剧</li>
					<li id="Tab_mfen_5" onmouseover="switch_mfen_Tab(5)" >战争</li>
				</ul>
				<a class="more" title="更多" href="searchByKey.action?key=&bid=1">更多</a>
			</div>
		</div>
		<div class="main_list">
			<ul class="main_list_ul" id="main_list_ul_0">
				<s:iterator value="#request.dzmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="黑色大丽花" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_1" style="display: none;">
				<s:iterator value="#request.kbmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title=""  href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_2" style="display: none;">
				<s:iterator value="#request.khmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_3" style="display: none;">
				<s:iterator value="#request.aqmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_4" style="display: none;">
				<s:iterator value="#request.xjmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_5" style="display: none;">
				<s:iterator value="#request.zzmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
		</div>
		<div class="main_side">
			<div class="hotbox">
				<h4>
					<a class="hotpic" target="_blank" href="player.action?ID=<s:property value="moviesvo1.ID"/>&movieNum=1"">
						<img class="pic" alt="" src="<s:property value="moviesvo1.mainPic"/>"><s:property value="moviesvo1.MovieName"/>
					</a>
				</h4>
				<ul class="txtlist4">
					<li>
						导演:<a href="searchByKey.action?key=<s:property value="moviesvo1.directors"/>"><s:property value="moviesvo1.directors"/></a>
					</li>
					<li>
						主演:
						<a href="searchByKey.action?key=<s:property value="moviesvo1.roleName"/>"><s:property value="moviesvo1.roleName"/></a>
						
					</li>
					<li>
						类型:
						<a href="searchByCateID.action?cateid=9"><s:property value="moviesvo1.cateSname"/></a>
					</li>
				</ul>
				<p>
					<s:property value="moviesvo1.directName"/>
					<a title="详细" target="_blank" href="player.action?ID=<s:property value="moviesvo1.ID"/>&movieNum=1">详细</a>
				</p>
			</div>
			<div style="margin-top:15px;">
				<img width="199" height="190" src="images/baoban_.png">
			</div>
		</div>
	</div>
	<div class="wrapper_2_side">
		<div class="wrapper_2_side_tt">
			<h3>电影分类</h3>
		</div>
		<div class="wrapper_2_side_con">
			<dl class="taglist">
				<dt>类型</dt>
				<dd>
					<a title="动作" href="searchByCateID.action?cateid=5">动作</a>
				</dd>
				<dd>
					<a title="喜剧" href="searchByCateID.action?cateid=7">喜剧</a>
				</dd>
				<dd>
					<a title="爱情" href="searchByCateID.action?cateid=6">爱情</a>
				</dd>
				<dd>
					<a title="科幻" href="searchByCateID.action?cateid=9">科幻</a>
				</dd>
				<dd>
					<a title="文艺" href="searchByCateID.action?cateid=12">文艺</a>
				</dd>
				<dd>
					<a title="魔幻" href="searchByCateID.action?cateid=24">魔幻</a>
				</dd>
				<dd>
					<a title="恐怖" href="searchByCateID.action?cateid=8">恐怖</a>
				</dd>
				<dd>
					<a title="战争" href="searchByCateID.action?cateid=11">战争</a>
				</dd>
				<dd>
					<a title="其他" href="searchByCateID.action?cateid=25">其他</a>
				</dd>
			</dl>
			<dl class="taglist">
				<dt>地区</dt>
				<dd>
					<a title="港台" href="searchByAreaID.action?aresid=1&bid=1">港台</a>
				</dd>
				<dd>
					<a title="欧美" href="searchByAreaID.action?aresid=3&bid=1">欧美</a>
				</dd>
				<dd>
					<a title="日韩" href="searchByAreaID.action?aresid=4&bid=1">日韩</a>
				</dd>
				<dd>
					<a title="大陆" href="searchByAreaID.action?aresid=2&bid=1">大陆</a>
				</dd>
			</dl>
			<dl class="taglist">
				<dt>年份</dt>
				<dd>
					<a title="2012" href="searchByKey.action?key=2012&bid=1">2012</a>
				</dd>
				<dd>
					<a title="2011" href="searchByKey.action?key=2011&bid=1">2011</a>
				</dd>
				<dd>
					<a title="2010" href="searchByKey.action?key=2010&bid=1">2010</a>
				</dd>
				<dd>
					<a title="2009" href="searchByKey.action?key=2009&bid=1">2009</a>
				</dd>
				<dd>
					<a title="2008" href="searchByKey.action?key=2008&bid=1">2008</a>
				</dd>
			</dl>
			<dl class="taglist">
				<dt>明星</dt>
				<dd>
					<a title="周星驰" href="searchByKey.action?key=周星驰">周星驰</a>
				</dd>
				<dd>
					<a title="甄子丹" href="searchByKey.action?key=甄子丹">甄子丹</a>
				</dd>
				<dd>
					<a title="周润发" href="searchByKey.action?key=周润发">周润发</a>
				</dd>
				<dd>
					<a title="姜文" href="searchByKey.action?key=姜文">姜文</a>
				</dd>
				<dd>
					<a title="李连杰" href="searchByKey.action?key=李连杰">李连杰</a>
				</dd>
				<dd>
					<a title="梁朝伟" href="searchByKey.action?key=梁朝伟">梁朝伟</a>
				</dd>
				<dd>
					<a title="刘德华" href="searchByKey.action?key=刘德华">刘德华</a>
				</dd>
				<dd>
					<a title="葛优" href="searchByKey.action?key=葛优">葛优</a>
				</dd>
				<dd>
					<a title="成龙" href="searchByKey.action?key=成龙">成龙</a>
				</dd>
			</dl>
		</div>
		<div class="wrapper_2_side_tt_2">
			<h3>电影排行榜</h3>
		</div>
		<div class="wrapper_2_side_con_2">
			<ul class="wrapper_2_side_con_2_ul">
			<s:iterator value="#request.topmovies1" id="MoviesVo" status="status">
				<li>
					<em class="top"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
						<span><s:property value="#MoviesVo.roleName"/></span>
					</p>
					<span class="score"><s:property value="#MoviesVo.sore"/></span>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="banner">
			<img width="220" height="150" src="images/1.jpg" alt="" />
		</div>
	</div>
</div>

<!-- =============================================电视剧start================================= -->
<div class="wrapper_2">
	<div class="wrapper_2_main">
		<div class="box_tt">
			<h2 class="title_6">
				<a style="display: block;height: 18px;text-indent: -9999px;" title="电视剧" href="javascript:void(0);">电视剧</a>
			</h2>
			<div class="second_tab">
				<ul class="second_tab_list">
					<li id="Tab_tv_0" class="on">港台</li>
					<li id="Tab_tv_1">日韩</li>
					<li id="Tab_tv_2">欧美</li>
					<li id="Tab_tv_3">大陆</li>
				</ul>
				<a class="more" title="更多" href="searchByKey.action?key=&bid=2">更多</a>
			</div>
		</div>
		<div class="main_list">
			<ul class="main_list_ul" id="main_list_ul_tv_0">
				<s:iterator value="#request.gtmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>			
			</ul>
			<ul class="main_list_ul" id="main_list_ul_tv_1" style="display: none;">
				<s:iterator value="#request.rhmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title=""  href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>	
			</ul>
			<ul class="main_list_ul" id="main_list_ul_tv_2" style="display: none;">
				<s:iterator value="#request.ommovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_tv_3" style="display: none;">
				<s:iterator value="#request.dlmovies" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_tv_4" style="display: none;">
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/f6b250804bb1592cfa1378afcb492226.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				
				<li>
					<a class="pic" blockid="4486" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				
			</ul>
			<ul class="main_list_ul" id="main_list_ul_tv_5" style="display: none;">
				
				<li>
					<a class="pic" blockid="4486" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" blockid="4486" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
			</ul>
		</div>
		<div class="main_side">
				<div class="hotbox">
				<h4>
					<a class="hotpic" target="_blank" href="player.action?ID=<s:property value="moviesvo2.ID"/>&movieNum=1">
						<img class="pic" alt="" src="<s:property value="moviesvo2.mainPic"/>"><s:property value="moviesvo2.MovieName"/>
					</a>
				</h4>
				<ul class="txtlist4">
					<li>
						导演:<a href="searchByKey.action?key=<s:property value="moviesvo2.directors"/>&bid=2"><s:property value="moviesvo2.directors"/></a>
					</li>
					<li>
						主演:
						<a href="searchByKey.action?key=<s:property value="moviesvo2.roleName"/>&bid=2"><s:property value="moviesvo2.roleName"/></a>
						
					</li>
					<li>
						类型:
						<a href="searchByAreaID.action?aresid=2&bid=2"><s:property value="moviesvo2.cateSname"/></a>
					</li>
				</ul>
				<p>
					<s:property value="moviesvo2.directName"/>
					<a title="详细" target="_blank" href="player.action?ID=<s:property value="moviesvo2.ID"/>&movieNum=1">详细</a>
				</p>
			</div>
			<div style="margin-top:15px;">
				<img width="199" height="190" src="images/baoban_.png">
			</div>
		</div>
	</div>
	<div class="wrapper_2_side">
		<div class="wrapper_2_side_tt">
			<h3>电视剧分类</h3>
		</div>
		<div class="wrapper_2_side_con">
			<dl class="taglist">
				<dt>地区</dt>
				<dd>
					<a title="港台" href="searchByAreaID.action?aresid=1&bid=2">港台</a>
				</dd>
				<dd>
					<a title="欧美" href="searchByAreaID.action?aresid=3&bid=2">欧美</a>
				</dd>
				<dd>
					<a title="日韩" href="searchByAreaID.action?aresid=4&bid=2">日韩</a>
				</dd>
				<dd>
					<a title="大陆" href="searchByAreaID.action?aresid=2&bid=2">大陆</a>
				</dd>
			</dl>
			<dl class="taglist">
				<dt>年份</dt>
				<dd>
					<a title="2012" href="searchByKey.action?key=2012&bid=2">2012</a>
				</dd>
				<dd>
					<a title="2011" href="searchByKey.action?key=2011&bid=2">2011</a>
				</dd>
				<dd>
					<a title="2010" href="searchByKey.action?key=2010&bid=2">2010</a>
				</dd>
				<dd>
					<a title="2009" href="searchByKey.action?key=2009&bid=2">2009</a>
				</dd>
				<dd>
					<a title="2008" href="searchByKey.action?key=2008&bid=2">2008</a>
				</dd>
			</dl>
		</div>
		<div class="wrapper_2_side_tt_2">
			<h3>电视剧排行榜</h3>
		</div>
		<div class="wrapper_2_side_con_2">
			<ul class="wrapper_2_side_con_2_ul">
				<s:iterator value="#request.topmovies2" id="MoviesVo" status="status">
				<li>
					<em class="top"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
						<span><s:property value="#MoviesVo.roleName"/></span>
					</p>
					<span class="score"><s:property value="#MoviesVo.sore"/></span>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="banner">
			<img width="220px" height="140px" src="images/2.jpg" alt="" />
		</div>
	</div>
</div>

<!-- =============================================综艺start================================= -->
<div class="wrapper_2">
	<div class="wrapper_2_main">
		<div class="box_tt">
			<h2 class="title_7">
				<a style="display: block;height: 18px;text-indent: -9999px;" title="综艺" href="javascript:void(0);">综艺</a>
			</h2>
			<div class="second_tab">
				<ul class="second_tab_list">
					<li id="Tab_zy_0" class="on">港台</li>
					<li id="Tab_zy_3">大陆</li>
				</ul>
				<a class="more" title="更多" href="searchByKey.action?key=&bid=4">更多</a>
			</div>
		</div>
		<div class="main_list">
			<ul class="main_list_ul" id="main_list_ul_zy_0">
				<s:iterator value="#request.gtmovies3" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			
			<ul class="main_list_ul" id="main_list_ul_zy_2" style="display: none;">
				<s:iterator value="#request.dlmovies3" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_zy_3" style="display: none;">
				<s:iterator value="#request.dlmovies3" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_zy_4" style="display: none;">
				
			</ul>
			<ul class="main_list_ul" id="main_list_ul_zy_5" style="display: none;">
				
			</ul>
		</div>
		<div class="main_side">
			<div class="hotbox">
				<h4>
					<a class="hotpic" target="_blank" href="player.action?ID=<s:property value="moviesvo3.ID"/>&movieNum=1">
						<img class="pic" alt="" src="<s:property value="moviesvo3.mainPic"/>"><s:property value="moviesvo3.MovieName"/>
					</a>
				</h4>
				<ul class="txtlist4">
					<li>
						嘉宾:
						<a href="searchByKey.action?key=<s:property value="moviesvo3.roleName"/>&bid=4"><s:property value="moviesvo3.roleName"/></a>
						
					</li>
					<li>
						类型:
						<a href="searchByAreaID.action?aresid=2&bid=4"><s:property value="moviesvo3.cateSname"/></a>
					</li>
				</ul>
				<p>
					<s:property value="moviesvo3.directName"/>
					<a title="详细" target="_blank" href="player.action?ID=<s:property value="moviesvo3.ID"/>&movieNum=1">详细</a>
				</p>
			</div>
			<div style="margin-top:15px;">
				<img width="199" height="190" src="images/baoban_.png">
			</div>
		</div>
	</div>
	<div class="wrapper_2_side">
		<div class="wrapper_2_side_tt">
			<h3>综艺分类</h3>
		</div>
		<div class="wrapper_2_side_con">
			<dl class="taglist">
				<dt>地区</dt>
				<dd>
					<strong><a title="港台" href="searchByAreaID.action?aresid=1&bid=4">港台</a></strong>
				</dd>
				
				<dd>
					<a title="大陆" href="searchByAreaID.action?aresid=2&bid=4">大陆</a>
				</dd>
			</dl>
			<dl class="taglist">
				<dt>年份</dt>
				<dd>
					<a title="2012" href="searchByKey.action?key=2012&bid=4">2012</a>
				</dd>
				<dd>
					<a title="2011" href="searchByKey.action?key=2011&bid=4">2011</a>
				</dd>
				<dd>
					<a title="2010" href="searchByKey.action?key=2010&bid=4">2010</a>
				</dd>
				<dd>
					<a title="2009" href="searchByKey.action?key=2009&bid=4">2009</a>
				</dd>
				<dd>
					<a title="2008" href="searchByKey.action?key=2008&bid=4">2008</a>
				</dd>
			</dl>
		</div>
		<div class="wrapper_2_side_tt_2">
			<h3>综艺排行榜</h3>
		</div>
		<div class="wrapper_2_side_con_2">
			<ul class="wrapper_2_side_con_2_ul">
				<s:iterator value="#request.topmovies3" id="MoviesVo" status="status">
				<li>
					<em class="top"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
						<span><s:property value="#MoviesVo.roleName"/></span>
					</p>
					<span class="score"><s:property value="#MoviesVo.sore"/></span>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="banner">
			<img width="220px" height="150px" src="images/4.gif" alt="" />
		</div>
	</div>
</div>

<!-- =============================================动漫start================================= -->
<div class="wrapper_2">
	<div class="wrapper_2_main">
		<div class="box_tt">
			<h2 class="title_8">
				<a style="display: block;height: 18px;text-indent: -9999px;" title="动漫" href="javascript:void(0);">动漫</a>
			</h2>
			<div class="second_tab">
				<ul class="second_tab_list">
					<li id="Tab_anime_0" class="on">日韩</li>
					<li id="Tab_anime_1">欧美</li>
					<li id="Tab_anime_2">大陆</li>
				</ul>
				<a class="more" title="更多" href="searchByKey.action?key=&bid=3">更多</a>
			</div>
		</div>
		<div class="main_list">
			<ul class="main_list_ul" id="main_list_ul_anime_0">
				<s:iterator value="#request.rhmovies4" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_anime_1" style="display: none;">
				
				<s:iterator value="#request.ommovies4" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_anime_2" style="display: none;">
				<s:iterator value="#request.dlmovies4" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" title="" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
						<img src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
					</p>
					<p><s:property  value="#MoviesVo.roleName"/></p>
				</li>
				</s:iterator>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_anime_3" style="display: none;">
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/28/2985bdacc063a969fe90792b76786c5a.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/28/2985bdacc063a969fe90792b76786c5a.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/28/2985bdacc063a969fe90792b76786c5a.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" blockid="4486" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
			</ul>
			<ul class="main_list_ul" id="main_list_ul_anime_4" style="display: none;">
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/f6b250804bb1592cfa1378afcb492226.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/f6b250804bb1592cfa1378afcb492226.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/f6b250804bb1592cfa1378afcb492226.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" blockid="4486" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				<li>
					<a class="pic" blockid="4486" target="_blank" title="" href="http://kankan.xunlei.com/vod/mp4/35/35705.shtml">
						<img src="http://img2.kankan.xunlei.com/gallery2/block/2012/05/02/4bcc5bd53238715c494c5025460f4448.jpg"/>
					</a>
					<p class="main_list_ul_tt">
						<a title="" href=""></a>
					</p>
					<p>好莱坞女星惨死</p>
				</li>
				
			</ul>
			<ul class="main_list_ul" id="main_list_ul_anime_5" style="display: none;">
				
			</ul>
		</div>
		<div class="main_side">
			<div class="hotbox">
				<h4>
					<a class="hotpic" target="_blank" href="player.action?ID=<s:property value="moviesvo4.ID"/>&movieNum=1">
						<img class="pic" alt="" src="<s:property value="moviesvo4.mainPic"/>"><s:property value="moviesvo4.MovieName"/>
					</a>
				</h4>
				<ul class="txtlist4">
					<li>
						导演:<a href="searchByKey.action?key=<s:property value="moviesvo4.directors"/>&bid=3"><s:property value="moviesvo4.directors"/></a>
					</li>
					<li>
						主演:
						<a href="searchByKey.action?key=<s:property value="moviesvo4.roleName"/>&bid=3"><s:property value="moviesvo4.roleName"/></a>
						
					</li>
					<li>
						类型:
						<a href="searchByAreaID.action?bid=3"><s:property value="moviesvo4.cateSname"/></a>
					</li>
				</ul>
				<p>
					<s:property value="moviesvo4.directName"/>
					<a title="详细" target="_blank" href="player.action?ID=<s:property value="moviesvo4.ID"/>&movieNum=1">详细</a>
				</p>
			</div>
			<div style="margin-top:15px;">
				<img width="199" height="190" src="images/baoban_.png">
			</div>
		</div>
	</div>
	<div class="wrapper_2_side">
		<div class="wrapper_2_side_tt">
			<h3>动漫分类</h3>
		</div>
		<div class="wrapper_2_side_con">
			<dl class="taglist">
				<dt>地区</dt>
				<dd>
					<a title="港台" href="searchByAreaID.action?aresid=1&bid=3">港台</a>
				</dd>
				<dd>
					<a title="日韩" href="searchByAreaID.action?aresid=4&bid=3">日韩</a>
				</dd>
				<dd><div align="right"><a title="大陆" href="searchByAreaID.action?aresid=2&bid=3">大陆</a></div>
					
				</dd>
			</dl>
			<dl class="taglist">
				<dt>年份</dt>
				<dd>
					<a title="2012" href="searchByKey.action?key=2012&bid=3">2012</a>
				</dd>
				<dd>
					<a title="2011" href="searchByKey.action?key=2011&bid=3">2011</a>
				</dd>
				<dd>
					<a title="2010" href="searchByKey.action?key=2010&bid=3">2010</a>
				</dd>
				<dd>
					<a title="2009" href="searchByKey.action?key=2009&bid=3">2009</a>
				</dd>
				<dd>
					<a title="2008" href="searchByKey.action?key=2008&bid=3">2008</a>
				</dd>
			</dl>
		</div>
		<div class="wrapper_2_side_tt_2">
			<h3>动漫排行榜</h3>
		</div>
		<div class="wrapper_2_side_con_2">
			<ul class="wrapper_2_side_con_2_ul">
				<s:iterator value="#request.topmovies4" id="MoviesVo" status="status">
				<li>
					<em class="top"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
						<span><s:property value="#MoviesVo.roleName"/></span>
					</p>
					<span class="score"><s:property value="#MoviesVo.sore"/></span>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="banner">
			<img width="228px" height="200px" src="images/3.jpg" alt="" />
		</div>
	</div>
</div>
<!--=============================================== 音乐start================================================== -->
<div class="wrapper_3">
	<div class="box_tt" style="border-bottom: 0px solid #E6E6E6;">
		<h2 class="title_9">
			<a style="display: block;height: 18px;text-indent: -9999px;" title="电视剧" href="javascript:void(0);">音乐</a>
		</h2>
		<a class="more" title="更多" href="musicIndex.action">更多</a>
	</div>
	<ul class="wrapper_music">
		<s:iterator value="#request.newAlbumVos" id="album">
			<li>
				<a title="<s:property value="#album.albumName"/>-<s:property value="#album.singer"/>" class="pic" href="musicSearch.action?albumId=<s:property value="#album.ID"/>">
					<img title="<s:property value="#album.albumName"/>-<s:property value="#album.singer"/>" src="<s:property value="#album.cover"/>"/>
				</a>
				<a title="<s:property value="#album.albumName"/>-<s:property value="#album.singer"/>" class="rolename" href="musicSearch.action?albumId=<s:property value="#album.ID"/>">
					<s:property value="#album.albumName"/>-<s:property value="#album.singer"/>
				</a>
				<p>唱片公司:<s:property value="#album.company"/></p>
			</li>
		</s:iterator>
	</ul>
</div>
<!--=============================================== 导航================================================== -->
<!-- 
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>网址导航</h2>
			<a href="getindexMsg.action">更多&gt;</a>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[小说]</dt>
				<dd>
					<a title="起点中文网" href="http://www.qidian.com" target="_blank">起点中文网</a>
				</dd>
				<dd>
					<a title="红袖言情" href="http://www.hongxiu.com/" target="_blank">红袖言情</a>
				</dd>
				<dd>
					<a title="TXT小说网" href="http://www.txtbbs.com/" target="_blank">TXT小说网</a>
				</dd>
				<dd>
					<a title="TXT小说网" href="http://www.txtbbs.com/" target="_blank">TXT小说网</a>
				</dd>
				<dd>
					<a title="潇湘言情小说" href="http://www.xxsy.net/" target="_blank">潇湘言情小说</a>
				</dd>
			</dl>
			<dl class="navlist_right">
				<dt>[游戏]</dt>
				<dd>
					<a title="游乐" href="http://www.qq937.com" target="_blank">游乐</a>
				</dd>
				<dd>
					<a title="幻想三国" href="http://88.198game.com" target="_blank">幻想三国</a>
				</dd>
				<dd>
					<a title="庄园物语" href="http://sso.365m.cn" target="_blank">庄园物语</a>
				</dd>
				<dd>
					<a title="4399小游戏" href="http://www.4399.com" target="_blank">4399小游戏</a>
				</dd>
				<dd>
					<a title="7k7k小游戏" href="http://www.7k7k.com" target="_blank">7k7k小游戏</a>
				</dd>
				<dd>
					<a title="中关村游戏网" href="http://game.zol.com.cn" target="_blank">中关村游戏网</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[财经]</dt>
				<dd>
					<a title="东方财富网" href="http://www.eastmoney.com" target="_blank">东方财富网</a>
				</dd>
				<dd>
					<a title="腾讯财经" href="http://www.tiexue.net" target="_blank">腾讯财经</a>
				</dd>
				<dd>
					<a title="和讯网" href="http://mil.qianlong.com" target="_blank">和讯网</a>
				</dd>
				<dd>
					<a title="中国经济网" href="http://www.mod.gov.cn" target="_blank">中国经济网</a>
				</dd>
				<dd>
					<a title="财经频道-21CN" href="http://www.mod.gov.cn" target="_blank">财经频道-21CN</a>
				</dd>
				<dd>
					<a title="金融界" href="http://news.ifeng.com" target="_blank">金融界</a>
				</dd>
			</dl>
			<dl class="navlist_right">
				<dt>[购物]</dt>
				<dd>
					<a title="麦考林" href="http://www.m18.com" target="_blank">麦考林</a>
				</dd>
				<dd>
					<a title="拍拍网" href="http://www.paipai.com" target="_blank">拍拍网</a>
				</dd>
				<dd>
					<a title="淘宝网" href="http://www.taobao.com/" target="_blank">淘宝网</a>
				</dd>
				<dd>
					<a title="梦芭莎" href="http://shopping.moonbasa.com/" target="_blank">梦芭莎</a>
				</dd>
				<dd>
					<a title="雅库英伦男装" href="http://www.yksuit.com/" target="_blank">雅库英伦男装</a>
				</dd>
				<dd>
					<a title="兰缪内衣" href="http://www.lamiu.com/" target="_blank">兰缪内衣</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[女性]</dt>
				<dd>
					<a title="YOKA时尚网" href="http://www.yoka.com/" target="_blank">YOKA时尚网</a>
				</dd>
				<dd>
					<a title="瑞丽女性网" href="http://www.rayli.com.cn/" target="_blank">瑞丽女性网</a>
				</dd>
				<dd>
					<a title="VOGUE时尚网" href="http://www.vogue.com.cn/" target="_blank">VOGUE时尚网</a>
				</dd>
				<dd>
					<a title="爱丽女性网" href="http://www.27.cn/" target="_blank">爱丽女性网</a>
				</dd>
				<dd>
					<a title="腾讯女性" href="http://lady.qq.com/" target="_blank">腾讯女性</a>
				</dd>
			</dl>
			<dl class="navlist_right">
				<dt>[汽车]</dt>
				<dd>
					<a title="汽车之家" href="http://www.autohome.com.cn/" target="_blank">汽车之家</a>
				</dd>
				<dd>
					<a title="腾讯汽车" href="http://auto.qq.com/" target="_blank">腾讯汽车</a>
				</dd>
				<dd>
					<a title="搜狐汽车" href="http://auto.sohu.com/" target="_blank">搜狐汽车</a>
				</dd>
				<dd>
					<a title="二手车之家" href="http://www.che168.com/" target="_blank">二手车之家</a>
				</dd>
				<dd>
					<a title="中国汽车网" href="http://www.chinacars.com/" target="_blank">中国汽车网</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[生活]</dt>
				<dd>
					<a title="太平洋家居网" href="http://mobile.pconline.com.cn/" target="_blank">太平洋家居网</a>
				</dd>
				<dd>
					<a title="九游网" href="http://mobile.it168.com/" target="_blank">九游网</a>
				</dd>
				<dd>
					<a title="游在云南旅游信息网" href="http://mobile.pcpop.com/" target="_blank">游在云南旅游信息网</a>
				</dd>
				<dd>
					<a title="搜狐旅游" href="http://www.155.cn/" target="_blank">搜狐旅游</a>
				</dd>
				<dd>
					<a title="21CN旅游" href="http://digi.it.sohu.com/" target="_blank">21CN旅游</a>
				</dd>
			</dl>
			<dl class="navlist_right">
				<dt>[体育]</dt>
				<dd>
					<a title="搜狐体育" href="http://sports.sohu.com/" target="_blank">搜狐体育</a>
				</dd>
				<dd>
					<a title="乔丹体育" href="http://sports.tom.com/" target="_blank">乔丹体育</a>
				</dd>
				<dd>
					<a title="腾讯体育" href="http://sports.qq.com/" target="_blank">腾讯体育</a>
				</dd>
				<dd>
					<a title="人民网体育" href="http://sports.people.com.cn/" target="_blank">人民网体育</a>
				</dd>
				<dd>
					<a title="中华网体育" href="http://sports.china.com/" target="_blank">中华网体育</a>
				</dd>
				<dd>
					<a title="新华体育" href="http://www.xinhuanet.com/" target="_blank">新华体育</a>
				</dd>
			</dl>
		</div>
	</div>
</div>
 -->
<div class="wrapper float_left" id="float_div">
	<div class="hot">
		<div class="hot_tt">
			<h2>网址推荐</h2>
			<a href="javascript:hidefloat(1)" id="float_div1_hide">关闭</a>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[小说]</dt>
				<dd>
					<a title="起点中文网" href="http://www.qidian.com" target="_blank">起点中文网</a>
				</dd>
				<dd>
					<a title="红袖言情" href="http://www.hongxiu.com/" target="_blank">红袖言情</a>
				</dd>
				<dd>
					<a title="TXT小说网" href="http://www.txtbbs.com/" target="_blank">TXT小说网</a>
				</dd>
				<dd>
					<a title="妖屋小说" href="http://www.15.net/" target="_blank">妖屋小说</a>
				</dd>
				<dd>
					<a title="潇湘言情小说" href="http://www.xxsy.net/" target="_blank">潇湘言情小说</a>
				</dd>
				<dd>
					<a title="看书小说网" href="http://www.kanshu.com/" target="_blank">看书小说网</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[财经]</dt>
				<dd>
					<a title="东方财富网" href="http://www.eastmoney.com" target="_blank">东方财富网</a>
				</dd>
				<dd>
					<a title="腾讯财经" href="http://www.tiexue.net" target="_blank">腾讯财经</a>
				</dd>
				<dd>
					<a title="和讯网" href="http://mil.qianlong.com" target="_blank">和讯网</a>
				</dd>
				<dd>
					<a title="中国经济网" href="http://www.mod.gov.cn" target="_blank">中国经济网</a>
				</dd>
				<dd>
					<a title="财经频道-21CN" href="http://www.mod.gov.cn" target="_blank">财经频道-21CN</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[女性]</dt>
				<dd>
					<a title="YOKA时尚网" href="http://www.yoka.com/" target="_blank">YOKA时尚网</a>
				</dd>
				<dd>
					<a title="瑞丽女性网" href="http://www.rayli.com.cn/" target="_blank">瑞丽女性网</a>
				</dd>
				<dd>
					<a title="腾讯女性" href="http://lady.qq.com/" target="_blank">腾讯女性</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[生活]</dt>
				<dd>
					<a title="太平洋家居网" href="http://mobile.pconline.com.cn/" target="_blank">太平洋家居网</a>
				</dd>
				<dd>
					<a title="搜狐旅游" href="http://www.155.cn/" target="_blank">搜狐旅游</a>
				</dd>
				<dd>
					<a title="21CN旅游" href="http://digi.it.sohu.com/" target="_blank">21CN旅游</a>
				</dd>
			</dl>
		</div>
	</div>
</div>
<div class="wrapper float_right" id="float_div2">
	<div class="hot">
		<div class="hot_tt">
			<h2>网址推荐</h2>
			<a id="float_div2_hide" href="javascript:hidefloat(2)">关闭</a>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[游戏]</dt>
				<dd>
					<a title="游乐" href="http://www.qq937.com" target="_blank">游乐</a>
				</dd>
				<dd>
					<a title="幻想三国" href="http://88.198game.com" target="_blank">幻想三国</a>
				</dd>
				<dd>
					<a title="庄园物语" href="http://sso.365m.cn" target="_blank">庄园物语</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[购物]</dt>
				<dd>
					<a title="麦考林" href="http://www.m18.com" target="_blank">麦考林</a>
				</dd>
				<dd>
					<a title="拍拍网" href="http://www.paipai.com" target="_blank">拍拍网</a>
				</dd>
				<dd>
					<a title="淘宝网" href="http://www.taobao.com/" target="_blank">淘宝网</a>
				</dd>
				<dd>
					<a title="梦芭莎" href="http://shopping.moonbasa.com/" target="_blank">梦芭莎</a>
				</dd>
				<dd>
					<a title="雅库英伦男装" href="http://www.yksuit.com/" target="_blank">雅库英伦男装</a>
				</dd>
				<dd>
					<a title="兰缪内衣" href="http://www.lamiu.com/" target="_blank">兰缪内衣</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[汽车]</dt>
				<dd>
					<a title="汽车之家" href="http://www.autohome.com.cn/" target="_blank">汽车之家</a>
				</dd>
				<dd>
					<a title="腾讯汽车" href="http://auto.qq.com/" target="_blank">腾讯汽车</a>
				</dd>
				<dd>
					<a title="搜狐汽车" href="http://auto.sohu.com/" target="_blank">搜狐汽车</a>
				</dd>
				<dd>
					<a title="二手车之家" href="http://www.che168.com/" target="_blank">二手车之家</a>
				</dd>
				<dd>
					<a title="中国汽车网" href="http://www.chinacars.com/" target="_blank">中国汽车网</a>
				</dd>
			</dl>
		</div>
		<div class="navlist">
			<dl class="navlist_left">
				<dt>[体育]</dt>
				<dd>
					<a title="搜狐体育" href="http://sports.sohu.com/" target="_blank">搜狐体育</a>
				</dd>
				<dd>
					<a title="乔丹体育" href="http://sports.tom.com/" target="_blank">乔丹体育</a>
				</dd>
				<dd>
					<a title="腾讯体育" href="http://sports.qq.com/" target="_blank">腾讯体育</a>
				</dd>
			</dl>
		</div>
	</div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br/>
    蜀ICP备 12005138号-1
</div>
<script src="http://s94.cnzz.com/stat.php?id=4085993&web_id=4085993&online=1" language="JavaScript"></script>

</body>
</html>
