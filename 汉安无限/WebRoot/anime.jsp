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
    
<title>汉安无限-动漫频道</title>
    
<meta http-equiv="pragma" content="no-cache"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
<meta http-equiv="description" content="汉安无限-动漫频道"/>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/anime.js"></script>
<link rel="stylesheet" type="text/css" href="css/anime.css"/>

</head>
<body>
<s:include value="head_2.jsp"></s:include>

<div class="topdiv">
	<div class="foucebox">
		<div class="triggerbox tiggerbox_left">
			<ul class="scrollimg_tigger scrollimg_tigger_left">
			<s:iterator value="#request.hotLeft" id="MoviesVo" status="status">
				<s:if test="%{#status.count == 1}">
				<a id="big_pic_nav_<s:property value="#status.count-1"/>" class="lefton" title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
					<img class="pic" src="<s:property value="#MoviesVo.mainPic"/>">
					<strong><s:property value="#MoviesVo.MovieName"/></strong>
					<p><s:property value="#MoviesVo.directName"/></p>
				</a>
				</s:if>
				<s:else>
					<a id="big_pic_nav_<s:property value="#status.count-1"/>" class="" title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
					<img class="pic" src="<s:property value="#MoviesVo.mainPic"/>">
					<strong><s:property value="#MoviesVo.MovieName"/></strong>
					<p><s:property value="#MoviesVo.directName"/></p>
				</a>
				</s:else>
			</s:iterator>
			</ul>
		</div>
		<div class="scrollimg">
			<div id="switchBigPic">
			<s:iterator value="#request.hotLeft" id="MoviesVo" status="status">
				<div class="scrollimg_div">
					<a class="scrollimg_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
						<img src="<s:property value="#MoviesVo.picPath"/>" title="">
					</a>
				</div>
			</s:iterator>	
			<s:iterator value="#request.hotReghit" id="MoviesVo" status="status">
				<div class="scrollimg_div">
					<a class="scrollimg_img" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
						<img src="<s:property value="#MoviesVo.picPath"/>" title="">
					</a>
				</div>
			</s:iterator>	
			</div>
		</div>
		<div class="tiggerbox">
			<ul class="scrollimg_tigger" >
			<s:iterator value="#request.hotReghit" id="MoviesVo" status="status">
				<a id="big_pic_nav_<s:property value="#status.count+5"/>" class="" title="" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.address"/>">
					<img class="pic" src="<s:property value="#MoviesVo.mainPic"/>">
					<strong><s:property value="#MoviesVo.movieName"/></strong>
					<p><s:property value="#MoviesVo.directName"/></p>
				</a>
			</s:iterator>
				
			</ul>
		</div>
	</div>
	<div class="ranklist">
		<div class="ranklist_tt">
			<h2 id="Tab_forecast_0" class="on" style="border-left:none;" onmouseover="switchTab('forecast',0,2,'on','')">热播榜</h2>
			<h2 id="Tab_forecast_1" class="" onmouseover="switchTab('forecast',1,2,'on','')">经典榜</h2>
		</div>
		<div class="ranklist_box">
			<ul id="ranklist_box_type_0" class="ranklist_box_type">
			<s:iterator value="#request.hotanimelist" id="MoviesVo" status="status">
				<s:if test="%{#status.count <= 3}">
				<li class="top">
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="<s:property value="#MoviesVo.MovieName"/>" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:if>
				<s:else>
				<li>
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="<s:property value="#MoviesVo.MovieName"/>" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:else>
			</s:iterator>
				
			</ul>
			<ul id="ranklist_box_type_1" class="ranklist_box_type" style="display: none;">
			<s:iterator value="#request.goodanimelist" id="MoviesVo" status="status">
				<s:if test="%{#status.count <= 3}">
				<li class="top">
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="Fring" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:if>
				<s:else>
					<li>
					<em><s:property value="#status.count"/></em>
					<p>
						<a  href="player.action?ID=<s:property value="#MoviesVo.ID"/>" title="Fring" target="_blank"><s:property value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property value="#MoviesVo.rolesName"/></strong>
					</p>
				</li>
				</s:else>
			</s:iterator>
				
			</ul>
			<div class="ranklist_box_more"><a href="searchByKey.action?bid=2&key=">更多&gt;&gt;</a></div>
		</div>
	</div>
</div>
<dl class="toptag">
	<dt>热门索引:</dt>
	<dd>
		<a title="内地" href="searchByKey.action?cateid=19&bid=3">内地</a>
		<a title="美国" href="searchByKey.action?cateid=20&bid=3">美国</a>
		<a title="日本" href="searchByKey.action?cateid=18&bid=3">日本</a>	</dd>
</dl>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>热门推荐</h2>
			<a href="">更多&gt;</a>
		</div>
		<ul class="animelist">
			<s:iterator value="#request.suggestanimelist" id="MoviesVo" status="status">
			<li>
				<a class="pic" title="<s:property  value="#MoviesVo.MovieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
					<img title="<s:property  value="#MoviesVo.MovieName"/>" src="<s:property  value="#MoviesVo.mainPic"/>"/>
				</a>
				<p>
					<a title="<s:property  value="#MoviesVo.MovieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
				</p>
				<p>
					<s:property  value="#MoviesVo.roleName"/>
				</p>
				<p>
					上传者:<s:property  value="#MoviesVo.uploadName"/>
				</p>
			</li>
			</s:iterator>
		</ul>
	</div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br/>
    蜀ICP备 12005138号-1
</div>
<script src="http://s16.cnzz.com/stat.php?id=4427800&web_id=4427800&show=pic" language="JavaScript"></script>
</body>
</html>
