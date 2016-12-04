<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'player.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="skin/jplayer.blue.monday.css" rel="stylesheet"
			type="text/css" />
		<script type="text/javascript"
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
		<script type="text/javascript">

$(document).ready(function(){

	var playItem = 0;

	var myPlayList = [
		<s:iterator value="#request.musicList" id="MusicVo" status="status">

			{name:"<s:property value="#MusicVo.musicName"/>",mp3:"http://zhangy123.vicp.cc:8866/habeyond/<s:property value="#MusicVo.address"/>"},
		</s:iterator>
		{name:"xxx",mp3:"http://music.sogua.com/playernet/player.asp?id=2722n"}
	];

	// Local copy of jQuery selectors, for performance.
	var jpPlayTime = $("#jplayer_play_time");
	var jpTotalTime = $("#jplayer_total_time");

	$("#jquery_jplayer").jPlayer({
		ready: function() {
			displayPlayList();
			playListInit(true); // Parameter is a boolean for autoplay.
		},
		oggSupport: true
	})
	.jPlayer("onProgressChange", function(loadPercent, playedPercentRelative, playedPercentAbsolute, playedTime, totalTime) {
		jpPlayTime.text($.jPlayer.convertTime(playedTime));
		jpTotalTime.text($.jPlayer.convertTime(totalTime));
	})
	.jPlayer("onSoundComplete", function() {
		playListNext();
	});

	$("#jplayer_previous").click( function() {
		playListPrev();
		$(this).blur();
		return false;
	});

	$("#jplayer_next").click( function() {
		playListNext();
		$(this).blur();
		return false;
	});

	function displayPlayList() {
		$("#jplayer_playlist ul").empty();
		for (i=0; i < myPlayList.length; i++) {
			var listItem = (i == myPlayList.length-1) ? "<li class='jplayer_playlist_item_last'>" : "<li>";
			listItem += "<a href='#' id='jplayer_playlist_item_"+i+"' tabindex='1'>"+ myPlayList[i].name +"</a></li>";
			$("#jplayer_playlist ul").append(listItem);
			$("#jplayer_playlist_item_"+i).data( "index", i ).click( function() {
				var index = $(this).data("index");
				if (playItem != index) {
					playListChange( index );
				} else {
					$("#jquery_jplayer").jPlayer("play");
				}
				$(this).blur();
				return false;
			});
		}
	}

	function playListInit(autoplay) {
		if(autoplay) {
			playListChange( playItem );
		} else {
			playListConfig( playItem );
		}
	}

	function playListConfig( index ) {
		$("#jplayer_playlist_item_"+playItem).removeClass("jplayer_playlist_current").parent().removeClass("jplayer_playlist_current");
		$("#jplayer_playlist_item_"+index).addClass("jplayer_playlist_current").parent().addClass("jplayer_playlist_current");
		playItem = index;
		$("#jquery_jplayer").jPlayer("setFile", myPlayList[playItem].mp3, myPlayList[playItem].ogg);
	}

	function playListChange( index ) {
		playListConfig( index );
		$("#jquery_jplayer").jPlayer("play");
	}

	function playListNext() {
		var index = (playItem+1 < myPlayList.length) ? playItem+1 : 0;
		playListChange( index );
	}

	function playListPrev() {
		var index = (playItem-1 >= 0) ? playItem-1 : myPlayList.length-1;
		playListChange( index );
	}
});
</script>

		<script type="text/javascript">
var passit_title = "";//自定义分享标题，删除和留空表示使用默认
var passit_url = "";//自定义分享网址，删除和留空表示使用默认
var passit_content= "";//自定义分享内容，删除和留空表示使用默认Meta中的描述
var passit_image= "";//自定义分享图片，删除和留空表示不分享图片
var sina_appkey= "";//sina微博appkey,删除和留空表示使用默认
var qq_appkey= "";//腾讯微博appkey,删除和留空表示使用默认
</script>
		<script type="text/javascript">
bookmark_service_div="qq,kxzt,qqxy,baiduHi,bookmark,baidu,douban,sohuweibo,163weibo,more";
bookmark_service="qqkj,sinaweibo,xnzt,qqweibo,more";</script>
		<script type="text/javascript"
			src="http://www.passit.cn/js/passit_bar_new.js?pub=0&simple=1"
			charset="UTF-8"></script>
		<STYLE type=text/css>
TD {
	FONT-SIZE: 9pt;
	LINE-HEIGHT: 17px;
}

BODY {
	FONT-SIZE: 9pt;
	LINE-HEIGHT: 17px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

#lrcollbox td,#lrcollbox font {
	font-family: 黑体;
	font-size: 16px;
}

#lrcoll td {
	color: #0080C0;
	cursor: default;
}

