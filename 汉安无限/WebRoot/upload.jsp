<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>汉安无限-上传频道</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-上传频道">
	<link rel="stylesheet" type="text/css" href="css/upload.css">
	<script language="javascript" src="js/jquery-1.3.2.min.js"></script>
	<script language="javascript" type="text/javascript">
	$(function(){for(var i=0;i<16;i++){$("#top_nav_"+i).attr("class","");}$("#top_nav_9").addClass("on");});
	</script>
  </head>
<body>
<s:include value="head_2.jsp"></s:include>
<div class="main">
	<div class="main_title">
		<h1>上传视频</h1>
	</div>
	<div id="video_upload" class="video_upload">
		<div class="videoInfo">
			<div class="action">
				<div class="up_click">
					<div class="upload_button">
						<div class="btnsub_1">
							<span class="btn_text">
								<div style="font-weight:bold;font-size:14px;line-height:38px">上传视频</div>
							</span>
						</div>
					</div>
					<span class="filesize">支持上传1G以内的视频</span>
				</div>
				<div class="up_dragDrop">
					<span>将视频拖放到页面上的任何位置</span>
				</div>
			</div>
		</div>
		<div class="importantInfo">
			<h3 class="title">
				重要信息：
			</h3>
			<ul class="important_ul">
				<li>
					<span>请勿上传色情，反动等违法视频</span>
				</li>
				<li>
					<span>上传视频，即表示您默认同意</span>
					<a href="javascript:void(0);">上传服务条款</a>
				</li>
				<li>
					1
					<span>上传遇到问题？</span>
					<a href="javascript:void;">查看帮助</a>
				</li>
				<li>
					2
					<span>如何获得高清，超清，宽屏视频标识？</span>
					<a href="javascript:void;">查看规则</a>
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
