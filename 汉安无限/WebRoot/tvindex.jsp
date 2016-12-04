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
    
    <title>My JSP 'tvindex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link href="css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<style type="text/css">
<!--
/*导航*/
*{padding:0px;margin:0px;}
img{border:0px;}
#hotplayer ul li {
	float: left;
	margin-right: 3px;
}
#tvcate ul li {
	width: 180px;
	margin-left: 25px;
	margin-top: 5px;
}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}
body {font-size:11px; margin:0;font-family:微软雅黑 !important}

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
  <div  style="height:350px; margin-bottom:5px;">
  	<div class="flash" align="center">
  	<div id="flash">
    <script type="text/javascript">
        if (!lib.ipad) {
            var _param = [];
            _param.push('xml_url=js/tv.xml');
            lib.kit.video.render(
                    'width', 970,
                    'height', 350,
                    'src', 'js/tv.swf',
                    'wmode', 'Opaque',
                    'id', 'qiyi_player',
                    'bgcolor', '#000000',
                    'hint', true,
                    'flashVars', _param.join('&'),
                    'wrapper', 'flash'
                    ); //end AC code
        }
    </script>
</div>
  </div>
  </div>
  <div id="mainContent">
    <div class="divborde" id="tvcate">
      <div class="divhead">日韩剧场</div>
      <ul>
      	<li><img src="images/27387e22693888f229bdd5a3d006b4fd.jpg"  /></li>
      	
      </ul>
     	<s:iterator value="#request.hanrilist" id="MoviesVo" status="status">
	 	 	<ul>
	 	 		<li>
	 	 			<a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
	 	 		</li>
	 	 	</ul>
       </s:iterator>
     
      
    </div>
    
    <div class="divborde" id="tvcate">
      <div class="divhead">港台剧场</div>
      <ul>
      	<li><img src="images/ec200eede0e831792c0897d28c1bebf0.jpg" alt=""  /></li>
      </ul>
      <s:iterator value="#request.gangtailist" id="MoviesVo" status="status">
	 	 	<ul>
	 	 		<li>
	 	 			<a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
	 	 		</li>
	 	 	</ul>
       </s:iterator>
    </div>
    <div class="divborde" id="tvcate">
      <div class="divhead">欧美剧场</div>
      <ul>
      	<li><img src="images/bc674c6ec5a168354bba135c628dde79.jpg" alt=""  /></li>
      </ul>
     	 <s:iterator value="#request.oumeilist" id="MoviesVo" status="status">
	 	 	<ul>
	 	 		<li>
	 	 			<a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
	 	 		</li>
	 	 	</ul>
       </s:iterator>
    </div>
    <div  class="divborde" id="tvcate">
      <div class="divhead">大陆剧场</div>
      <ul>
      	<li><img src="images/c1e1391add5f2372f82bf329b116f285.jpg" alt=""  /></li>
      </ul>
     	<s:iterator value="#request.dalulist" id="MoviesVo" status="status">
	 	 	<ul>
	 	 		<li>
	 	 			<a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
	 	 		</li>
	 	 	</ul>
       </s:iterator>
    </div>
    <div style="float:right; width:200px; height:240px;">
      <div class="divhead">电视剧检索</div>
      <div>按地区<br />
      <ul>
            <a href="toMovieSearch.action?movieCateID=13">内地</a>
	    	<a href="toMovieSearch.action?movieCateID=14">港台</a>
	    	<a href="toMovieSearch.action?movieCateID=15">日韩</a>
			<a href="toMovieSearch.action?movieCateID=16">欧美</a>

        </ul>


    </div>

      <div><img src="images/11111111111.jpg" width="200px" height="40" /></div>

      <div>
        <div><img src="images/111.png" width="200px" height="40" /></div>
      </div>
      <div>
        <div><img src="images/111.png" width="200px" height="40" /></div>
      </div>
    </div>
  </div>
  
  <div id="cateContent">
    <div style="height:260px; width:760px; float:left">
      <div class="divhead">热播剧场</div>
      	<s:iterator value="#request.hotPlaylist" id="MoviesVo" status="status">
    		<div class="cateImg">
        	  <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><img src="<s:property value="#MoviesVo.mainPic"/>" width=120px height=168px/></a><br/>
              <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
          		<br />
         		<s:property value="#MoviesVo.roleName"/>
			</div>
		</s:iterator>
    </div>
    <div class="divborde" style=" float:right; width:200px; height:260px;">
      <div class="divhead">风云榜</div>
      <div id="hotplayer" style=" width:200px;height:60px;">
      		<ul>
            	<li style="width:20px; background:#090">1</li>
                <li><a href="player.action?ID=<s:property value="moviesFYTop.ID"/>"><img src="<s:property value="moviesFYTop.mainPic"/>" width="70" height="50" /></a></li>
                <li style="height:50px;" ><a href="player.action?ID=<s:property value="moviesFYTop.ID"/>"><s:property value="moviesFYTop.MovieName"/></a><br />
                	区域：<s:property value="moviesFYTop.areaName"/><br />
                	主演：<s:property value="moviesFYTop.roleName"/>
                </li>
            </ul>
      </div>
      <s:iterator value="#request.movieslistfy" id="MoviesVo" status="status">
      	<div id="hotplayer" style="width:200px; height:20px;" >
      		<ul>
            	<li style="width:20px; background:#090"><s:property  value="#status.count+1"/></li>
                <li><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property  value="#MoviesVo.MovieName"/></a></li>
                <li style="float:right"><s:property  value="#MoviesVo.sore"/></li>
            </ul>
     	 </div>
     </s:iterator>
     	
    </div>
  </div>
  <div id="cateContent">
    <div style="height:240px; width:760px; float:left">
      <div class="divhead">最近更新</div>
      	<s:iterator value="#request.updateTimelist" id="MoviesVo" status="status">
    		<div class="cateImg">
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><img  src="<s:property value="#MoviesVo.mainPic"/>" width=120px height=168px/></a><br/>
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
                    <br />
          			<s:property value="#MoviesVo.roleName"/>
			</div>
     	</s:iterator>
    </div>
    <div class="divborde" style=" float:right; width:200px; height:260px;">
      <div class="divhead">关注榜</div>
      <div id="hotplayer" style=" width:200px;height:60px;">
      		<ul>
            	<li style="width:20px; background:#090">1</li>
                <li><a href="player.action?ID=<s:property value="moviesGZTop.ID"/>"><img src="<s:property value="moviesGZTop.mainPic"/>" width="70" height="50" /></a></li>
                <li style="height:50px;" ><a href="player.action?ID=<s:property value="moviesGZTop.ID"/>"><s:property value="moviesFYTop.MovieName"/></a> <br />
                	区域：<s:property value="moviesFYTop.areaName"/><br />
                	主演：<s:property value="moviesFYTop.roleName"/>
                </li>
                
            </ul>
            
      </div>
     <s:iterator value="#request.movieslistgz" id="MoviesVo" status="status">
	      <div id="hotplayer" style="width:200px; height:20px;" >
	      		<ul>
	            	<li style="width:20px; background:#090"><s:property  value="#status.count+1"/></li>
	                <li><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"> <s:property  value="#MoviesVo.MovieName"/></a></li>
					<li style="float:right"><s:property  value="#MoviesVo.sore"/> </li>
	            </ul>
	      </div>
      </s:iterator>
    </div>
  </div>
  <div id="footer">
  	<jsp:include page="footer.jsp"></jsp:include>
  </div>
</div>
</body>
</html>
  
