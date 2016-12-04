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
    
<title>汉安无限-综艺频道</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="汉安无限-综艺频道">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/zy.js"></script>
<link rel="stylesheet" type="text/css" href="css/zy.css"/>

</head>
<body>
<s:include value="head_2.jsp"></s:include>
<div class="topdiv">
	<div class="foucebox">
		<div class="triggerbox tiggerbox_left">
			<ul class="scrollimg_tigger scrollimg_tigger_left">
				<a id="big_pic_nav_0" class="lefton" title="" target="_blank" href="player.action?ID=217&movieNum=1">
					<img class="pic" src="images/indeximg/kangxilaile1.jpg">
					<strong>康熙来了</strong>
					<p>第五期</p>
				</a>
				<a id="big_pic_nav_1" class="" title="" target="_blank" href="player.action?ID=217&movieNum=2">
					<img class="pic" src="images/indeximg/kangxilaile9.jpg">
					<strong>康熙来了</strong>
					<p>第六期</p>
				</a>
				<a id="big_pic_nav_2" class="" title="" target="_blank" href="player.action?ID=218&movieNum=1">
					<img class="pic" src="images/indeximg/kuailedabenying1.png">
					<strong>快乐大本营</strong>
					<p>第三十期</p>
				</a>
				<a id="big_pic_nav_3" class="" title="" target="_blank" href="player.action?ID=218&movieNum=2">
					<img class="pic" src="images/indeximg/kuailedabenying2.jpg">
					<strong>快乐大本营</strong>
					<p>第三十五期</p>
				</a>
				<a id="big_pic_nav_4" class="" title="" target="_blank" href="player.action?ID=219&movieNum=1">
					<img class="pic" src="images/indeximg/tiantianxiangshang1.jpg">
					<strong>天天向上</strong>
					<p>第二十期</p>
				</a>
				<a id="big_pic_nav_5" class="" title="" target="_blank" href="player.action?ID=219&movieNum=2">
					<img class="pic" src="images/indeximg/tiantianxiangshang2.jpg">
					<strong>天天向上</strong>
					<p>第二十一期</p>
				</a>
			</ul>
		</div>
		<div class="scrollimg">
			<div id="switchBigPic">
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=217&movieNum=1" target="_blank">
						<img src="images/indeximg/kangxilaileB2.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=217&movieNum=2" target="_blank">
						<img src="images/indeximg/kangxilaileB1.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=218&movieNum=1" target="_blank">
						<img src="images/indeximg/kuailedabenyingB2.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=218&movieNum=2" target="_blank">
						<img src="images/indeximg/kuailedabenyingB1.png" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=219&movieNum=1" target="_blank">
						<img src="images/indeximg/tiantianxiangshangB1.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=219&movieNum=2" target="_blank">
						<img src="images/indeximg/tiantianxiangshangB2.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=222&movieNum=1" target="_blank">
						<img src="images/indeximg/yulebaifenbaiB1.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=222&movieNum=2" target="_blank">
						<img src="images/indeximg/yulebaifenbaiB2.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=222&movieNum=3" target="_blank">
						<img src="images/indeximg/yulebaifenbaiB3.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=236&movieNum=1" target="_blank">
						<img src="images/indeximg/womenyuehuibaB1.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=935&movieNum=1" target="_blank">
						<img src="images/indeximg/nvrenhaoxiliB1.jpg" title="">
					</a>
				</div>
				<div class="scrollimg_div">
					<a class="scrollimg_img" href="player.action?ID=217&movieNum=3" target="_blank">
						<img src="images/indeximg/kangxilaileB3.jpg" title="">
					</a>
				</div>
			</div>
		</div>
		<div class="tiggerbox">
			<ul class="scrollimg_tigger" >
				<a id="big_pic_nav_6" class="" title="" target="_blank" href="player.action?ID=222&movieNum=1" target="_blank">
					<img class="pic" src="images/indeximg/yule1.png">
					<strong>娱乐百分百</strong>
					<p>第三期</p>
				</a>
				<a id="big_pic_nav_7" class="" title="" target="_blank" href="player.action?ID=222&movieNum=2" target="_blank">
					<img class="pic" src="images/indeximg/yule2.png">
					<strong>娱乐百分百</strong>
					<p>第四期</p>
				</a>
				<a id="big_pic_nav_8" class="" title="" target="_blank" href="player.action?ID=222&movieNum=3" target="_blank">
					<img class="pic" src="images/indeximg/yule3.jpg">
					<strong>娱乐百分百</strong>
					<p>第五期</p>
				</a>
				<a id="big_pic_nav_9" class="" title="" target="_blank" href="player.action?ID=236&movieNum=1" target="_blank">
					<img class="pic" src="images/indeximg/womenyuehui.jpg">
					<strong>我们约会吧</strong>
					<p>第五期</p>
				</a>
				<a id="big_pic_nav_10" class="" title="" target="_blank" href="player.action?ID=935&movieNum=1" target="_blank">
					<img class="pic" src="images/indeximg/nvrenhaoxili.jpg">
					<strong>女人好犀利</strong>
					<p>第六期</p>
				</a>
				<a id="big_pic_nav_11" class="" title="" target="_blank" href="player.action?ID=217&movieNum=3" target="_blank">
					<img class="pic" src="images/indeximg/kangxilaile.jpg">
					<strong>康熙来了</strong>
					<p>第七期</p>
				</a>
			</ul>
		</div>
	</div>
	<div class="ranklist">
		<div class="ranklist_tt">
			<h2 id="Tab_forecast_0" class="on" style="border-left:none;" onmouseover="switchTab('forecast',0,2,'on','')">内地综艺榜</h2>
			<h2 id="Tab_forecast_1" class="" onmouseover="switchTab('forecast',1,2,'on','')">港台综艺榜</h2>
		</div>
		<div class="ranklist_box">
			<ul id="ranklist_box_type_0" class="ranklist_box_type">
				<s:iterator value="#request.chinazy" id="MoviesVo" status="status">
				<s:if test="%{#status.count <= 3}">
					<li class="top">
						<em><s:property value="#status.count"/></em>
						<p>
							<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" title="甄嬛传" target="_blank"><s:property  value="#MoviesVo.MovieName"/></a>
							<strong class="type"><s:property  value="#MoviesVo.updateNum"/></strong>
						</p>
					</li>
				</s:if>
				<s:else>
					<li>
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" title="甄嬛传" target="_blank"><s:property  value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property  value="#MoviesVo.updateNum"/></strong>
					</p>
				</li>
				</s:else>
				</s:iterator>
			</ul>
			<ul id="ranklist_box_type_1" class="ranklist_box_type" style="display: none;">
				<s:iterator value="#request.gangtaizy" id="MoviesVo" status="status">
				<s:if test="%{#status.count <= 3}">
					<li class="top">
						<em><s:property value="#status.count"/></em>
						<p>
							<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" title="Fring" target="_blank"><s:property  value="#MoviesVo.MovieName"/></a>
							<strong class="type"><s:property  value="#MoviesVo.updateNum"/></strong>
						</p>
					</li>
				</s:if>
				<s:else>
					<li>
					<em><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" title="Fring" target="_blank"><s:property  value="#MoviesVo.MovieName"/></a>
						<strong class="type"><s:property  value="#MoviesVo.updateNum"/></strong>
					</p>
				</li>
				</s:else>
				</s:iterator>
			</ul>
			<div class="ranklist_box_more"><a href="searchByKey.action?bid=4&key=">更多&gt;&gt;</a></div>
		</div>
	</div>
</div>
<dl class="toptag">
	<dt>热门索引:</dt>
	<dd>
		<a title="内地" href="searchByKey.action?cateid=21&bid=4">内地</a>
		<a title="港台" href="searchByKey.action?cateid=22&bid=4">港台</a>
	</dd>
</dl>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>热门推荐</h2>
			<a href="searchByKey.action?bid=4&key=">更多&gt;</a>
		</div>
		<ul class="animelist">
			<s:iterator value="#request.hostzy" id="MoviesVo" status="status">
			<li>
				<a class="pic" target="_blank" title="<s:property  value="#MoviesVo.MovieName"/>" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1">
					<img title="<s:property  value="#MoviesVo.MovieName"/>" src="<s:property  value="#MoviesVo.mainPic"/>">
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
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
<script src="http://s16.cnzz.com/stat.php?id=4427800&web_id=4427800&show=pic" language="JavaScript"></script>
</body>
</html>
