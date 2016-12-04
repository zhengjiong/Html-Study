<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<script type="text/javascript" src="ckplayer/ckplayer.js" charset="utf-8"></script>
		<script type="text/javascript" src="js/player.js"></script>
		<script type="text/javascript">
			
			var urlflv=new Array();
			urlflv[1]='http://localhost/data1/test/蓝精灵-MP4/蓝精灵_1.mp4';
			urlflv[2]='http://localhost/data1/test/蓝精灵-MP4/蓝精灵_2.mp4';
			var i=1;
			function playerstop(){
				var s1=new swfupload();
				s1.ckplayer_url='ckplayer/ckplayer.swf';//播放器文件名
				s1.ckplayer_flv=urlflv[i];//视频地址
				s1.ckplayer_loadimg='http://www.ckplayer.com/images/loadimg3.jpg';//初始图片地址
				s1.ckplayer_pauseflash='';//暂停时播放的广告，只支持flash和图片
				s1.ckplayer_pauseurl='';//暂停时播放图片时需要加一个链接
				s1.ckplayer_loadadv='';//视频开始前播放的广告，可以是flash,也可是视频格式
				s1.ckplayer_loadurl='';//视频开始前广告的链接地址，主要针对视频广告，如果是flash可以不填写
				s1.ckplayer_loadtime=0;//视频开始前广告播放的秒数,只针对flash或图片有效
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
		</script>
	</head>

	<body>
	<div class="player" id="player5"></div>
		<script type="text/javascript" charset="gb2312">
  				playerstop();
  </script>
	</body>
</html>
