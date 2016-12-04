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
    
    <title>汉安无限-登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-登录">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>用户登录</title>
<script language="javascript" src="js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript">
	var reg1 = /^[^.]+$/;           
	var reg2 = /\s/;				
	var reg3 = /^[a-zA-Z]\w{4,15}$/;
	function checkForm()
	{
		if(checkUsername())
		{
			return true;
		}
	}
	function checkUsername()
	{
		if(document.getElementById("username").value==null||document.getElementById("username").value==""){
			alert("请输入用户名");
			return false; 
		}
		else if(document.getElementById("password").value==null||document.getElementById("password").value==""){
			alert("请输入密码");
			return false;
		}
		else{
		return true;
		}
	}
	$(function(){
		for(var i=0;i<16;i++){$("#top_nav_"+i).attr("class","");}
	});
</script>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">

/*导航*/
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}


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
	width:211px;
	height:71px;
	font-size:30px;
}
.main{width:970px;overflow: hidden;margin:10px auto 5px auto;}
#footer2 {width:970px;height:60px;overflow: hidden;text-align:center;position:absolute;bottom:0px;}
#footer2 a{
	color:#414141;
}
#footer2 a:hover{
	color:#09a8dd;
}

</style>
  </head>
  
  <body>
  
 <jsp:include page="head_2.jsp"></jsp:include>
<div class="main">
  <div id="mainContent">
    <div id="sidebar"></div>
    <div id="sidebar2"></div>
    <div id="content">
    <form method="post" action="loginForm.action" id="login" name="login">
    	<H1 style="font-size: 34px;font-weight: bold;margin-left: 50px;margin-top: 10px;">登录汉安无限</H1>
    	<div class="login">
    	
    	 <%--<s:fielderror key="fieldInfo"></s:fielderror>
    		--%><div class="login_prompt" style="">请填写完整的E-mail和密码！</div>
    		<div class="login_title">账号:</div>
    		<div class="login_row">
	    		<input name="username" type="text" id="username"/>
    		</div>
    		<div class="login_title" style="margin-top: 15px;">密码:</div>
	    	<div class="login_row">
	    		<input name="passwd" type="password" id="password"/>
	    		<a href="#">忘记密码</a>
	    	</div>
	    	
	    	<div style="margin-top: 15px;">
	    		<%--<input class="loginButton" type="submit" id="btn_login"  width="211px" height="71" value="登    陆"/>--%>
	    		<img src="images/login.jpg" width="90" height="40" onclick="javascript:if(checkForm()){document.login.submit();}" />
	    	</div>
	   </form>
	   </div>
	</div>
	<div id="footer2">
		<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br> 蜀ICP备 12005138号-1
	</div>	
</div>
   
</body>
</html>

