<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
   
<title>汉安无限-电影频道</title>
   
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="汉安无限-电影频道">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/movieindex_.js"></script>
<script type="text/javascript" src="js/tv.js"></script>
<link rel="stylesheet" type="text/css" href="css/movieindex.css"/>
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
			<s:iterator value="#request.hotPlayerTop" id="MoviesVo" status="status">
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
			<s:iterator value="#request.praiseTop" id="MoviesVo" status="status">
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
<div class="tagbox">
	<h2>电影索引</h2>
	<ul class="taglink">
		<li>
			<a href="searchByKey.action?key=">最近更新</a>
		</li>
		<li>
			<a href="searchByKey.action?key=">男性影院</a>
		</li>
		<li>
			<a href="searchByKey.action?key=">欧美大片</a>
		</li>
	</ul>
	<dl class="tagbox_dl_1">
		<dt>类型</dt>
		<s:iterator value="#request.movieCate" id="MoviesCateVo" status="status">
		<dd>
			<a href="searchByKey.action?cateid=<s:property value="#MoviesCateVo.ID"/>"><s:property value="#MoviesCateVo.cateSname"/></a>
		</dd>
		</s:iterator>
	</dl>
	<dl class="tagbox_dl_2">
		<dt>年代</dt>
		<dd>
			<a href="searchByKey.action?key=2012">2012</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2011">2011</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2010">2010</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2009">2009</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2008">2008</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2007">2007</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2006">2006</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2005">2005</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=2004">2004</a>
		</dd>
	</dl>
	<dl class="tagbox_dl_2">
		<dt>地区</dt>
		<dd>
			<a href="searchByKey.action?aresid=1">港台</a>
		</dd>
		<dd>
			<a href="searchByKey.action?aresid=2">大陆</a>
		</dd>
		<dd>
			<a href="searchByKey.action?aresid=3">欧美</a>
		</dd>
		<dd>
			<a href="searchByKey.action?aresid=4">日韩</a>
		</dd>
		
	</dl>
	<dl class="tagbox_dl_3">
		<dt>明星</dt>
		<dd>
			<a href="searchByKey.action?key=张国荣">张国荣</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=汤唯">汤唯</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=舒淇">舒淇</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=周星驰">周星驰</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=甄子丹">甄子丹</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=杨紫琼" charset="utf-8">杨紫琼</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=史泰龙">史泰龙</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=梁朝伟">梁朝伟</a>
		</dd>
		<dd>
			<a href="searchByKey.action?key=">更多</a>
		</dd>
	</dl>
	<%--<dl class="tagbox_dl_4">
		<dt>热门组合</dt>
		<dd>
			<a href="">粤语高清影院</a>
		</dd>
		<dd>
			<a href="">华语重磅大片</a>
		</dd>
		<dd>
			<a href="">男性泡妞宝典</a>
		</dd>
		<dd>
			<a href="">2012欧美大片</a>
		</dd>
		<dd>
			<a href="">泰国重口味片</a>
		</dd>
		<dd>
			<a href="">成龙玩命特技</a>
		</dd>
	</dl>
--%></div>
<div style="width:970px;height:80px;margin:0 auto;margin-top:15px;margin-bottom: 15px;">
	<img width="973" height="80" src="images/yidong.jpg">
