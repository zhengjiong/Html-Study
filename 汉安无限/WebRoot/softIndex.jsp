<%@page import="java.io.PrintWriter"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.yufeng.bean.SoftwareVo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="z" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>汉安无限-软件下载频道</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-软件下载频道">
	<link rel="stylesheet" type="text/css" href="css/softIndex.css"/>
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/softIndex.js"></script>
<style type="text/css">
OL LI {
	MARGIN: 8px
}
#footer {width:970px;height:60px;margin:0 auto;text-align: center;margin-top: 20px;}
#footer a{
	color:#414141;
}
#footer a:hover{
	color:#09a8dd;
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

</style>
<script type="text/javascript">
$(function(){
	for(var i=0;i<16;i++){
		$("#top_nav_"+i).attr("class","");
	}
	$("#top_nav_15").addClass("on");
});
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
	<form id="searchform" target="_self" action="softwareIndex.action" method="post">
		<div class="search_wrapper">
			<div class="btnSearch_wrapper">
				<button id="btnSearch" type="submit"></button>
			</div>
			<div class="search_txt_wrapper">
				<input class="search_txt" id="searchbox1" type="text" maxlength="50" name="condition" value="" />
			</div>
		</div>
	</form>
	<div class="searchbox_hottag">
		<a target="_blank" title="AA制生活" href="player.action?ID=1338&movieNum=1">AA制生活</a>
		<a target="_blank" title="决战星球" href="player.action?ID=27&movieNum=1">决战星球</a>
		<a target="_blank" title="生化危机" href="player.action?ID=39&movieNum=1">生化危机</a>
		<a target="_blank" title="星球大战" href="player.action?ID=57&movieNum=1">星球大战</a>
		<a target="_blank" title="失恋33天" href="player.action?ID=98&movieNum=1">失恋33天</a>
	</div>
	
</div>

<div class="mainnav">
	<div class="mainnav_list">
		<a id="top_nav_0" class="" title="首页"  href="getindexMsg.action">首页</a>
		<a id="top_nav_1" title="网址大全" href="nav.jsp">网址大全</a>
		<a id="top_nav_2" href="movieIndex.action" title="电影">电影</a>
		<a id="top_nav_3" href="showTV.action" title="电视剧">电视剧</a>
		<a id="top_nav_4"  href="zongyi.action" title="综艺">综艺</a>
		<a id="top_nav_5"  href="animes.action" title="动漫">动漫</a>
		<a id="top_nav_13" href="musicIndex.action" title="音乐">音乐</a>
		<a id="top_nav_6" title="游戏" href="games.jsp">游戏下载</a>
		<a id="top_nav_15" href="softwareIndex.action" title="软件下载">软件下载</a>
		<a id="top_nav_7" href="funnyvideo.jsp" title="搞笑视频">搞笑视频</a>
		<a id="top_nav_8" href="gamevideo.jsp" title="游戏视频">游戏视频</a>
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
<div style="width:970px;height:100px;margin:0 auto;margin-top:15px;">
	<img border="0" width="970" height="100" src="images/yidong.jpg" id="aeaoofnhgocdbnbeljkmbjdmhbcokfdb-mousedown">
</div>
<div class="wrapper">
	<div class="wrapper_left">
		<div class="wrapper_left_box_tt">
			<h2 class="h2_1">软件分类</h2>
			<ul class="wrapper_left_box_tt_ul">
				<a href="softwareIndex.action" id="Tab_star_0" class="wrapper_left_on">全部软件</a>
				<a href="softwareIndex.action?cid=1" id="Tab_star_1" class="">电脑安全</a>
				<a href="softwareIndex.action?cid=2" id="Tab_star_2" class="">聊天软件</a>
				<a href="softwareIndex.action?cid=3" id="Tab_star_3" class="">媒体软件</a>
				<a href="softwareIndex.action?cid=4" id="Tab_star_4" class="">手机软件</a>
				<a href="softwareIndex.action?cid=5" id="Tab_star_5" class="">网络工具</a>
				<a href="softwareIndex.action?cid=6" id="Tab_star_6" class="">图像设计</a>
				<a href="softwareIndex.action?cid=7" id="Tab_star_7" class="">工具软件</a>
				<a href="softwareIndex.action?cid=8" id="Tab_star_8" class="">办公教育</a>
			</ul>
		</div>
		<div class="wrapper_left_content" id="wrapper_left_content_0"></div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_1">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_2">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_3">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_4">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_5">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_6">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_7">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_8">
			<div class="wrapper_left_content_topmovie_1" style="display: none;">
				<z:iterator value="#request.mSoftwareSmallCateVos" id="scate" status="count">
					<a href=""><z:property value="#scate.smallCateName" /></a>
				</z:iterator>
			</div>
		</div>
	</div>
</div>

<div class="soft_content">
	<div class="content_title"><span id="soft_tt">全部软件</span><font style="font-size: 12px;color: #999999;padding-left:10px;">共有<z:property value="#session.softCount"/>款软件</font></div>
	<z:iterator value="#session.softwareVos" id="software">
		<div class="soft_list">
			<div class="soft_list_title">
				<z:property value="#software.softName"/>
			</div>
			<div class="soft_list_content">
				<div class="soft_content_img">
					<img width="32" height="32" src="<z:property value='#software.image' />">
				</div>
				<div class="soft_content_info">
					<div class="soft_content_info_row1">
						更新：<z:property value="#software.createTime"/>
						&nbsp;&nbsp;&nbsp;&nbsp;
						大小：<z:property value="#software.size"/>
					</div>
					<div class="soft_content_info_row2">
						<z:property value="#software.intro"/>
					</div>
				</div>
				
				<div class="soft_content_down">
					<a href="softwareDownloadAction.action?fileName=<z:property value="#software.path"/>">
						<img src="images/z_down.gif" style="position: absolute;top:32px;">
					</a>
					<span style="line-height: 85px;margin-left: 30px;font-weight: bold;">
						<a href="softwaredetail.action?id=<z:property value="toEncoder(#software.id)"/>">立即下载</a>
					</span>
				</div>
			</div>
		</div>
	</z:iterator>
</div>
<div class="pageNum">
	<z:iterator value="#request.page" status="status">
		<z:if test="%{#request.currentPage == #status.count}">
			<a id="page_<z:property value="#status.count"/>" class="current" href="softwareIndex.action?pageNum=<z:property value="#status.count"/>"><z:property value="#status.count"/></a>
		</z:if>
		<z:else>
			<a id="page_<z:property value="#status.count"/>" class="notcurrent" href="softwareIndex.action?pageNum=<z:property value="#status.count"/>"><z:property value="#status.count"/></a>
		</z:else>
	</z:iterator>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
</body>
</html>
