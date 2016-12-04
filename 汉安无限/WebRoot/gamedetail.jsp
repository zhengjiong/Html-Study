<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>汉安无限-游戏下载-详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-游戏下载-详情">
	<link rel="stylesheet" type="text/css" href="css/softwaredetail.css">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript">
	$(function(){for(var i=0;i<16;i++){$("#top_nav_"+i).attr("class","");}$("#top_nav_6").addClass("on");});
	</script>
  </head>
  
<body >
<jsp:include page="head_2.jsp"></jsp:include>
<div style="width:970px;height:90px;margin:0 auto;margin-top:15px;">
	<embed width="970" height="90" src="js/181222l8emrhj0jrhnzqbq.swf" type="application/x-shockwave-flash" wmode="transparent">
</div>
<div class="location">
	<a href="">游戏下载</a>
	<span>&gt;</span>
	<span class="location_softname" href=""><s:property value="#request.game.appName"/></span>
</div>
<div class="main">
	<div class="main_left">
		<div class="left_tt">
			<h1><s:property value="#request.game.appName"/></h1>
		</div>
		<div class="down_now">
			<a href="GameDownloadAction.action?id=<s:property value="#request.game.id"/>" class="down_btn">
				<em>立即下载</em>
			</a>
		</div>
		<div class="soft_info">
			<p>
				<span>更新时间：</span>
				<s:property value="#request.game.updateTime"/>
			</p>
			<p>
				<span>游戏属性：</span>
				免费
			</p>
			<p>
				<span>应用平台：</span>
				Win7/Vista/XP
			</p>
			<p>
				<span>相关链接：</span>
				<s:iterator value="#request.gameList" id="game">
				<a href="showGameDetal.action?id=<s:property value="#game.id"/>"><s:property value="#game.appName"/></a>
				
				</s:iterator>
			</p>
		</div>
		<div class="soft_intro">
			<span>游戏介绍:</span>
			<p><s:property value="#request.game.introduction"/></p>
		</div>
	</div>
	<div class="main_right">
		<div class="bb">
			<div class="bb_tt">
				<strong class="icon2">热门游戏</strong>
			</div>
			<ul class="soft_ul">
				<li>		
					<a title="五子棋" target="_blank" href="">五子棋</a>
				</li>
				<li>
					<a title="斗地主" target="_blank" href="">斗地主</a>
				</li>
				<li>
					<a title="冒险岛" target="_blank" href="">冒险岛</a>
				</li>
				<li>
					<a title="超级玛丽" target="_blank" href="">超级玛丽</a>
				</li>
				<li>
					<a title="台球" target="_blank" href="">台球</a>
				</li>
				<li>
					<a title="连连看" target="_blank" href="">连连看</a>
				</li>
				<li>
					<a title="泡泡龙" target="_blank" href="">泡泡龙</a>
				</li>
				<li>
					<a title="拳皇" target="_blank" href="">拳皇</a>
				</li>
				<li>
					<a title="炸弹人" target="_blank" href="">炸弹人</a>
				</li>
				<li>
					<a title="黄金矿工" target="_blank" href="">黄金矿工</a>
				</li>
				<li>
					<a title="打方块" target="_blank" href="">打方块</a>
				</li>
				<li>
					<a title="卡丁车" target="_blank" href="">卡丁车</a>
				</li>
				<li>
					<a title="对对碰" target="_blank" href="">对对碰</a>
				</li>
				<li>
					<a title="解密游戏" target="_blank" href="">解密游戏</a>
				</li>
				<li>
					<a title="魂斗罗" target="_blank" href="">魂斗罗</a>
				</li>
				<li>
					<a title="捕鱼达人" target="_blank" href="">捕鱼达人</a>
				</li>
				<li>
					<a title="植物大战僵尸" target="_blank" href="">植物大战僵尸</a>
				</li>
				<li>
					<a title="找茬" target="_blank" href="">找茬</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="footer">
		<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
	    蜀ICP备 12005138号-1
	</div>
</div>
</body>
</html>