</div>
<div class="wrapper">
	<div class="wrapper_left">
		<div class="wrapper_left_box_tt">
			<h2 class="h2_1">明星影院</h2>
			<ul class="wrapper_left_box_tt_ul">
				<li id="Tab_star_0" class="wrapper_left_on">曾志伟</li>
				<li id="Tab_star_1" class="">杨幂</li>
				<li id="Tab_star_2" class="">甄子丹</li>
				<li id="Tab_star_3" class="">郑中基</li>
				<li id="Tab_star_4" class="">古天乐</li>
				<li id="Tab_star_5" class="">刘亦菲</li>
			</ul>
		</div>
		<div class="wrapper_left_content" id="wrapper_left_content_0">
			<div class="wrapper_left_content_topmovie_1">
				<a class="pic" href="javascript:void(0)">
					<img src="http://fs12.cy-inc.com.cn/data5/2008/04/24/190/1209009790873500_file.jpg">
				</a>
				<h3>
					<a href="javascript:void(0)">曾志伟 </a>
					<span>香港影视演员</span>
				</h3>
				<span class="score">
					<em>8</em>
					.8
				</span>
				<ul class="movieinfo">
					<li>生日:1953年4月14日</li>
					<li>身高:165厘米</li>
					<li>地区:香港</li>
					<li>
						最喜欢的运动:
						足球&nbsp;
						高尔夫
					</li>
				</ul>
				<p class="movie_p">
					曾志伟，香港影视演员，在中学毕业后曾任职业足球运动员，后辗转加入电影行业最初担任龙虎武师。
				</p>
			</div>
			<ul class="wrapper_left_content_movielist">
				<s:iterator value="#request.roleMovie1" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
						<img src="<s:property value="#MoviesVo.mainPic"/>">
					</a>
					<h3>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
					</h3>
					<span ><s:property value="#MoviesVo.roleName"/></span>
					<div style="text-align: center;">
						上传者:<s:property value="#MoviesVo.uploadName"/>
					</div>
				</li>
			</s:iterator>
				
			</ul>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_1">
			<div class="wrapper_left_content_topmovie_1">
				<a class="pic" href="javascript:void(0)">
					<img src="http://gb.cri.cn/mmsource/images/2011/10/18/96/17380325606326059008.jpg">
				</a>
				<h3>
					<a href="javascript:void(0)">杨幂</a>
					<span>四小花旦之一</span>
				</h3>
				<span class="score">
					<em>9</em>
					.3
				</span>
				<ul class="movieinfo">
					<li>生日:1986年9月172</li>
					<li>身高:168厘米</li>
					<li>地区:北京</li>
					<li>
						代表作品:
						仙剑奇侠传3 &nbsp;
						宫锁心玉
					</li>
				</ul>
				<p class="movie_p">
					“80后新生代娱乐大明星”评选活动中，杨幂成为内地新“四小花旦”（与黄圣依、王珞丹以及刘亦菲）之一
				</p>
			</div>
			<ul class="wrapper_left_content_movielist">
				<s:iterator value="#request.roleMovie2" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
						<img src="<s:property value="#MoviesVo.mainPic"/>">
					</a>
					<h3>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
					</h3>
					<span ><s:property value="#MoviesVo.roleName"/></span>
					<div style="text-align: center;">
						上传者:<s:property value="#MoviesVo.uploadName"/>
					</div>
				</li>
			  </s:iterator>
			
			</ul>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_2">
			<div class="wrapper_left_content_topmovie_1">
				<a class="pic" href="javascript:void(0)">
					<img src="http://info.zjg.js.cn/uploadfile/201003/20100318131320847.jpg">
				</a>
				<h3>
					<a href="javascript:void(0)">甄子丹</a>
					<span>亚洲最具影响力功夫巨星</span>
				</h3>
				<span class="score">
					<em>9</em>
					.8
				</span>
				<ul class="movieinfo">
					<li>生日:1963年7月27</li>
					<li>身高:175厘米</li>
					<li>地区:广东</li>
					<li>
						代表作品:
						叶文 &nbsp;
						杀破狼
					</li>
				</ul>
				<p class="movie_p">
					与成龙、李连杰同为国际知名的华人武打演员。还担任香港李小龙协会理事、世界明星厨师联合会副主席
				</p>
			</div>
			<ul class="wrapper_left_content_movielist">
				<s:iterator value="#request.roleMovie3" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
						<img src="<s:property value="#MoviesVo.mainPic"/>">
					</a>
					<h3>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
					</h3>
					<span ><s:property value="#MoviesVo.roleName"/></span>
					<div style="text-align: center;">
						上传者:<s:property value="#MoviesVo.uploadName"/>
					</div>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_3">
			<div class="wrapper_left_content_topmovie_1">
				<a class="pic" href="javascript:void(0)">
					<img src="http://www.dasongjiang.com/uploadfile/article/uploadfile/200912/20091225030235677.jpg">
				</a>
				<h3>
					<a href="javascript:void(0)">郑中基</a>
					<span>香港歌手和演员</span>
				</h3>
				<span class="score">
					<em>7</em>
					.9
				</span>
				<ul class="movieinfo">
					<li>生日:1972年3月9</li>
					<li>身高:175厘米</li>
					<li>地区:香港</li>
					<li>
						代表作品:
						<a href="javascript:void;">月光宝盒</a>
						<a href="javascript:void;">绝口不提爱你</a>
					</li>
				</ul>
				<p class="movie_p">
					香港歌手和演员。父亲是金牌大风老板郑东汉，本人也颇有才华，唱功了得，演技也不错，尤其喜剧表演深得人心
				</p>
			</div>
			<ul class="wrapper_left_content_movielist">
				<s:iterator value="#request.roleMovie4" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
						<img src="<s:property value="#MoviesVo.mainPic"/>">
					</a>
					<h3>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
					</h3>
					<span ><s:property value="#MoviesVo.roleName"/></span>
					<div style="text-align: center;">
						上传者:<s:property value="#MoviesVo.uploadName"/>
					</div>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_4">
			<div class="wrapper_left_content_topmovie_1">
				<a class="pic" href="javascript:void(0)">
					<img src="http://www.0731live.com/uploadfile/201102/20110223093745122.jpg">
				</a>
				<h3>
					<a href="javascript:void;">古天乐</a>
					<span>香港以及华人地区著名演员、歌手</span>
				</h3>
				<span class="score">
					<em>8</em>
					.9
				</span>
				<ul class="movieinfo">
					<li>生日:1970年10月21</li>
					<li>身高:180厘米</li>
					<li>地区:香港</li>
					<li>
						主要成就:
						<a href="javascript:void;">两届万千星辉颁奖典礼最佳男主角</a>
					</li>
				</ul>
				<p class="movie_p">
					香港以及华人地区著名演员、歌手，1993年签约无线，后凭《神雕侠侣》演活亦正亦邪的杨过，开始备受注意。
				</p>
			</div>
			<ul class="wrapper_left_content_movielist">
				<s:iterator value="#request.roleMovie5" id="MoviesVo" status="status">
				<li>
					<a class="pic" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
						<img src="<s:property value="#MoviesVo.mainPic"/>">
					</a>
					<h3>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
					</h3>
					<span ><s:property value="#MoviesVo.roleName"/></span>
					<div style="text-align: center;">
						上传者:<s:property value="#MoviesVo.uploadName"/>
					</div>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div class="wrapper_left_content" style="display: none;" id="wrapper_left_content_5">
			<div class="wrapper_left_content_topmovie_1">
				<a class="pic" href="javascript:void(0)">
					<img src="http://www.liufubo.com/images/wallpaper/small/lyf2.jpg">
				</a>
				<h3>
					<a href="javascript:void;">刘亦菲</a>
					<span>中国内地知名女演员、歌手</span>
				</h3>
				<span class="score">
					<em>9</em>
					.3
				</span>
				<ul class="movieinfo">
					<li>生日:1987年8月25</li>
					<li>身高:180厘米</li>
					<li>地区:大陆</li>
					<li>
						代表作品:
						<a href="javascript:void;">神雕侠侣</a>
						<a href="javascript:void;">仙剑奇侠传</a>
					</li>
				</ul>
				<p class="movie_p">
					2011年刘亦菲分别出演《鸿门宴》中的虞姬和《铜雀台》中的灵雎，受到各方高度关注。
				</p>
			</div>
			<ul class="wrapper_left_content_movielist">
				<li>
					<a class="pic" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
						<img src="<s:property value="#MoviesVo.mainPic"/>">
					</a>
					<h3>
						<a target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
					</h3>
					<span ><s:property value="#MoviesVo.roleName"/></span>
					<div style="text-align: center;">
						上传者:<s:property value="#MoviesVo.uploadName"/>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="wrapper_right">
		<div class="wrapper_right_tt">
			<ul>
				<li id="Tab_starbang_0" class="on">演员榜</li>
				<li id="Tab_starbang_1" class="">导演榜</li>
			</ul>
		</div>
		<ul class="wrapper_right_ul" id="wrapper_right_ul_0">
			<li class="wrapper_right_ul_show">
				<a class="wrapper_right_ul_show_pic" href="searchByKey.action?key=成龙">
					<img src="http://images.movie.xunlei.com/gallery/685/edf1f2f5888011edac6b719973a411e1.jpg"/>
				</a>
				<span class="wrapper_right_ul_show_score"><b>9.</b>8</span>
				<p class="wrapper_right_ul_show_name">
					<a href="searchByKey.action?key=成龙">成龙</a>
				</p>
				<em>01</em>
				<p class="wrapper_right_ul_show_p">功夫之王</p>
				<p class="wrapper_right_ul_show_p">中国香港</p>
				<p class="wrapper_right_ul_show_p">100部影片</p>
			</li>
			<li class="wrapper_right_ul_top">
				<em>02</em>
				<a href="searchByKey.action?key=梁朝伟">梁朝伟</a>孤独影帝
				<span>9.7</span>
			</li>
			<li class="wrapper_right_ul_top">
				<em>03</em>
				<a href="searchByKey.action?key=周星驰">周星驰</a>喜剧之王
				<span>9.5</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>04</em>
				<a href="searchByKey.action?key=周迅">周迅</a>
				<span>8.6</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>05</em>
				<a href="searchByKey.action?key=葛优">葛优</a>
				<span>8.5</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>06</em>
				<a href="searchByKey.action?key=舒淇">舒淇</a>
				<span>7.8</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>07</em>
				<a href="searchByKey.action?key=李连杰">李连杰</a>
				<span>7.8</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>08</em>
				<a href="searchByKey.action?key=甄子丹">甄子丹</a>
				<span>7.7</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>09</em>
				<a href="searchByKey.action?key=张柏芝">张柏芝</a>
				<span>7.5</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>10</em>
				<a href="searchByKey.action?key=刘亦菲">刘亦菲</a>
				<span>6.9</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>11</em>
				<a href="searchByKey.action?key=李冰冰">李冰冰</a>
				<span>6.9</span>
			</li>
			<li class="wrapper_right_ul_normal">
				<em>12</em>
				<a href="searchByKey.action?key=徐静蕾">徐静蕾</a>
				<span>6.8</span>
			</li>
		</ul>
		<ul class="wrapper_right_ul" id="wrapper_right_ul_1" style="display: none;">
			<li class="wrapper_right_ul_show">
				<a class="wrapper_right_ul_show_pic" href="">
					<img src="http://images.movie.xunlei.com/gallery/672/644abc018d118a3a119051107decc2a0.jpg"/>
				</a>
				<span class="wrapper_right_ul_show_score"><b>9.</b>4</span>
				<p class="wrapper_right_ul_show_name">
					<a href="">杜琪峰</a>
				</p>
				<em>01</em>
				<p class="wrapper_right_ul_show_p">警匪片领军人物</p>
				<p class="wrapper_right_ul_show_p">中国香港</p>
				<p class="wrapper_right_ul_show_p">47部影片</p>
			</li>
			<s:iterator value="#request.directorsTop" id="MoviesVo" status="status">
				<s:if test="%{#status.count == 1}"></s:if>
				<s:elseif test="%{#status.count >= 2 && #status.count <=3}">
					<li class="wrapper_right_ul_top">
					<em><s:property value="#status.count"/></em>
					<a href="searchByKey.action?key=<s:property value="#MoviesVo.directors"/>"><s:property value="#MoviesVo.directors"/></a>
					<span>9.1</span>
				</li>
				</s:elseif>
				<s:else>
				<li class="wrapper_right_ul_normal">
					<em><s:property value="#status.count"/></em>
					<a href="searchByKey.action?key=<s:property value="#MoviesVo.directors"/>"><s:property value="#MoviesVo.directors"/></a>
					<span>9.1</span>
				</li>
				</s:else>
			</s:iterator>
		</ul>
	</div>