#lrcbox {
	color: #00FF00
}

#lrcfilter {
	filter: alpha(opacity = 0)
}

#lrcbc {
	color: #FFFF33
}

<!-- /*导航*/
body {
	font: 12px Arial, Verdana, Tahoma, "宋体";
}

* {
	padding: 0px;
	margin: 0px;
}

* li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #20537A;
}

a:hover {
	text-decoration: underline;
}

.menu_navcc {
	width: 970px;
	margin: 0 auto;
}

.menu_nav {
	width: 970px;
	height: 53px;
	background: url(images/nav_bg.gif) repeat-x top;
	float: left;
}

.menu_nav .nav_content {
	padding-left: 4px;
	background: url(images/nav_l_bg.gif) no-repeat left top;
	float: left;
}

.menu_nav .nav_content li {
	width: 114px;
	height: 53px;
	padding-left: 10px;
	padding-right: 10px;
	background: url(images/nav_li_right.gif) no-repeat right top;
	float: left;
	line-height: 53px;
	text-align: center;
	font-size: 14px;
	font-weight: bold;
}

.menu_nav .nav_content li a {
	color: #000;
	width: 114px;
	height: 53px;
	display: block;
}

.menu_nav .nav_content li.current {
	line-height: 53px;
}

.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover {
	width: 114px;
	height: 53px;
	background: url(images/nav_li_current.gif) no-repeat bottom;
	display: block;
	color: #fff;
}

.menu_nav .nav_content li a:hover {
	background: url(images/nav_li_hover.gif) no-repeat bottom;
	height: 53px;
	line-height: 53px;
	text-decoration: none;
}

.menu_nav_right {
	padding-right: 20px;
	background: url(images/nav_r_bg.gif) no-repeat right top;
	float: right;
	margin-left: 50px;
	padding-top: 13px;
	height: 23px;
	padding-bottom: 12px;
}

p {
	margin-bottom: 15px
}

.hot {
	float: right;
	position: relative;
}

.divhead a {
	float: right;
}

.playlist {
	border: 1px solid #06F;
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
	border: 2px solid #09F;
	padding-right: 0px;
	padding-left: 0px;
	margin-right: 5px;
	margin-left: 5px;
}

