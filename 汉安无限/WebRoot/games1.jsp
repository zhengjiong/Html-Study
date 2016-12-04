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
    <title>汉安无限-网友游戏俱乐部</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-网友游戏俱乐部">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<script language="javascript" src="js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript">
$(function(){
for(var i=0;i<16;i++){
	$("#top_nav_"+i).attr("class","");
}
$("#top_nav_6").addClass("on");
});
</script>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">

/*导航*/
body{font-size:12px;font-family:微软雅黑 !important}
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;position: absolute;bottom:0px;}
#footer a{
	color:#414141;
}
#footer a:hover{
	color:#09a8dd;
}

.menu_navcc{width:960px; margin:0 auto;}
.menu_nav{width:970px;height:53px;background:url(images/nav_bg.gif) repeat-x top;float:left;}
.menu_nav .nav_content{padding-left:4px;background:url(images/nav_l_bg.gif) no-repeat left top;float:left;}
.menu_nav .nav_content li{width:114px;height:53px;padding-left:10px;padding-right:10px;background:url(images/nav_li_right.gif) no-repeat right top;float:left;line-height:53px;text-align:center;font-size:14px;font-weight:bold;}
.menu_nav .nav_content li a{color:#000;width:114px;height:53px;display:block;}
.menu_nav .nav_content li.current{line-height:53px;}
.main{width:970px;overflow: hidden;margin: 10px auto 0 auto;}

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
.cateImg {
	border: 1px solid #6FF;
	height: 200px;
	width: 140px;
	float: left;
	margin-right: 10px;
	margin-top: 10px;
	text-align: center;
}

H1{font-size: 100%}
.login
{
	width:420px;
	margin: 0 auto;
	overflow: hidden;
	margin-top: 15px;
}
.login_prompt
{
	font-size: 12px;
	color: red;
	background-color: #ffffcc;
	height:30px;
	line-height: 30px;
}
.login_title
{
	font-size: 14px;
}
.login_row
{
	height:35px;
	line-height: 28px;
	margin-top: 3px;
}
.login_row .email
{
	width:250px;
	height:25px;
}
.login_row .password
{
	width:150px;
	height:25px;
}
.loginButton
{
	background: url("images/button.gif") ;
	width:100px;
	height:80px;
}
</style>
  </head>
  
  <body>
  
<jsp:include page="head.jsp"></jsp:include>
<div class="main">
  <div id="mainContent" style="margin-top:40px;">
    <div id="sidebar" style="border:0px solid;"><img src="images/qipailogin.jpg"/></div>
    <div id="sidebar2" style="border:0px solid;"><img src="images/qipai.jpg"/></div>
    <div id="content" style="">
    	<br/>
    	<div class="login" >
    		<p style="font-size: 25px;">西部棋牌</p>
    		<hr/>
    		<br/>
    		<p style="font-size: 20px;">游戏简介</p>
	    	
    		<p style="line-height:20px;">西部棋牌是以具有浓厚特色的成都麻将、泸州鬼麻将、乐山二七十、四川斗地主等西南地区棋牌游戏为主的互动游戏平台，玩家可以通过ＰＣ或手机客户端的方式参与游戏，随时随地和其它牌友分享游戏的乐趣。</p>
	    	<p style="font-size: 20px;">游戏特色</p>
	    	
	    	<p style="line-height:20px;">无论是用手机还是用PC均可方便的登录西部棋牌。游戏均严格遵循各地棋牌的主流规则，以具有浓厚地方特色的“米米”作为游戏筹码的名称乃至延伸为游戏的代表性符号，带给玩家最亲切最真实的游戏体验。游戏中的交友系统更能让玩家在休闲之余认识更多的朋友，丰富自己的业余生活。西部棋牌不仅是一个虚拟的游戏娱乐平台，更是一种实实在在的生活方式！</p>
	    	<br />
	    	<a href="software/njmj_pc.zip" style="font-size: 20px;">下载游戏</a>
	    	<div style="margin-top: 15px;">
	    	</div>
    	</div>
   
    </div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
</div>


</body>
</html>