</div>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>热门推荐</h2>
			<a href="searchByKey.action?key=">更多&gt;</a>
		</div>
		<ul class="animelist">
		<s:iterator value="#request.hotMovies" id="MoviesVo" status="status">
			<li>
				<a class="pic" title="<s:property value="#MoviesVo.movieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
					<img title="<s:property value="#MoviesVo.movieName"/>" src="<s:property value="#MoviesVo.mainPic"/>">
				</a>
				<p>
					<a title="<s:property value="#MoviesVo.movieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.movieName"/></a>
				</p>
				<p>
					<s:property value="#MoviesVo.roleName"/>
				</p>
				<p>
					上传者:<s:property value="#MoviesVo.uploadName"/>
				</p>
			</li>
		</s:iterator>
			
			
		</ul>
	</div>
</div>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2 style="color:#c10f06;">最新大片</h2>
			<a href="searchByKey.action?key=">更多&gt;</a>
		</div>
		<ul class="animelist">
		<s:iterator value="#request.newMovies" id="MoviesVo" status="status">
			<li>
				<a class="pic" title="<s:property value="#MoviesVo.movieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>">
					<img title="<s:property value="#MoviesVo.movieName"/>" src="<s:property value="#MoviesVo.mainPic"/>">
				</a>
				<p>
					<a title="<s:property value="#MoviesVo.movieName"/>" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.movieName"/></a>
				</p>
				<p>
					<s:property value="#MoviesVo.roleName"/>
				</p>
				<p>
					上传者:<s:property value="#MoviesVo.uploadName"/>
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