.playerlist {
	border: 1px solid #000;
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

.divhead1 {
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
-->
</style>

	</head>

	<script language="JavaScript">
 
self.moveTo(0,0);
 
self.resizeTo(screen.availWidth,screen.availHeight);
 
</script>

	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		<div>
			<table width="932" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="235" align="right">
						<h3>
							&nbsp;
						</h3>
						<h3>
							汉安无限
						</h3>
					</td>
					<td width="427" align="left">
						<label>
							<br />
							<input name="textfield" type="text" id="textfield" size="50" />
							<input type="submit" name="button" id="button" value="提交" />
						</label>
					</td>
					<td width="109">
						<p>
							&nbsp;
						</p>
						<p>
							<a href="#">注册</a> |
							<a href="#">登陆</a>
						</p>
					</td>
				</tr>
			</table>
		</div>
		<div
			style="position: absolute; left: 185px; top: 120px; height: 90px; width: 970px;">
			<a href=""><img
					src="images/id=PHDsnWD1nHn&amp;gp=403&amp;time=nHnzrHb4n1Tknf.jpg"
					width="960" height="90" />
			</a>
		</div>
	
		<div style="position: relative; margin-left: 190px"
			class="menu_nav clearfix">
			<ul class="nav_content">
				<li id="memu0"><a href="getindexMsg.action" ><span>首页</span></a></li>
			    <li id="memu1"><a href="musicIndex.action" ><span>音乐</span></a></li>
			    <li id="memu2"><a href="movieindexs.action" ><span>电影</span></a></li>
			    <li id="memu3"><a href="tvindexs.action" ><span>电视剧</span></a></li>
			    <li id="memu4"><a href="zongyiindex.action"><span>综艺动漫</span></a></li>
			    <li id="memu5"><a href="games.jsp"  ><span>娱乐游戏</span></a></li>
			    <li id="memu6"><a href="javascript:void(0)" ><span>新业务天地</span></a></li>
			</ul>
		</div>
		<br>
			<span id="lrcdata">
				<!--
[ti:如果还有明天]
[ar:阿信]
[al:]
[by:小文]
[00:26.95]阿信--如果还有明天
[00:40.91]
[00:43.72]我们都有看不开的时候
[00:48.65]总有冷落自已的举动
[00:54.18]但是我一定会提醒自己
[00:58.92]如果还有明天
[01:03.99]我们都有伤心的时候
[01:12.72]总不在乎这种感受
[01:18.16]但是我要把握每次感动
[01:22.70]如果还有明天
[01:29.44]如果还有明天
[01:33.77]你想怎样装扮你的脸
[01:39.20]如果没有明天
[01:44.48]要怎么说再见
[02:17.86]如果你看出我的迟疑
[02:23.55]是不是你也想要问我
[02:29.37]究竟有多少事还没有做
[02:33.77]如果还有明天
[02:41.87]如果真的还能够有明天
[02:48.01]是否能把事情都做完
[02:53.20]是否一切也将云消烟散
[02:59.20]如果没有明天
[03:04.20]如果还有明天
[03:09.59]你想怎样装扮你的脸
[03:15.11]如果没有明天
[03:20.44]要怎么说再见
[03:27.08]如果还有明天
[03:32.31]你想怎样装扮你的脸
[03:38.80]如果没有明天
[03:44.24]要怎么说再见
[03:48.68]如果还有明天
[03:53.78]你想怎样装扮你的脸
[03:59.01]如果没有明天
[04:04.79]要怎么说再见
[04:21.30]1990的秋天 演完最后一场
[04:24.00]生老病死的对话 送来新的希望
[04:26.00]下雨了下雨了 那是你的眼泪吗
[04:28.00]将我淋湿可以吗 让我感受你的痛啊
[04:31.00]笑我吧 不管黑夜是否太傻
[04:34.50]笑我吧 走在边缘只剩挣扎
[04:38.00]笑我吧 哈哈哈哈哈哈哈哈 还有明天
[04:43.00]1990的秋天 演完最后一场
[04:45.30]生老病死的对话 送来新的希望
[04:47.50]下雨了 那是你的眼泪吗
[04:50.20]将我淋湿可以吗 好让我感受你的痛啊
[04:53.00]笑我吧 不管黑夜是否太傻
[04:55.50]笑我吧 走在边缘只剩挣扎
[04:59.00]笑我吧 哈哈哈哈哈哈哈哈 如果还有明天
[05:04.00]是否这生命能够听的到
[05:06.00]希望我们的梦想永远不会被忘掉
[05:09.00]希望有一天 哈 哈 可以再见面
-->
			</span>
			<div
				style="float: left; margin-left: 190px; margin-top: 120px; width: 200px;">
				<img src="images/150c6667d235dec83fab54961130b881.jpg" width="200"
					height="200" />
				<hr>
					<div>
						<p>
							&nbsp;
						</p>
						<p>
							<img src="images/id=PjbLnWfLrj0&gp=403&time=nHnzrHnvrH0zn6.jpg"
								width="200" height="250">
						</p>
					</div>
			</div>

			<div
				style="float: left; margin-left: 20px; margin-top: 120px; width: 500px;">

				<div id="jquery_jplayer"></div>

				<div class="jp-playlist-player">
					<div class="jp-interface">
						<ul class="jp-controls">
							<li>
								<a href="#" id="jplayer_play" class="jp-play" tabindex="1">play</a>
							</li>
							<li>
								<a href="#" id="jplayer_pause" class="jp-pause" tabindex="1">pause</a>
							</li>
							<li>
								<a href="#" id="jplayer_stop" class="jp-stop" tabindex="1">stop</a>
							</li>
							<li>
								<a href="#" id="jplayer_volume_min" class="jp-volume-min"
									tabindex="1">min volume</a>
							</li>
							<li>
								<a href="#" id="jplayer_volume_max" class="jp-volume-max"
									tabindex="1">max volume</a>
							</li>
							<li>
								<a href="#" id="jplayer_previous" class="jp-previous"
									tabindex="1">previous</a>
							</li>
							<li>
								<a href="#" id="jplayer_next" class="jp-next" tabindex="1">next</a>
							</li>
						</ul>
						<div class="jp-progress">
							<div id="jplayer_load_bar" class="jp-load-bar">
								<div id="jplayer_play_bar" class="jp-play-bar"></div>
							</div>
						</div>
						<div id="jplayer_volume_bar" class="jp-volume-bar">
							<div id="jplayer_volume_bar_value" class="jp-volume-bar-value"></div>
						</div>
						<div id="jplayer_play_time" class="jp-play-time"></div>
						<div id="jplayer_total_time" class="jp-total-time"></div>
					</div>
					<div id="jplayer_playlist" class="jp-playlist">
						<ul>
							<!-- The function displayPlayList() uses this unordered list -->
							<li></li>
						</ul>
					</div>
				</div>
			</div>
			<div
				style="float: left; margin-left: 40px; margin-top: 120px; width: 200px;">
				<img
					src="images/id=PjbLnWfLrj0&amp;gp=403&amp;time=nHnzrHnvrH0zn6.jpg"
					width="200" height="200" />
				<div>
					<p>
						&nbsp;
					</p>
					<p>
						<img src="images/id=PjbLnWfLrj0&gp=403&time=nHnzrHnvrH0zn6.jpg"
							width="200" height="250">
					</p>
				</div>
			</div>
			<script language="JavaScript">
 
var lrc0;
 
var lrc1;
 
var min;
 
lrcobj = new lrcClass(lrcdata.innerHTML.slice(4,-3));
 

function lrcClass(tt)
 
{
 
  this.inr = [];
 
  this.min = [];
 

  this.oTime = 0;
 

  this.dts = -1;
 
  this.dte = -1;
 
  this.dlt = -1;
 
  this.ddh;
 
  this.fjh;
 

  lrcbc.style.width = 0;
 

  if(/\[offset\:(\-?\d+)\]/i.test(tt))
 
    this.oTime = RegExp.$1/1000;
 

  tt = tt.replace(/\[\:\][^$\n]*(\n|$)/g,"$1");
 
  tt = tt.replace(/\[[^\[\]\:]*\]/g,"");
 
  tt = tt.replace(/\[[^\[\]]*[^\[\]\d]+[^\[\]]*\:[^\[\]]*\]/g,"");
 
  tt = tt.replace(/\[[^\[\]]*\:[^\[\]]*[^\[\]\d\.]+[^\[\]]*\]/g,"");
 
  tt = tt.replace(/<[^<>]*[^<>\d]+[^<>]*\:[^<>]*>/g,"");
 
  tt = tt.replace(/<[^<>]*\:[^<>]*[^<>\d\.]+[^<>]*>/g,"");
 

  while(/\[[^\[\]]+\:[^\[\]]+\]/.test(tt))
 
  {
 
    tt = tt.replace(/((\[[^\[\]]+\:[^\[\]]+\])+[^\[\r\n]*)[^\[]*/,"\n");
 
    var zzzt = RegExp.$1;
 
    /^(.+\])([^\]]*)$/.exec(zzzt);
 
    var ltxt = RegExp.$2;
 
    var eft = RegExp.$1.slice(1,-1).split("][");
 
    for(var ii=0; ii<eft.length; ii++)
 
    {
 
      var sf = eft[ii].split(":");
 
      var tse = parseInt(sf[0],10) * 60 + parseFloat(sf[1]);
 
      var sso = { t:[] , w:[] , n:ltxt }
 
      sso.t[0] = tse-this.oTime;
 
      this.inr[this.inr.length] = sso;
 
    }
 
  }
 
  this.inr = this.inr.sort( function(a,b){return a.t[0]-b.t[0];} );
 

  for(var ii=0; ii<this.inr.length; ii++)
 
  {
 
    while(/<[^<>]+\:[^<>]+>/.test(this.inr[ii].n))
 
    {
 
      this.inr[ii].n = this.inr[ii].n.replace(/<(\d+)\:([\d\.]+)>/,"%=%");
 
      var tse = parseInt(RegExp.$1,10) * 60 + parseFloat(RegExp.$2);
 
      this.inr[ii].t[this.inr[ii].t.length] = tse-this.oTime;
 
    }
 
    lrcbc.innerHTML = "<font>"+ this.inr[ii].n.replace(/&/g,"&").replace(/</g,"<").replace(/>/g,">").replace(/%=%/g,"</font><font>") +"</font>";
 
    var fall = lrcbc.getElementsByTagName("font");
 
    for(var wi=0; wi<fall.length; wi++)
 
      this.inr[ii].w[this.inr[ii].w.length] = fall[wi].offsetWidth;
 
    this.inr[ii].n = lrcbc.innerText;
 
  }
 

  for(var ii=0; ii<this.inr.length-1; ii++)
 
    this.min[ii] = Math.floor((this.inr[ii+1].t[0]-this.inr[ii].t[0])*10);
 
  this.min.sort(function(a,b){return a-b});
 
  min = this.min[0]/2;
 

  this.run = function(tme)
 
  {
 
    if(tme<this.dts || tme>=this.dte)
 
    {
 
      var ii;
 
      for(ii=this.inr.length-1; ii>=0 && this.inr[ii].t[0]>tme; ii--){}
 
      if(ii<0) return;
 
      this.ddh = this.inr[ii].t;
 
      this.fjh = this.inr[ii].w;
 
      this.dts = this.inr[ii].t[0];
 
      this.dte = (ii<this.inr.length-1)?this.inr[ii+1].t[0]:aboutplayer.currentMedia.duration;
 

      lrcwt1.innerText = this.retxt(ii-7);
 
      lrcwt2.innerText = this.retxt(ii-6);
 
      lrcwt3.innerText = this.retxt(ii-5);
 
      lrcwt4.innerText = this.retxt(ii-4);
 
      lrcwt5.innerText = this.retxt(ii-3);
 
      lrcwt6.innerText = this.retxt(ii-2);
 
      lrcwt7.innerText = this.retxt(ii-1);
 
      lrcfilter.innerText = this.retxt(ii-1);
 
      lrcwt8.innerText = this.retxt(ii+1);
 
      lrcwt9.innerText = this.retxt(ii+2);
 
      lrcwt10.innerText = this.retxt(ii+3);
 
      lrcwt11.innerText = this.retxt(ii+4);
 
      lrcwt12.innerText = this.retxt(ii+5);
 
      lrcwt13.innerText = this.retxt(ii+6);
 
      this.print(this.retxt(ii));
 
      if(this.dlt==ii-1)
 
      {
 
        clearTimeout(lrc0);
 
        if(lrcoll.style.pixelTop!=0) lrcoll.style.top = 0;
 
        golrcoll(0);
 
        clearTimeout(lrc1);
 
        lrcfilter.filters.alpha.opacity = 100;
 
        golrcolor(0);
 
      }
 
      else if(parseInt(lrcoll.style.top)!=-20)
 
      {
 
        clearTimeout(lrc0);
 
        lrcoll.style.top = -20;
 
        clearTimeout(lrc1);
 
        lrcfilter.filters.alpha.opacity = 0;
 
      }
 
      this.dlt = ii;
 
    }
 
    var bbw = 0;
 
    var ki;
 
    for(ki=0; ki<this.ddh.length && this.ddh[ki]<=tme; ki++)
 
      bbw += this.fjh[ki];
 
    var kt = ki-1;
 
    var sc = ((ki<this.ddh.length)?this.ddh[ki]:this.dte) - this.ddh[kt];
 
    var tc = tme - this.ddh[kt];
 
    bbw -= this.fjh[kt] - tc / sc * this.fjh[kt];
 
    if(bbw>lrcbox.offsetWidth)
 
      bbw = lrcbox.offsetWidth;
 
    lrcbc.style.width = Math.round(bbw);
 
  }
 

  this.retxt = function(i)
 
  {
 
    return (i<0 || i>=this.inr.length)?"":this.inr[i].n;
 
  }
 

  this.print = function(txt)
 
  {
 
    lrcbox.innerText = txt;
 
    lrcbc.innerText = txt;
 
  }
 

  this.print("寒川");
 
  lrcwt1.innerText = "";
 
  lrcwt2.innerText = "";
 
  lrcwt3.innerText = "";
 
  lrcwt4.innerText = "";
 
  lrcwt5.innerText = "";
 
  lrcwt6.innerText = "";
 
  lrcwt7.innerText = "";
 
  lrcfilter.innerText = "";
 
  lrcwt8.innerText = "";
 
  lrcwt9.innerText = "";
 
  lrcwt10.innerText = "";
 
  lrcwt11.innerText = "";
 
  lrcwt12.innerText = "";
 
  lrcwt13.innerText = "";
 
}
 

function lrcrun()
 
{
 
  with(aboutplayer)
 
  {
 
    lrcobj.run(controls.currentPosition);
 
  }
 
  if(arguments.length==0) setTimeout("lrcrun()",10);
 
}
 

function golrcoll(s)
 
{
 
  lrcoll.style.top = -(s++)*2;
 
  if(s<=9)
 
    lrc0 = setTimeout("golrcoll("+s+")",min*10);
 
}
 

function golrcolor(t)
 
{
 
  lrcfilter.filters.alpha.opacity = 110-(t++)*10;
 
  if(t<=10)
 
    lrc1 = setTimeout("golrcolor("+t+")",min*10);
 
}
 
window.onerror = function()
 
{return true;}
 
lrcrun();
 
</script>
	</body>
</html>

