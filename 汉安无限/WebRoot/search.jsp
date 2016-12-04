<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <LINK rel=stylesheet type=text/css 
href="CSS/style.css" media=all/>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/27hp.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript"></script>
<style type="text/css">
.ulImg {
	float: left;
	right: 10px;
	clip: rect(auto,10px,auto,auto);
	padding-right: 10px;
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}
<!--
/*导航*/
body {font-size:11px; margin:0;font-family:微软雅黑 !important}
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}


.menu_navcc{width:970px; margin:0 auto;}
.menu_nav{width:970px;height:53px;background:url(images/nav_bg.gif) repeat-x top;float:left;}
.menu_nav .nav_content{padding-left:4px;background:url(images/nav_l_bg.gif) no-repeat left top;float:left;}
.menu_nav .nav_content li{width:114px;height:53px;padding-left:10px;padding-right:10px;background:url(images/nav_li_right.gif) no-repeat right top;float:left;line-height:53px;text-align:center;font-size:14px;font-weight:bold;}
.menu_nav .nav_content li a{color:#000;width:114px;height:53px;display:block;}
.menu_nav .nav_content li.current{line-height:53px;}


.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover{width:114px;height:53px;background:url(images/nav_li_current.gif) no-repeat bottom;display:block;color:#fff;}
.menu_nav .nav_content li a:hover{background:url(images/nav_li_hover.gif) no-repeat bottom;height:53px;line-height:53px;text-decoration:none;}

.menu_nav_right{padding-right:20px;background:url(images/nav_r_bg.gif) no-repeat right top;float:right;margin-left:50px;padding-top:13px;height:23px;padding-bottom:12px;}
p{
margin-bottom:15px}
.hot {
	float: right;
	position: relative;
}
.divhead a {
	float: right;
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
img{border:0px;}
.divborde {
	border: 2px solid #6CF;
	padding-right: 0px;
	padding-left: 0px;
	margin-right: 5px;
	margin-left: 5px;
}
.divhead1 {	border-top-width: 1px;
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
<body>
<div style="margin-left: 170px;">
<form id="form1" name="form1" method="post" action="toMovieSearch.action">
    <table width="932" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="235" align="right"><h3>&nbsp;</h3>
        <font style="font-family: 方正舒体;font-size: 40px;color:#0052a1;">汉安无限&nbsp;</font></td>
        <td width="400" align="left"><label>
          <br />
          <input name="keyword" type="text" id="textfield" size="50" />
          <input type="submit" name="button" id="button" value="提交" />
        </label></td>
        <td width="109"><p>&nbsp;</p>
        <p><a href="#">注册</a> | <a href="#">登陆</a></p></td>
      </tr>
    </table>
    <p>&nbsp;</p>
</form>
</div>
<div>
  <table width="805" border="0" cellpadding="0" cellspacing="0" align="center">
      <tr>
        <td width="789"><div class="menu_navcc">
        <div class="menu_nav clearfix">
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
        </div></td>
      </tr>
    </table>
  <div style="position:relative">
    <div style="position:absolute; left: 190px; width: 250px;" class="divborde">
      <div class="divhead1">电影检索</div>
      <div style="text-align:left"> 电影
        <ul>
        <li>
  			<a href="toMovieSearch.action?movieCateID=1">华语</a>
        	<a href="toMovieSearch.action?movieCateID=2">美国</a>
        	<a href="toMovieSearch.action?movieCateID=3">韩国</a>
    		<a href="toMovieSearch.action?movieCateID=4">动作</a>
        	<a href="toMovieSearch.action?movieCateID=5">动作</a>
            <a href="toMovieSearch.action?movieCateID=6">爱情</a>
            <a href="toMovieSearch.action?movieCateID=7">喜剧</a>
            <a href="toMovieSearch.action?movieCateID=8">恐怖</a>
            <a href="toMovieSearch.action?movieCateID=9">科幻</a>
            <a href="toMovieSearch.action?movieCateID=10">动画</a>
            <a href="toMovieSearch.action?movieCateID=11">战争</a>
            <a href="toMovieSearch.action?movieCateID=12">文艺</a>
        </li>
        </ul>
        	电视剧
        <ul>
        <li>
  			 <a href="toMovieSearch.action?movieCateID=13">内地</a>
	    	<a href="toMovieSearch.action?movieCateID=14">港台</a>
	    	<a href="toMovieSearch.action?movieCateID=15">日韩</a>
			<a href="toMovieSearch.action?movieCateID=16">欧美</a>
        </li>
        </ul>
       	 综艺
        <ul>
        <li>
  			 <a href="toMovieSearch.action?movieCateID=13">内地</a>
	    	<a href="toMovieSearch.action?movieCateID=14">港台</a>
	    	<a href="toMovieSearch.action?movieCateID=15">日韩</a>
			<a href="toMovieSearch.action?movieCateID=16">欧美</a>
        </li>
        </ul>
         动漫    <ul>
        <li>
  			 <a href="toMovieSearch.action?movieCateID=13">内地</a>
	    	<a href="toMovieSearch.action?movieCateID=14">港台</a>
	    	<a href="toMovieSearch.action?movieCateID=15">日韩</a>
			<a href="toMovieSearch.action?movieCateID=16">欧美</a>
        </li>
        </ul>
      </div>
      <hr />
      <br/>
      <div><div><img src="images/150c6667d235dec83fab54961130b881.jpg" width="250" height="207" /></div><br/>
      <div><img src="images/id=PjbLnWfLrj0&amp;gp=403&amp;time=nHnzrHnvrH0zn6.jpg" width="250" height="250" /></div></div>
      <p>&nbsp;</p>
    </div>
    <div  class="divborde"style="position:absolute; margin-bottom:110px; margin-left:55px; left: 400px; width: 720px;">
      <div class="divhead1">检索结果</div>
      	<s:iterator value="#request.showSearchMovie" id="MoviesVo" status="status">
		      <div class="ulImg"> <a href="player.action?ID=<s:property  value="#MoviesVo.ID"/>"> <img  src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px" alt=""/></a><br/>
		        <a href="player.action?ID=<s:property  value="#MoviesVo.ID"/>"><s:property  value="#MoviesVo.MovieName"/></a> <br />
		        主演：<s:property  value="#MoviesVo.roleName"/>
		      </div>
      	</s:iterator>
      <div align="center">
    <p><a href="#">首页</a><a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a>  </p>
  </div>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
  <div align="center">
   	<hr />
        <jsp:include page="footer.jsp"></jsp:include>
        
        <p>&nbsp;</p>
  </div>
</div>


</body>
  
</html>
