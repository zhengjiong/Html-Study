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
    
<title>汉安无限-电视剧</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/teleplay.js"></script>
<link rel="stylesheet" type="text/css" href="css/teleplay.css"/>

</head>
<body>
<s:include value="head.jsp"></s:include>
<div class="foucebox">
	<div class="foucebox_con">
		<div class="scrollimg2">
			<div id="SwitchBigPic">
				<div id="showDiv_0" class="scrollimg2_bigimg" style="display: block; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711"  href="">
							<img class="switchImg" id="bigpic_0" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/cae1f65b3980361a70e6186d14a9636d.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_1" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" title="SBS2012年首部时装偶像剧《时尚王》首播收视飘红 少女时代Yuri携手人气美男刘亚仁演绎励志爱情(更新至07集)" href="">
							<img class="switchImg" id="bigpic_0" title="" onload="loadNext()" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/16/5f8d41eb1355096ade9c45b457116b77.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_2" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711"  href="">
							<img id="bigpic_0" class="switchImg" onload="loadNext()" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/11/72e68106cd9f0d70906a87c2ecaabd77.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_3" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" title="《绝对达令》汪东城携手韩版“杉菜”具惠善接棒《华丽的挑战》 汪东城几近全裸出演机器人男友！(更新至01集)" href="http://data.movie.xunlei.com/movie/65504">
							<img id="bigpic_3" class="switchImg" title="《绝对达令》汪东城携手韩版“杉菜”具惠善接棒《华丽的挑战》 汪东城几近全裸出演机器人男友！(更新至01集)" alt="《绝对达令》汪东城携手韩版“杉菜”具惠善接棒《华丽的挑战》 汪东城几近全裸出演机器人男友！(更新至01集)" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/12/02dc494fdd193d6a26d31a12b2328e3a.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_4" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a rel="external nofollow" blockid="3711" title="不是高帅富 一样能耍酷！京东手机节，你敢上，我敢降！" href="">
							<img id="bigpic_4" class="switchImg" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/77eb9ff11279d41d223f79d36b56462b.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_5" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="http://data.movie.xunlei.com/movie/64259">
							<img id="bigpic_5" class="switchImg" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/16/cacf3abac7fd090ed659811f037bd6ac.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_6" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
					<a blockid="3711" href="http://kankan.xunlei.com/vod/mp4/61/61512.shtml">
						<img id="bigpic_6" class="switchImg" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/0773851b4a048b15d816736b84bdcf70.jpg">
					</a>
					</div>
				</div>
				<div id="showDiv_7" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="http://data.movie.xunlei.com/movie/60463">
							<img id="bigpic_7" class="switchImg" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/11/7e6fc627ee18c25d8d2dd56a5d2b99db.jpg">
						</a>
					</div>
				</div>
				<div id="showDiv_8" class="scrollimg2_bigimg" style="display: none; position: absolute; left: 0pt; top: 0pt; overflow: hidden;">
					<div>
						<a blockid="3711" href="http://data.movie.xunlei.com/movie/60055">
							<img id="bigpic_8" class="switchImg" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/10/fccfe1ddfc5bdb1c2c6a5daaf383129e.jpg">
						</a>
					</div>
				</div>
			</div>
			<div class="scrollimg2_tigger">
				<div id="bigHover" class="scrollimg2_tigger_hoverbg"></div>
				<ul>
					<li id="scrollimg2_tigger_0">
						<a href="">
						<img id="big_pic_nav_on_0" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/12/beb94a62102de976799cfad83d3b9ba7.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_1">
						<a href="">
						<img id="big_pic_nav_on_1" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/6fc29a80119051f73c010b820540c81b.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_2">
						<a href="http://kankan.xunlei.com/vod/mp4/64/64244.shtml">
						<img id="big_pic_nav_on_2" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/cebdc9514de3366a395d427a7235a89c.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_3">
						<a blockid="3711" href="http://data.movie.xunlei.com/movie/65504">
						<img id="big_pic_nav_on_3" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/6608bb491110d1f797ee782a9ff400fc.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_4">
						<a rel="external nofollow"  href="">
						<img id="big_pic_nav_on_4" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/06/6c4db502ee8fc56ee1abbab4cd86778f.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_5">
						<a blockid="3711" href="http://data.movie.xunlei.com/movie/64259">
						<img id="big_pic_nav_on_5" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/8112ce8f2966da44ef56cb96d7a3e37d.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_6">
						<a blockid="3711"  href="http://kankan.xunlei.com/vod/mp4/61/61512.shtml">
						<img id="big_pic_nav_on_6" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/17/637044efa2ae61bc5db60627bac763c3.jpg">
						</a>
					</li>
					<li id="scrollimg2_tigger_7">
						<a blockid="3711" href="http://data.movie.xunlei.com/movie/60463">
						<img id="big_pic_nav_on_7" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/425ed3e17df56095ffac311a6a042e7b.jpg">
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="foucerank">
			<ul class="tabbox">
				<li id="Tab_rebo_0" >热播榜</li>
				<li id="Tab_rebo_1" class="on1">经典榜</li>
			</ul>
			<div style="overflow: hidden;height:260px;">
				<ul id="tabbox_ul_0">
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">甄嬛传</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">AA制生活</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">海贼王</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
				</ul>
				<ul id="tabbox_ul_1" style="display: none;">
					<li>
						<font class="tabbox_ul_0_top">01</font>
						<span class="tabbox_ul_0_content">
							<a target="_blank" href="">海贼王2</a>
							<strong style="color:#5f5f5f;">更新至30集</strong>
						</span>
						<span class="tabbox_ul_0_content_score">6.0</span>
					</li>
				</ul>
			</div>
			<div style="width:225px;height:60px;padding-left:10px;padding-top:10px;">
				添加电影最新消息
			</div>
		</div>
	</div>
