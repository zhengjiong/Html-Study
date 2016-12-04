<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
  
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/index_movie.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/index.js"></script>

<script language="javascript">
function tabChange(obj,id)
{
 var arrayli = obj.parentNode.getElementsByTagName("li"); //获取li数组
 var arrayul = document.getElementById(id).getElementsByTagName("ul"); //获取ul数组
 for(i=0;i<arrayul.length;i++)
 {
  if(obj==arrayli[i])
  {
   arrayli[i].className = "cli";
   arrayul[i].className = "";
  }
  else
  {
   arrayli[i].className = "";
   arrayul[i].className = "hidden";
  }
 }
}
</script>
<style type="text/css">
.tabbox {width:360px;height:250px;}
.tabmenu {width:360px;height:28px;border-left:1px solid  #CCC;border-top:1px solid #ccc;}
.tabmenu ul {margin:0;padding:0;list-style-type: none;}
.tabmenu li { text-align:center; float:left; display:block; width:115px; height:27px; overflow:hidden; background-color: #D2E8F7; line-height:27px; border-right:#ccc 1px solid; border-bottom:#ccc 1px solid; display:inline; font-size:12px;}
.tabmenu .cli {text-align:center;float:left;display:block;width:115px;height:27px;overflow:hidden;background-color: #fff;line-height:27px;border-right:#ccc 1px solid;border-bottom:#fff 1px solid;display:inline;font-size:12px; cursor:pointer;}
#tabcontent {width:350px;background-color:#fff;border-left:#CCC 1px solid;border-right:#CCC 1px solid;border-bottom:#CCC 1px solid;}
#tabcontent ul {margin:0;padding:5px;list-style-type: none;}
#tabcontent .hidden {display:none;}
</style>
<style type="text/css">
<!--
/*导航*/
#newMovie ul li {
	float: left;
}
body {font-size:12px; margin:0;font-family:微软雅黑 !important}
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}


.menu_navcc{width:960px; margin:0 auto;}
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
.divborde {
	border: 1px solid #09F;
	padding-right: 0px;
	padding-left: 0px;
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
.cateImg {
	border: 1px solid #6FF;
	height: 200px;
	width: 140px;
	float: left;
	margin-right: 10px;
	margin-top: 10px;
	text-align: center;
}
-->

</style>
</head>
<body>
<div id="container">
  <div id="header">
  	<jsp:include page="head.jsp"></jsp:include>
  </div>
  <div id="mainContent">
  	<div style="float:left; width:600px;">
    	<div class="foucebox">
  <div class="scrollimg">
   <div id="SwitchBigPic">
   
     <div class="scrollimg_div">
	<a  href="player.action?ID=195" class="scrollimg_img" ><img src="images/movieindeximg/1.jpg" name="bigpic_0" width="600px" id="bigpic_0"/>
	<h3><a  href="player.action?ID=195" class="scrollimg_txt" >白蛇传说</a></h3>
	<div class="bg"></div>
     </div>
	 
    <div class="scrollimg_div">
    <a  href="player.action?ID=152" class="scrollimg_img" ><img id="bigpic_1" width="600px" src="images/movieindeximg/2.jpg" />
      <h3><a  href="player.action?ID=152" class="scrollimg_txt" >那些年我们一起追的女孩</a></h3>
	<div class="bg"></div>
    </div>
	
   <div class="scrollimg_div">
	<a  href="player.action?ID=1" class="scrollimg_img" ><img id="bigpic_2" width="600px" src="images/movieindeximg/3.jpg" />
	<h3><a  href="player.action?ID=1" class="scrollimg_txt" >阿波罗18号</a></h3>
	<div class="bg"></div>
   </div>
   
   <div class="scrollimg_div">
	<a  href="player.action?ID=8" class="scrollimg_img" ><img id="bigpic_3" width="600px" src="images/movieindeximg/4.jpg" />
	<h3><a  href="player.action?ID=8" class="scrollimg_txt" >地球上最后一个人</a></h3>
	<div class="bg"></div>
   </div>
   
    <div class="scrollimg_div">
	<a  href="player.action?ID=150" class="scrollimg_img" ><img id="bigpic_4" width="600px" src="images/movieindeximg/5.jpg" />
	<h3><a  href="player.action?ID=150"  class="scrollimg_txt" >青春失乐园</a></h3>
	<div class="bg"></div>
   </div>
   
   <div class="scrollimg_div">
	<a  href="player.action?ID=36" class="scrollimg_img" ><img id="bigpic_5" width="600px" src="images/movieindeximg/6.jpg" />
	<h3><a  href="player.action?ID=36" class="scrollimg_txt" >深海之战</a></h3>
	<div class="bg"></div>
   </div>
   
   <div class="scrollimg_div">
	<a  href="player.action?ID=154" class="scrollimg_img" ><img id="bigpic_6" width="600px" src="images/movieindeximg/7.jpg" />
	<h3><a  href="player.action?ID=154" class="scrollimg_txt" >午夜巴黎</a></h3>
	<div class="bg"></div>
   </div>
   
<script>
var ScrollBigPic = ['01.jpg','02.jpg','03.jpg','04.jpg','05.jpg','06.jpg','07.jpg'
] ;
</script>

   </div>
    <div class="scrollimg_tigger">
				<a id="big_pic_nav_0" href="player.action?ID=195" target="_self" title="" class="on">1</a>
				<a id="big_pic_nav_1" href="javascript://" target="_self" title="">2</a>
				<a id="big_pic_nav_2" href="javascript://" target="_self" title="">3</a>
				<a id="big_pic_nav_3" href="javascript://" target="_self" title="">4</a>
				<a id="big_pic_nav_4" href="javascript://" target="_self" title="">5</a>
				<a id="big_pic_nav_5" href="javascript://" target="_self" title="">6</a>
				<a id="big_pic_nav_6" href="javascript://" target="_self" title="">7</a>
	  </div>
  </div>
<script>
var MovieRecom={					
				bigpic:"SwitchBigPic",	//大图DIV之ID通用部分
				step:600,
				smallpic:"big_pic_nav",//小图之ID通用部分
				selectstyle:"currA",	//小图被选中之后的CSS
				pictxt:"",	//配套图片文字
				totalcount:7,				//图片数量
				autotimeintval:5000,
				objname:"MovieRecom"	//对象名称
			};
BigNews.init(MovieRecom);
</script>
</div>
    </div>
      <div style="float:right; width:360px;">
   		<div class="tabbox">
  <div class="tabmenu">
   <ul>
    <li onmouseover="tabChange(this,'tabcontent')" class="cli">新片预告</li>
    <li onmouseover="tabChange(this,'tabcontent')">院线热映</li>
    <li onmouseover="tabChange(this,'tabcontent')">人气关注</li>
   </ul>
  </div>
  <div id="tabcontent">
   <ul name="tabul">
    <li>
    <table width="350" border="0" cellpadding="0" cellspacing="5">
  		 <s:iterator value="#request.prevueList" id="MoviesVo" status="status">
    			<tr>
    				<td width="100px"><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a></td>
    				<td><a href="toMovieSearch.action?keyword=<s:property value="#MoviesVo.roleName"/>&page=0"><s:property value="#MoviesVo.roleName"/></a></td>
    				</tr>
    	</s:iterator>
	</table>

   </ul>
   <ul class="hidden">
    <table width="350" border="0" cellpadding="0" cellspacing="5">
  		 <s:iterator value="#request.hotCinemasList" id="MoviesVo" status="status">
    			<tr>
    				<td width="100px"><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a></td>
    				<td><a href=""><s:property value="#MoviesVo.roleName"/></a></td>
    				</tr>
    	</s:iterator>
	</table>
   </ul>
   <ul class="hidden">
    <table width="350" border="0" cellpadding="0" cellspacing="5">
 		 <s:iterator value="#request.topConcernsList" id="MoviesVo" status="status">
    			<tr>
    				<td width="100px"><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a></td>
    				<td><a href=""><s:property value="#MoviesVo.roleName"/></a></td>
    				</tr>
    	</s:iterator>
	</table>
   </ul>
  </div>
 </div>
      </div>
  </div>
  <div id="mainContent">
    <div style="float:left; width:200px; height:240px;">
<div  class="divborde">
          <div class="divhead">电影检索</div>
          <div style="text-align:left">
            类型
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
          </div>
          <div style="text-align:left">
           
          </div>
          
  <p>&nbsp;</p></div>
    </div>
    <div style="float:right; width:200px; height:240px;">
      <div class="divhead">最新电影</div>
      <s:iterator value="#request.newMoviesList" id="MoviesVo" status="status">
	      <div id="newMovie" style="width:200px; height:20px;">
	      	<ul>
	        	<li style="background:#09F; width:20px; text-align:center"><font style="color: white;"><s:property value="#status.count"/></font></li>
	            <li style="width:100px; margin-left:10px;"><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a></li>
	            <li style="float:right"><s:property  value="#MoviesVo.sore"/></li>
	        </ul>
	      </div>
	     </s:iterator>
    </div>
    
    <div  style="margin:0 205px !important; margin:0 202px; height:240px;">
      <div class="divhead">热门推荐</div>
      <div>
      		 <s:iterator value="#request.hotSuggestList" id="MoviesVo" status="status">
	      		<div class="cateImg">
	              <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><img  src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px" alt=""/></a><a href=""></a><br/>
	              <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a><br />
	                    <s:property  value="#MoviesVo.roleName"/>
		  		</div>
            </s:iterator>
            
      </div>
    </div>
    <div style="width:970px; height:200px;"><img src="images/4555.jpg" width="970" height="50" /></div>
  </div>
  <div class="divborde" id="cateContent">
  	<div class="divborde" style="float:left; width:760px;">
  	  <div class="divhead">喜剧</div>
          <s:iterator value="#request.moviesComedy" id="MoviesVo" status="status">
	          <div class="cateImg">
	                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><img  src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px" alt=""/></a><a href=""></a><br/>
	                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
	                    <br />
	                    <s:property  value="#MoviesVo.roleName"/>
		 	 </div>
     </s:iterator>
     
  	</div>
    <div class="divborde" style="float:right; width:200px;">
      <div class="divhead">TOP10 </div>
      	<s:iterator value="#request.moviesComedyList" id="MoviesVo" status="status">
	          <div id="newMovie" style="width:200px; height:20px;">
	      		<ul>
		        	<li style="background:#09F; width:20px; text-align:center"><font style="color: white;"><s:property value="#status.count"/></font></li>
		            <li style="width:100px; margin-left:10px;"><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a></li>
		            <li style="float:right"><s:property  value="#MoviesVo.sore"/></li>
	       		 </ul>
	     	 </div>
     </s:iterator>
    </div>
  </div>
  <div class="divborde" id="cateContent">
  	<div class="divborde" style="float:left; width:760px;">
  	  <div class="divhead">科幻</div>
          <s:iterator value="#request.sciencelist" id="MoviesVo" status="status">
     		 <div class="cateImg">
                <a href="player.action?ID=<s:property  value="#MoviesVo.ID"/>&movieNum=1"><img  src="<s:property  value="#MoviesVo.mainPic"/>" width="120px" height="168px" alt=""/></a><br/>
                    <a href="player.action?ID=<s:property  value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a>
                    <br />
        			<s:property  value="#MoviesVo.roleName"/>
			</div>
          </s:iterator>
  	</div>
    <div class="divborde" style="float:right; width:200px;">
      <div class="divhead">TOP10 </div>
      	<s:iterator value="#request.scienceLists" id="MoviesVo" status="status">
          <div id="newMovie" style="width:200px; height:20px;">
      		<ul>
	        	<li style="background:#09F; width:20px; text-align:center"><font style="color: white;"><s:property value="#status.count"/></font></li>
	            <li style="width:100px; margin-left:10px;"><a href="player.action?ID=<s:property  value="#MoviesVo.ID"/>&movieNum=1"><s:property  value="#MoviesVo.MovieName"/></a></li>
	            <li style="float:right"><s:property  value="#MoviesVo.sore"/></li>
        	</ul>
     	 </div>
    </s:iterator>  
     
    
    </div>
  </div>
  <br/>
  <hr style=" width::970px;" />
  <div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>
</div>
</body>
</html>

