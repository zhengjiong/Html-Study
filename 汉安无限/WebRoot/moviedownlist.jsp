<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">


		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
			.movielist a{
				font-size: 12px;
				color:#424242;
			}
			.movielist a:hover{
				color:#2cb8ec;
				text-decoration: underline;
			}
		</style>
		<script language="javascript" src="js/moviedown.js"></script>
	</head>

	<body>
		 <div style=" height:20px; border-bottom:1px solid #dddddd;"> 
			<ul>
		    	<li style="float:left;font-size:12px;margin-left:20px;color:#059cd1;font-weight: bold;">免费下载</li>
		        <li style="float:right"><a href="javascript:void(0)" onclick="cancel()"><img src="images/close.png" height="20px" width="20px" /></a></li>
		    </ul>
		</div>		
		<div>
		<ul>
			<s:iterator value="#request.list" id="path" status="status">
				<li class="movielist" style=" margin-left:20px;">
					<a href="movieDownLoad.action?fileName=<s:property value='#path.address'/>&movieID=<s:property value='#path.movieID'/>&movienum=<s:property value='#path.movieNum'/>"
						target="_blank"><s:property value='#path.address' />
					</a>
				</li>
			</s:iterator>
		</ul>
		</div>
	</body>
</html>