</div>






















<dl class="toptag">
	<dt>热门索引:</dt>
	<dd>
		<a title="内地" href="">内地</a>
		<a title="香港" href="">香港</a>
		<a title="台湾" href="">台湾</a>
		<a title="韩剧" href="">韩剧</a>
		<a title="古装" href="">古装</a>
		<a title="都市言情" href="">都市言情</a>
		<a title="军事战争" href="">军事战争</a>
	</dd>
</dl>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>热门推荐</h2>
			<a href="">更多&gt;</a>
		</div>
		<ul class="animelist">
			<li>
				<a class="pic" title="名侦探柯南" href="">
					<img title="名侦探柯南" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/cebdc9514de3366a395d427a7235a89c.jpg">
				</a>
				<p>
					<a title="名侦探柯南" href="">名侦探柯南</a>
				</p>
				<p>
					个子变小依然聪明
				</p>
			</li>
			<li>
				<a class="pic" title="海贼王" href="">
					<img title="海贼王" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/06/6c4db502ee8fc56ee1abbab4cd86778f.jpg">
				</a>
				<p>
					<a title="海贼王" href="">海贼王</a>
				</p>
				<p>
					热血王者动画NO.1
				</p>
			</li>
			<li>
				<a class="pic" title="火影忍者" href="">
					<img title="火影忍者" src="http://img2.kankan.xunlei.com/gallery2/block/2012/03/26/ecdb0562bdbaff618db6ebb77b7a6d57.jpg">
				</a>
				<p>
					<a title="火影忍者" href="">火影忍者</a>
				</p>
				<p>
					火影忍者剧场版第六弹
				</p>
			</li>
			<li>
				<a class="pic" title="名侦探柯南" href="">
					<img title="名侦探柯南" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/cebdc9514de3366a395d427a7235a89c.jpg">
				</a>
				<p>
					<a title="名侦探柯南" href="">名侦探柯南</a>
				</p>
				<p>
					个子变小依然聪明
				</p>
			</li>
			<li>
				<a class="pic" title="海贼王" href="">
					<img title="海贼王" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/06/6c4db502ee8fc56ee1abbab4cd86778f.jpg">
				</a>
				<p>
					<a title="海贼王" href="">海贼王</a>
				</p>
				<p>
					热血王者动画NO.1
				</p>
			</li>
			<li>
				<a class="pic" title="火影忍者" href="">
					<img title="火影忍者" src="http://img2.kankan.xunlei.com/gallery2/block/2012/03/26/ecdb0562bdbaff618db6ebb77b7a6d57.jpg">
				</a>
				<p>
					<a title="火影忍者" href="">火影忍者</a>
				</p>
				<p>
					火影忍者剧场版第六弹
				</p>
			</li>
			<li>
				<a class="pic" title="名侦探柯南" href="">
					<img title="名侦探柯南" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/cebdc9514de3366a395d427a7235a89c.jpg">
				</a>
				<p>
					<a title="名侦探柯南" href="">名侦探柯南</a>
				</p>
				<p>
					个子变小依然聪明
				</p>
			</li>
			<li>
				<a class="pic" title="海贼王" href="">
					<img title="海贼王" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/06/6c4db502ee8fc56ee1abbab4cd86778f.jpg">
				</a>
				<p>
					<a title="海贼王" href="">海贼王</a>
				</p>
				<p>
					热血王者动画NO.1
				</p>
			</li>
			<li>
				<a class="pic" title="火影忍者" href="">
					<img title="火影忍者" src="http://img2.kankan.xunlei.com/gallery2/block/2012/03/26/ecdb0562bdbaff618db6ebb77b7a6d57.jpg">
				</a>
				<p>
					<a title="火影忍者" href="">火影忍者</a>
				</p>
				<p>
					火影忍者剧场版第六弹
				</p>
			</li>
			<li>
				<a class="pic" title="名侦探柯南" href="">
					<img title="名侦探柯南" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/18/cebdc9514de3366a395d427a7235a89c.jpg">
				</a>
				<p>
					<a title="名侦探柯南" href="">名侦探柯南</a>
				</p>
				<p>
					个子变小依然聪明
				</p>
			</li>
			<li>
				<a class="pic" title="海贼王" href="">
					<img title="海贼王" src="http://img2.kankan.xunlei.com/gallery2/block/2012/04/06/6c4db502ee8fc56ee1abbab4cd86778f.jpg">
				</a>
				<p>
					<a title="海贼王" href="">海贼王</a>
				</p>
				<p>
					热血王者动画NO.1
				</p>
			</li>
			<li>
				<a class="pic" title="火影忍者" href="">
					<img title="火影忍者" src="http://img2.kankan.xunlei.com/gallery2/block/2012/03/26/ecdb0562bdbaff618db6ebb77b7a6d57.jpg">
				</a>
				<p>
					<a title="火影忍者" href="">火影忍者</a>
				</p>
				<p>
					火影忍者剧场版第六弹
				</p>
			</li>
		</ul>
	</div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
</body>
</html>
