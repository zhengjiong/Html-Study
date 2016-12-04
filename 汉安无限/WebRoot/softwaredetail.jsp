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
    
    <title>汉安无限-软件下载-详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-软件下载-详情">
	<link rel="stylesheet" type="text/css" href="css/softwaredetail.css">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
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
<div style="width:970px;height:140px;margin:0 auto;margin-top:15px;">
	<img width="970" height="140" src="images/yidong_soft.jpg">
</div>
<div class="location">
	<a href="">软件下载</a>
	<span>&gt;</span>
	<a href="">电脑安全</a>
	<span>&gt;</span>
	<span class="location_softname" href=""><s:property value="#request.soft.softName"/>免费下载</span>
</div>
<div class="main">
	<div class="main_left">
		<div class="left_tt">
			<h1><s:property value="#request.soft.softName"/></h1>
		</div>
		<div class="down_now">
			<a href="softwareDownloadAction.action?id=<s:property value="#request.soft.id"/>" class="down_btn">
				<em>立即下载</em>
				<i>&nbsp;</i>
				<b>（<s:property value="#request.soft.size"/>）</b>
			</a>
			<div class="plug">无插件</div>
		</div>
		<div class="soft_info">
			<p>
				<span>更新时间：</span>
				<s:property value="#request.soft.createTime"/>
			</p>
			<p>
				<span>软件属性：</span>
				简体中文 共享
			</p>
			<p>
				<span>应用平台：</span>
				Win7/WinVista/WinXP
			</p>
			<p>
				<span>相关链接：</span>
				<s:iterator value="#request.softwareVos" id="software">
				<a href="softwaredetail.action?id=<s:property value="#software.id"/>"><s:property value="#software.softName"/></a>
				
				</s:iterator>
			</p>
		</div>
		<div class="soft_intro">
			<span>软件介绍:</span>
			<p><s:property value="#request.soft.intro"/></p>
		</div>
	</div>
	<div class="main_right">
		<div class="bb">
			<div class="bb_tt">
				<strong class="icon2">装机必备</strong>
			</div>
			<ul class="soft_ul">
				<li>
					<a href="softwareDownloadAction.action?id=5">
						<img border="0" src="images/software/QQ2012.png">
					</a>
					<a title="QQ2012" target="_blank" href="softwareDownloadAction.action?id=5">QQ2012</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=1">
						<img border="0" src="images/software/ce9v1V5udwl3o.gif">
					</a>
					<a title="Adobe Flash Player 11.2" target="_blank" href="softwareDownloadAction.action?id=1">Adobe Flash Player 11.2</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=19">
						<img border="0" src="images/software/360anquanweishi86Beta.jpg">
					</a>
					<a title="360安全卫士" target="_blank" href="softwareDownloadAction.action?id=19">360安全卫士</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=27">
						<img border="0" src="images/software/jingshanduba.jpg">
					</a>
					<a title="金山毒霸" target="_blank" href="softwareDownloadAction.action?id=27">金山毒霸</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=29">
						<img border="0" src="images/software/ludashi.png">
					</a>
					<a title="鲁大师" target="_blank" href="softwareDownloadAction.action?id=29">鲁大师</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=31">
						<img border="0" src="images/software/qudongrensheng2012.png">
					</a>
					<a title="驱动人生2012" target="_blank" href="softwareDownloadAction.action?id=31">驱动人生2012</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=54">
						<img border="0" src="images/software/youdaocidian.jpg">
					</a>
					<a title="有道词典" target="_blank" href="softwareDownloadAction.action?id=54">有道词典</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=36">
						<img border="0" src="images/software/Office 2007zhengshizhongwenban.jpg">
					</a>
					<a title="Office 2007正式中文版" target="_blank" href="softwareDownloadAction.action?id=36">Office 2007正式中文版</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=25">
						<img border="0" src="images/software/Windowsyouhuadashi79912301.png">
					</a>
					<a title="Windows优化大师" target="_blank" href="softwareDownloadAction.action?id=25">Windows优化大师</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=20">
						<img border="0" src="images/software/360anquanzhuomian21.png">
					</a>
					<a title="QQ2011" target="_blank" href="softwareDownloadAction.action?id=20">360安全桌面</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=4">
						<img border="0" src="images/software/cewuyiXCL63Wo.jpg">
					</a>
					<a title="QQ2011" target="_blank" href="softwareDownloadAction.action?id=4">搜狗拼音输入法</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=2">
						<img border="0" src="images/software/ceg5XMKorytic.gif">
					</a>
					<a title="傲游浏览器3" target="_blank" href="softwareDownloadAction.action?id=2">傲游浏览器3</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=6">
						<img border="0" src="images/software/Win.jpg">
					</a>
					<a title="WinRar" target="_blank" href="softwareDownloadAction.action?id=6">WinRar</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=23">
						<img border="0" src="images/software/Autorunbingdufangyu.gif">
					</a>
					<a title="Autorun病毒防御者" target="_blank" href="softwareDownloadAction.action?id=23">Autorun病毒防御者</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=3">
						<img border="0" src="images/software/ceQp2MPIHjCg.jpg">
					</a>
					<a title="腾讯TT浏览器" target="_blank" href="softwareDownloadAction.action?id=3">腾讯TT浏览器</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=28">
						<img border="0" src="images/software/jingshanqinglizhuanjia.jpg">
					</a>
					<a title="金山清理专家" target="_blank" href="softwareDownloadAction.action?id=28">金山清理专家</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=34">
						<img border="0" src="images/software/xiaohongshan2012.jpg">
					</a>
					<a title="小红伞2012" target="_blank" href="softwareDownloadAction.action?id=34">小红伞2012</a>
				</li>
				<li>
					<a href="softwareDownloadAction.action?id=43">
						<img border="0" src="images/software/WPS201212012.png">
					</a>
					<a title="WPS2012" target="_blank" href="softwareDownloadAction.action?id=43">WPS2012</a>
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
