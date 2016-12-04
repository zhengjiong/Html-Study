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
    
<title>汉安无限-播放</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/movieplayer.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript" src="js/player.js"></script>
<script src="js/27hp.js" type="text/javascript"></script>
<script type="text/javascript" src="ckplayer/ckplayer.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/movieplayer.css"/>
<script type="text/javascript">
			
	var urlflv=new Array();
	<s:iterator value="#request.moviesPathList" id="Moviepath" status="status">
		urlflv[<s:property value="#status.count"/>]='<%request.getContextPath();%>/<s:property value="#Moviepath.address"/>';
	</s:iterator>

	var i=1;
	function playerstop(){
		var s1=new swfupload();
		showPlayerNum(i);
		s1.ckplayer_url='ckplayer/ckplayer.swf';//播放器文件名
		s1.ckplayer_flv=urlflv[i];//视频地址
		s1.ckplayer_loadimg='http://www.ckplayer.com/images/loadimg3.jpg';//初始图片地址
		s1.ckplayer_pauseflash='';//暂停时播放的广告，只支持flash和图片
		s1.ckplayer_pauseurl='';//暂停时播放图片时需要加一个链接
		s1.ckplayer_loadadv='images/ganen5000wan.jpg';//视频开始前播放的广告，可以是flash,也可是视频格式
		s1.ckplayer_loadurl='';//视频开始前广告的链接地址，主要针对视频广告，如果是flash可以不填写
		s1.ckplayer_loadtime=10;//视频开始前广告播放的秒数,只针对flash或图片有效
		s1.ckplayer_endstatus=0;//视频结束后的动作，0停止播放并发送js,1是不发送js且重新循环播放,2停止播放
		s1.ckplayer_volume=80;//视频默认音量0-100之间
		s1.ckplayer_play=1;//视频默认播放还是暂停，0是暂停，1是播放
		s1.ckplayer_width=960;//播放器宽度
		s1.ckplayer_height=600;//播放器高度
		s1.ckplayer_bgcolor='#000000';//播放器背景颜色
		s1.ckplayer_allowFullScreen=true;//是否支持全屏，true支持，false不支持，默认支持
		s1.swfwrite('player5');//div的id
		i=i+1;
		if(i>urlflv.length){
			i=1;
			playerstop();
		}
	}
	function player(j){
		i = j;
		playerstop();
	}
</script>
</head>
<body>
<s:include value="head_2.jsp"></s:include>
<div class="list_tt">
	正在播放&nbsp;&gt;
	<s:property value="#request.movie.MovieName" />
	 如果不能播放，请<a href="resources/RealPlayer_cn.exe">点击这里</a>
	 &nbsp;&nbsp;&nbsp;&nbsp;
	 如果您是用的IE9浏览器，不能正常播放，请点击这里<a href="softwareDownloadAction.action?fileName=resources/IE9.docx">点击这里</a>
</div>
<div class="player_bg">
	<div class="player" id="player5">
		<!-- 
		<embed id="PlayerCtrl" width="100%" height="100%" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="movieType=movie" wmode="window" allowfullscreen="true" allowscriptaccess="always" quality="high" bgcolor="#000000" name="PlayerCtrl" src="http://js.kankan.xunlei.com/player/mp4/KKPlayer.swf?v=2.1&popup=1" type="application/x-shockwave-flash">
		 -->
		<script type="text/javascript" charset="gb2312">
			
			<s:if test="#request.type=='flvplayer'">
				playerstop();
			</s:if>
			<s:if test="#request.type=='realplayer'">
				pv_r("<s:property value="#request.moviepath.address"/>", 960, 540);
			</s:if>	
					
		</script>
		
	</div>
	<s:if test="#request.type=='realplayer'">
	<input type="button" value="全屏播放" style="float: left" onclick="iask_v.SetFullScreen()">
	</s:if>	
</div>
<div class="wrapper_box" id="wrapper_box">
	<div class="main">
		<div class="box_tt">
			<a class="box_tt_left">大家都在看</a><a class="box_tt_right">关闭</a>
		</div>
		<ul class="movielist">
		<s:iterator value="#request.likeType" id="MoviesVo" status="status">
			<li>
				<a target="_blank" class="movielist_img" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" target="_blank">
					<img src="<s:property  value="#MoviesVo.mainPic"/>" />
				</a>
				<div class="movielist_row_1">
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_name"><s:property value="#MoviesVo.MovieName"/></a>
					<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1" class="movielist_row_1_play"></a>
				</div>
				<div>
					上传者:<s:property value="#MoviesVo.uploadName"/>
				</div>
			</li>
		</s:iterator>
		</ul>
	</div>
</div>
<div class="intro">
	<div class="intro_tt">播放集数</div>
	<ul class="intro_con_num">
			<s:if test="#request.type=='flvplayer'">
				<s:iterator value="#request.moviesPathList" id="Moviepath" status="status">
					<s:if test="#status.count==1">
						<li><a class="on" id="play_<s:property value='#status.count'/>" href="javascript:player(<s:property value='#status.count'/>);">第<s:property value="#Moviepath.movieNum"/>集</a></li>
					</s:if>
					<s:else>
						<li><a id="play_<s:property value='#status.count'/>" href="javascript:player(<s:property value='#status.count'/>);">第<s:property value="#Moviepath.movieNum"/>集</a></li>
					</s:else>
				</s:iterator>
			</s:if>
			<s:if test="#request.type=='realplayer'">
				<s:iterator value="#request.moviesPathList" id="Moviepath" status="status">
					<li><a id="play_<s:property value='#status.count'/>" href="player.action?ID=<s:property value="#Moviepath.movieID"/>&movieNum=<s:property value="#Moviepath.movieNum"/>">第<s:property value="#Moviepath.movieNum"/>集</a></li>
				</s:iterator>
			</s:if>	
	</ul>
	
	<div class="intro_tt" style="border-top: 1px solid #e5e5e5;"><a style="position: absolute;left:20px;cursor: default;">影片信息</a></div>
	<ul class="intro_con">
		<li><font style="font-weight: bold;color:#3b3b3b;font-size:16px;"><s:property value="#request.movie.MovieName" /><font/></li>
		<li>主演:<s:property value="#request.movie.rolesName" /></li>
		<li>导演:<s:property value="#request.movie.directors" /></li>
		<li>地区:<s:property value="#request.movie.areaName" /></li>
		<li>上映时间:<s:property value="#request.movie.creatTime" /></li>
		<li>类型:<s:property value="#request.movie.cateSname" /></li>
		<li>上传者:<s:property value="#request.movie.uploadName" /></li>
		<li>上传时间:<s:property value="#request.movie.updateTime" /></li>
	</ul>
	<div class="intro_tt" style="border-top:1px solid #dddddd;">内容简介</div>
	<ul class="intro_con_2">
		<li>
			<s:property value="#request.movie.directName" />
		</li>
	</ul>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
<script src="http://s16.cnzz.com/stat.php?id=4427800&web_id=4427800&show=pic" language="JavaScript"></script>
</body>
</html>
