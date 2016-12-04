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
    
    <title>汉安无限-搜索频道</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="汉安无限-搜索频道">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/moviesearch.js"></script>
<script language="javascript" src="js/moviedown.js"></script>
<link rel="stylesheet" type="text/css" href="css/moviesearch.css"/>
<style type="text/css">
    .hideDlg
    {
        height:129px;width:368px;
        display:none;
    }
    .showDlg
    {
        background-color:#fff;
        border:1px solid #dddddd;
        height:129px;width:368px;
        position: absolute; 
        display:block;
        z-index:5;
    }
    
    .hideDeck 
    {
        display:none;
    }
</style>


</head>
  
<body onresize="adjustLocation();">
<s:include value="head_2.jsp"></s:include>
<div class="navigation">
	当前位置：<a href="index_.jsp">首页 </a>
	&gt; 列表
</div>
<div class="page">
	<div class="page_left">
		<div class="box_tt">
			<h2>分类索引</h2>
		</div>
		<div class="box_con">
			<ul class="submenu">
				<li><a id="submenu_1" title="电影" href="searchByKey.action?bid=1">电影</a></li>
				<li><a id="submenu_2" title="电视剧" href="searchByKey.action?bid=2">电视剧</a></li>
				<li><a id="submenu_4" title="综艺" href="searchByKey.action?bid=4">综艺</a></li>
				<li><a id="submenu_3" title="动漫" href="searchByKey.action?bid=3">动漫</a></li>
			</ul>
		</div>
		<div class="page_left_AD">
			<img width="250" height="250" src="images/baoban_.png">
		</div>
		<div class="box_tt" style="margin-top: 10px;border-top:1px solid #DDDDDD;">
			<h2>最新热播榜</h2>
		</div>
		<div class="box_con" style="border-right:1px solid #DDDDDD;width:249px;">
			<div class="tabbox">
				<a id="Tab_rebo_0" class="on">电影</a>
				<a id="Tab_rebo_1" class="">电视剧</a>
				<a id="Tab_rebo_2" class="">综艺</a>
				<a id="Tab_rebo_3" class="">动漫</a>
			</div>
		</div>
		<div id="list_rebo_0" style="overflow: hidden;">
			<ul class="list_rebo_con">
			<s:iterator value="#request.hotPlayerTop1" id="MoviesVo" status="status">
				<li>
					<em class="emtop"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" title="<s:property value="#MoviesVo.movieName"/>" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.movieName"/></a>
					</p>
					<span class="score">7.8</span>
					<a class="info" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"></a>
				</li>
			</s:iterator>
				
			</ul>
		</div>
		<div id="list_rebo_1" style="overflow: hidden;display: none;">
			<ul class="list_rebo_con">
				<s:iterator value="#request.hotPlayerTop2" id="MoviesVo" status="status">
				<li>
					<em class="emtop"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" title="<s:property value="#MoviesVo.movieName"/>" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.movieName"/></a>
					</p>
					<span class="score">7.8</span>
					<a class="info" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"></a>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div id="list_rebo_2" style="overflow: hidden;display: none;">
			<ul class="list_rebo_con">
				<s:iterator value="#request.hotPlayerTop4" id="MoviesVo" status="status">
				<li>
					<em class="emtop"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" title="<s:property value="#MoviesVo.movieName"/>" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.movieName"/></a>
					</p>
					<span class="score">7.8</span>
					<a class="info" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"></a>
				</li>
			</s:iterator>
			</ul>
		</div>
		<div id="list_rebo_3" style="overflow: hidden;display: none;">
			<ul class="list_rebo_con">
				<s:iterator value="#request.hotPlayerTop3" id="MoviesVo" status="status">
				<li>
					<em class="emtop"><s:property value="#status.count"/></em>
					<p>
						<a target="_blank" title="<s:property value="#MoviesVo.movieName"/>" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.movieName"/></a>
					</p>
					<span class="score">7.8</span>
					<a class="info" target="_blank" href="player.action?ID=<s:property value="#MoviesVo.ID"/>"></a>
				</li>
			</s:iterator>
			</ul>
		</div>
		<%--
		<div class="page_left_AD">
			<embed width="250" height="192" wmode="transparent" menu="true" loop="true" play="true" type="application/x-shockwave-flash" src="http://image.stfile.com/5/27/527403e383605bcf085e2333689599bb.swf">
		</div>
		--%>
	</div>
	
	<!-- page right -->
	<div class="page_right">
		<div id="right_box_1" class="right_box">
			<div class="right_box_tt">
				<h2>电影索引</h2>
			</div>
			<div id="right_box_con_0" class="right_box_con">
				<div class="right_box_con_tt">检索条件：</div>
				<div class="right_box_con_main">
					<dl class="right_box_con_taglist">
						<dt>按地区</dt>
						<dd>
							<a href="searchByKey.action?bid=1" name="area_0" id="movie_area_0">全部</a>
							<a href="searchByKey.action?aresid=1" name="area_1" id="movie_area_1">港台</a>
							<a href="searchByKey.action?aresid=2" name="area_2" id="movie_area_2">大陆</a>						
							<a href="searchByKey.action?aresid=3" name="area_3" id="movie_area_3">欧美</a>						
							<a href="searchByKey.action?aresid=4" name="area_4" id="movie_area_4">日韩</a>
						</dd>
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按年份</dt>
						<dd>
							<a href="searchByKey.action?bid=1" name="year_all" id="movie_year_all">全部</a>
							<a href="searchByKey.action?key=2012&bid=1" name="year_2012" id="movie_year_2012">2012</a>
							<a href="searchByKey.action?key=2011&bid=1" name="year_2011" id="movie_year_2011">2011</a>
							<a href="searchByKey.action?key=2010&bid=1" name="year_2010" id="movie_year_2010">2010</a>
							<a href="searchByKey.action?key=2009&bid=1" name="year_2009" id="movie_year_2009">2009</a>
							<a href="searchByKey.action?key=2008&bid=1" name="year_2008" id="movie_year_2008">2008</a>
							<a href="searchByKey.action?key=2007&bid=1" name="year_2007" id="movie_year_2007">2007</a>
							<a href="searchByKey.action?key=2006&bid=1" name="year_2006" id="movie_year_2006">2006</a>
							<a href="searchByKey.action?key=2005&bid=1" name="year_2005" id="movie_year_2005">2005</a>
							<a href="searchByKey.action?key=2004&bid=1" name="year_2004" id="movie_year_2004">2004</a>
							<a href="searchByKey.action?key=2003&bid=1" name="year_2003" id="movie_year_2003">2003</a>
							<a href="searchByKey.action?key=2002&bid=1" name="year_2002" id="movie_year_2002">2002</a>
							<a href="searchByKey.action?key=2001&bid=1" name="year_2001" id="movie_year_2001">2001</a>
							<a href="searchByKey.action?key=2000&bid=1" name="year_2000" id="movie_year_2000">2000</a>
							<a href="searchByKey.action?key=1999&bid=1" name="year_1999" id="movie_year_1999">1999</a>
						</dd>
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按分类</dt>
						<dd>
							<!-- 
							<a href="searchByCateID.action?cateid=1&bid=1">华语</a>
							<a href="searchByCateID.action?cateid=2&bid=1">美国</a>
							<a href="searchByCateID.action?cateid=3&bid=1">韩国</a>
							<a href="searchByCateID.action?cateid=4&bid=1">经典</a>
							 -->
							<a href="searchByKey.action?bid=1" id="cateid_all">全部</a>
							<a href="searchByKey.action?cateid=24&bid=1" id="cateid_24">魔幻</a>
							<a href="searchByKey.action?cateid=5&bid=1" id="cateid_5">动作</a>
							<a href="searchByKey.action?cateid=6&bid=1" id="cateid_6">爱情</a>
							<a href="searchByKey.action?cateid=7&bid=1" id="cateid_7">喜剧</a>
							<a href="searchByKey.action?cateid=8&bid=1" id="cateid_8">恐怖</a>
							<a href="searchByKey.action?cateid=9&bid=1" id="cateid_9">科幻</a>
							<a href="searchByKey.action?cateid=10&bid=1" id="cateid_10">动画</a>
							<a href="searchByKey.action?cateid=11&bid=1" id="cateid_11">战争</a>
							<a href="searchByKey.action?cateid=12&bid=1" id="cateid_12">文艺</a>
							<a href="searchByKey.action?cateid=25&bid=1" id="cateid_25">其他</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div id="right_box_2" class="right_box">
			<div class="right_box_tt">
				<h2>电视剧索引</h2>
			</div>
			<div id="right_box_con_0" class="right_box_con">
				<div class="right_box_con_tt">检索条件：</div>
				<div class="right_box_con_main">
					<dl class="right_box_con_taglist">
						<dt>按地区</dt>
						<dd>
							<a href="searchByKey.action?bid=2" name="area_0">全部</a>
							<a href="searchByKey.action?aresid=1&bid=2" name="area_1">港台</a>		
							<a href="searchByKey.action?aresid=2&bid=2" name="area_2">大陆</a>
							<a href="searchByKey.action?aresid=3&bid=2" name="area_3">欧美</a>
							<a href="searchByKey.action?aresid=4&bid=2" name="area_4">日韩</a>
						</dd>
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按年份</dt>
						<dd>
							<a href="searchByKey.action?bid=2" name="year_all">全部</a>
							<a href="searchByKey.action?key=2012&bid=2" name="year_2012">2012</a>
							<a href="searchByKey.action?key=2011&bid=2" name="year_2011">2011</a>
							<a href="searchByKey.action?key=2010&bid=2" name="year_2010">2010</a>
							<a href="searchByKey.action?key=2009&bid=2" name="year_2009">2009</a>
							<a href="searchByKey.action?key=2008&bid=2" name="year_2008">2008</a>
							<a href="searchByKey.action?key=2007&bid=2" name="year_2007">2007</a>
							<a href="searchByKey.action?key=2006&bid=2" name="year_2006">2006</a>
							<a href="searchByKey.action?key=2005&bid=2" name="year_2005">2005</a>
							<a href="searchByKey.action?key=2004&bid=2" name="year_2004">2004</a>
							<a href="searchByKey.action?key=2003&bid=2" name="year_2003">2003</a>
							<a href="searchByKey.action?key=2002&bid=2" name="year_2002">2002</a>
							<a href="searchByKey.action?key=2001&bid=2" name="year_2001">2001</a>
							<a href="searchByKey.action?key=2000&bid=2" name="year_2000">2000</a>
							<a href="searchByKey.action?key=1999&bid=2" name="year_1999">1999</a>
						</dd>
					</dl>
					<!-- 
					<dl class="right_box_con_taglist">
						<dt>按分类</dt>
						<dd>
							<a href="searchByCateID.action?cateid=13&bid=2">内地</a>
							<a href="searchByCateID.action?cateid=14&bid=2">港台</a>
							<a href="searchByCateID.action?cateid=15&bid=2">日韩</a>
							<a href="searchByCateID.action?cateid=16&bid=2">欧美</a>
							
						</dd>
					</dl>
					 -->
				</div>
			</div>
		</div>
		<div id="right_box_4" class="right_box">
			<div class="right_box_tt">
				<h2>综艺索引</h2>
			</div>
			<div id="right_box_con_0" class="right_box_con">
				<div class="right_box_con_tt">检索条件：</div>
				<div class="right_box_con_main">
					<dl class="right_box_con_taglist">
						
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按地区</dt>
						<dd>
							<a href="searchByKey.action?bid=4" name="area_0">全部</a>
							<a href="searchByKey.action?aresid=1&bid=4" name="area_1">港台</a>		
							<a href="searchByKey.action?aresid=2&bid=4" name="area_2">大陆</a>
						</dd>
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按年份</dt>
						<dd>
							<a href="searchByKey.action?bid=4" name="year_all">全部</a>
							<a href="searchByKey.action?key=2012&bid=4" name="year_2012">2012</a>
							<a href="searchByKey.action?key=2011&bid=4" name="year_2011">2011</a>
							<a href="searchByKey.action?key=2010&bid=4" name="year_2010">2010</a>
							<a href="searchByKey.action?key=2009&bid=4" name="year_2009">2009</a>
							<a href="searchByKey.action?key=2008&bid=4" name="year_2008">2008</a>
							<a href="searchByKey.action?key=2007&bid=4" name="year_2007">2007</a>
							<a href="searchByKey.action?key=2006&bid=4" name="year_2006">2006</a>
							<a href="searchByKey.action?key=2005&bid=4" name="year_2005">2005</a>
							<a href="searchByKey.action?key=2004&bid=4" name="year_2004">2004</a>
							<a href="searchByKey.action?key=2003&bid=4" name="year_2003">2003</a>
							<a href="searchByKey.action?key=2002&bid=4" name="year_2002">2002</a>
							<a href="searchByKey.action?key=2001&bid=4" name="year_2001">2001</a>
							<a href="searchByKey.action?key=2000&bid=4" name="year_2000">2000</a>
							<a href="searchByKey.action?key=1999&bid=4" name="year_1999">1999</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div id="right_box_3" class="right_box">
			<div class="right_box_tt">
				<h2>动漫索引</h2>
			</div>
			<div id="right_box_con_0" class="right_box_con">
				<div class="right_box_con_tt">检索条件：</div>
				<div class="right_box_con_main">
					<dl class="right_box_con_taglist">
						
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按地区</dt>
						<dd>
							<a href="searchByKey.action?bid=3" name="area_0">全部</a>
							<a href="searchByKey.action?aresid=1&bid=3" name="area_1">港台</a>		
							<a href="searchByKey.action?aresid=2&bid=3" name="area_2">大陆</a>
							<a href="searchByKey.action?aresid=4&bid=3" name="area_4">日韩</a>
						</dd>
					</dl>
					<dl class="right_box_con_taglist">
						<dt>按年份</dt>
						<dd>
							<a href="searchByKey.action?bid=4" name="year_all">全部</a>
							<a href="searchByKey.action?key=2012&bid=3" name="year_2012">2012</a>
							<a href="searchByKey.action?key=2011&bid=3" name="year_2011">2011</a>
							<a href="searchByKey.action?key=2010&bid=3" name="year_2010">2010</a>
							<a href="searchByKey.action?key=2009&bid=3" name="year_2009">2009</a>
							<a href="searchByKey.action?key=2008&bid=3" name="year_2008">2008</a>
							<a href="searchByKey.action?key=2007&bid=3" name="year_2007">2007</a>
							<a href="searchByKey.action?key=2006&bid=3" name="year_2006">2006</a>
							<a href="searchByKey.action?key=2005&bid=3" name="year_2005">2005</a>
							<a href="searchByKey.action?key=2004&bid=3" name="year_2004">2004</a>
							<a href="searchByKey.action?key=2003&bid=3" name="year_2003">2003</a>
							<a href="searchByKey.action?key=2002&bid=3" name="year_2002">2002</a>
							<a href="searchByKey.action?key=2001&bid=3" name="year_2001">2001</a>
							<a href="searchByKey.action?key=2000&bid=3" name="year_2000">2000</a>
							<a href="searchByKey.action?key=1999&bid=3" name="year_1999">1999</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div class="right_movielist">
			<div class="right_movielist_tt">
				<strong>搜索列表</strong>
			</div>
			<div class="right_movielist_con">
				<ul class="right_movielist_ul">
				<s:subset source="#session.searchMovies" start="#session.startNum" count="12" >
					<s:iterator id="MoviesVo">
					<li>
						<a class="pic" target="_blank" href="player.action?ID=<s:property value='#MoviesVo.ID'/>">
							<img class="searchImg"  src="<s:property value="#MoviesVo.mainPic"/>" />
						</a>
						<p class="title">
							<a class="title_left" target="_blank" href="player.action?ID=<s:property value='#MoviesVo.ID'/>"><s:property value="#MoviesVo.MovieName"/></a>
							<a class="play" target="_blank" href="player.action?ID=<s:property value='#MoviesVo.ID'/>" target="_blank" title="播放"></a>
						</p>
						<p class="content"><s:property value="#MoviesVo.roleName"/></p>
						<p class="evaluate">
							评价:
							<strong>
								<s:property value="#MoviesVo.sore"/>
								<span>.0</span>
							</strong>
						</p>
						<p class="content">
							上传者:<s:property value="#MoviesVo.uploadName"/>
						</p>
						<div class="operbox">
							<a href="player.action?ID=<s:property value='#MoviesVo.ID'/>" target="_blank" class="on">播放</a>
							<a href="javascript:void(0)" id="downList" onclick="showDlg(<s:property value='#MoviesVo.ID'/>);">收藏</a>
							<!-- 
							<a href="" target="_blank">收藏</a>
							 -->
							 
						</div>
					</li>
					</s:iterator>
				</s:subset>
				</ul>
			</div>
			<div class="dividepage">
				<a class="next_page" href="showByPageNum.action?nextPage=-1" id="page_-1" title="上一页">上一页</a>
					<s:iterator value="#session.pageCount" id="count" status="status">
						<s:if test="%{#count == #session.page}">
							<a id="page_<s:property value='#count'/>" class="page_num_on" href="showByPageNum.action?page=<s:property value='#count'/>" title="<s:property value='#count'/>"><s:property value='#count'/></a>
						</s:if>
						<s:elseif test="%{#count == '...'}">
							<s:property value='#count'/>
						</s:elseif>
						<s:else>
							<a id="page_<s:property value='#count'/>" class="page_num" href="showByPageNum.action?page=<s:property value='#count'/>" title="<s:property value='#count'/>"><s:property value='#count'/></a>
						</s:else>
					</s:iterator>
				<a id="page_0" class="next_page" href="showByPageNum.action?nextPage=1" title="下一页">下一页</a>
			</div>
		</div>
	</div>
</div>
<div id="divBox" class="hideDlg" style="overFlow:auto" >
<a href="javascript:void(0)" onclick="cancel();" >关闭</a>

</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
<script src="http://s16.cnzz.com/stat.php?id=4427800&web_id=4427800&show=pic" language="JavaScript"></script>
</body>
</html>
