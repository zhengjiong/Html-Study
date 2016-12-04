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
    
    <title>My JSP 'zongyi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{font-size:12px;font-family:微软雅黑 !important}
img{border:0px;}
OL LI {
	MARGIN: 8px
}
#con {
	FONT-SIZE: 12px;

	WIDTH: 970px;
	left: -591px;
	top: 600px;
}
#tags {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 10px; WIDTH: 650px; PADDING-TOP: 0px; HEIGHT: 23px;
}
#tags LI {
	BACKGROUND: url(images/tagleft.gif) no-repeat left bottom; FLOAT: left; MARGIN-RIGHT: 1px; LIST-STYLE-TYPE: none; HEIGHT: 23px; width:68px;
}
#tags LI A {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; BACKGROUND: url(images/tagright.gif) no-repeat right bottom; FLOAT: left; PADDING-BOTTOM: 0px; COLOR: #999; LINE-HEIGHT: 23px; PADDING-TOP: 0px; HEIGHT: 23px; TEXT-DECORATION: none
}
#tags LI.emptyTag {
	BACKGROUND: none transparent scroll repeat 0% 0%; WIDTH: 4px
}
#tags LI.selectTag {
	BACKGROUND-POSITION: left top; MARGIN-BOTTOM: -2px; POSITION: relative; HEIGHT: 25px;
}
#tags LI.selectTag A {
	BACKGROUND-POSITION: right top; COLOR: #000; LINE-HEIGHT: 25px; HEIGHT: 25px;
}
#tagst {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 10px; WIDTH: 650px; PADDING-TOP: 0px; HEIGHT: 23px;
}
#tagst LI {
	BACKGROUND: url(images/tagleft.gif) no-repeat left bottom; FLOAT: left; MARGIN-RIGHT: 1px; LIST-STYLE-TYPE: none; HEIGHT: 23px; width:68px;
}
#tagst LI A {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; BACKGROUND: url(images/tagright.gif) no-repeat right bottom; FLOAT: left; PADDING-BOTTOM: 0px; COLOR: #999; LINE-HEIGHT: 23px; PADDING-TOP: 0px; HEIGHT: 23px; TEXT-DECORATION: none
}
#tagst LI.emptyTag {
	BACKGROUND: none transparent scroll repeat 0% 0%; WIDTH: 4px
}
#tagst LI.selectTag {
	BACKGROUND-POSITION: left top; MARGIN-BOTTOM: -2px; POSITION: relative; HEIGHT: 25px;
}
#tagst LI.selectTag A {
	BACKGROUND-POSITION: right top; COLOR: #000; LINE-HEIGHT: 25px; HEIGHT: 25px;
}
#tagsd {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 10px; WIDTH: 650px; PADDING-TOP: 0px; HEIGHT: 23px;
}
#tagsd LI {
	BACKGROUND: url(images/tagleft.gif) no-repeat left bottom; FLOAT: left; MARGIN-RIGHT: 1px; LIST-STYLE-TYPE: none; HEIGHT: 23px; width:68px;
}
#tagsd LI A {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; BACKGROUND: url(images/tagright.gif) no-repeat right bottom; FLOAT: left; PADDING-BOTTOM: 0px; COLOR: #999; LINE-HEIGHT: 23px; PADDING-TOP: 0px; HEIGHT: 23px; TEXT-DECORATION: none
}
#tagsd LI.emptyTag {
	BACKGROUND: none transparent scroll repeat 0% 0%; WIDTH: 4px
}
#tagsd LI.selectTag {
	BACKGROUND-POSITION: left top; MARGIN-BOTTOM: -2px; POSITION: relative; HEIGHT: 25px;
}
#tagsd LI.selectTag A {
	BACKGROUND-POSITION: right top; COLOR: #000; LINE-HEIGHT: 25px; HEIGHT: 25px;
}
#tagContent {
	BORDER-RIGHT: #aecbd4 1px solid; PADDING-RIGHT: 1px; BORDER-TOP: #aecbd4 1px solid; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; BORDER-LEFT: #aecbd4 1px solid; PADDING-TOP: 1px; BORDER-BOTTOM: #aecbd4 1px solid; BACKGROUND-COLOR: #fff; height:230px; width:960px;
}
.tagContent {
	PADDING-RIGHT: 10px; DISPLAY: none; PADDING-LEFT: 10px; BACKGROUND: url(images/bg.gif) repeat-x; PADDING-BOTTOM: 10px; WIDTH: 940px; COLOR: #474747; PADDING-TOP: 10px; HEIGHT: 450px
}
#tagContent DIV.selectTag {
	DISPLAY: block
}

<!--
/*导航*/
body{font:12px Arial,Verdana,Tahoma,"宋体";}
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
    <div style="float:left"><img src="images/zongyiimg/3.jpg"/></div>
    <div style="float:right; width:200px; height:300px;" class="divborde">
    	
        
      <DIV id=con style="width:200px; height:300px;">
    <UL id=tagst>
      <LI class=selectTag><A onClick="selectTagt('tagContentt0',this)" 
      href="javascript:void(0)">综艺推荐</A> </LI>
      <LI><A onClick="selectTagt('tagContentt1',this)" 
      href="javascript:void(0)">动漫推荐</A> </LI>
    
    </UL>
	<DIV id=tagContent style="width:195px; height:270px;">
		<DIV class="tagContent selectTag" style=" width:175px; height:270px;" id=tagContentt0>
			<table width="195" border="0" cellpadding="0" cellspacing="0">
				<s:iterator value="#request.zysuggest" id="MoviesVo" status="status">
  					<tr>
    					<td align="center" style="background:#0C0"><s:property  value="#status.count"/></td>
    					<td><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a></td>
   						<td><s:property value="#MoviesVo.sore"/></td>
 			 		</tr>
 			 	</s:iterator>
			</table>
		</DIV>
		
        <DIV class="tagContent" style=" width:175px; height:270px;" id=tagContentt1>
			<table width="195" border="0" cellpadding="0" cellspacing="0">
				  <s:iterator value="#request.dmsuggest" id="MoviesVo" status="status">
  					<tr>
    					<td align="center" style="background:#0C0"><s:property  value="#status.count"/></td>
    					<td><a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a></td>
   						 <td><s:property value="#MoviesVo.sore"/></td>
 			 		</tr>
 			 	</s:iterator>
</table>
		</DIV>
     </DIV> 
		
	</DIV>  
    </div>
  </div>
  <div id="mainContent">
    <DIV id=con class="divborde">
    <UL id=tags>
      <li  style="background:none; color:#603; font-size:14px; font-weight:500">综艺</li>
      <LI class=selectTag><A onClick="selectTag('tagContent0',this)" 
      href="javascript:void(0)">最新更新</A> </LI>
      <LI><A onClick="selectTag('tagContent1',this)" 
      href="javascript:void(0)">热门点播</A> </LI>
    
    </UL>
	<DIV id=tagContent>
		<DIV class="tagContent selectTag " id=tagContent0>
			<s:iterator value="#request.zyupdate" id="MoviesVo" status="status">
				<div class="cateImg">
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><img  src="<s:property value="#MoviesVo.mainPic"/>" width=120px height=168px /></a><br/>
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
                    <br />
                    	<s:property value="#MoviesVo.roleName"/>
	  			</div>
      		</s:iterator>
		</DIV>
        <DIV class="tagContent" id=tagContent1>
			<s:iterator value="#request.zyPlayNum" id="MoviesVo" status="status">
				<div class="cateImg">
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><img  src="<s:property value="#MoviesVo.mainPic"/>" width=120px height=168px /></a><br/>
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
                    <br />
                    	<s:property value="#MoviesVo.roleName"/>
	  			</div>
      		</s:iterator>
		</DIV>
     </DIV> 
		
	</DIV>
</div>

<div id="mainContent">
    <DIV id=con class="divborde">
    <UL id=tagsd>
      <li  style="background:none; color:#603; font-size:14px; font-weight:500">动漫</li>
      <LI class=selectTag><A onClick="selectTagd('tagContentd0',this)" 
      href="javascript:void(0)">最新更新</A> </LI>
      <LI><A onClick="selectTagd('tagContentd1',this)" 
      href="javascript:void(0)">热门点播</A> </LI>
    
    </UL>
	<DIV id=tagContent>
		<DIV class="tagContent selectTag " id=tagContentd0>
			<s:iterator value="#request.dmupdate" id="MoviesVo" status="status">
				<div class="cateImg">
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><img  src="<s:property value="#MoviesVo.mainPic"/>" width=120px height=168px/></a><br/>
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
                    <br />
                    	<s:property value="#MoviesVo.roleName"/>
	  			</div>
      		</s:iterator>
		</DIV>
        <DIV class="tagContent " id=tagContentd1>
			<s:iterator value="#request.dmPlayNum" id="MoviesVo" status="status">
				<div class="cateImg">
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><img  src="<s:property value="#MoviesVo.mainPic"/>" width=120px height=168px /></a><br/>
                    <a href="player.action?ID=<s:property value="#MoviesVo.ID"/>"><s:property value="#MoviesVo.MovieName"/></a>
                    <br />
                    	<s:property value="#MoviesVo.roleName"/>
	  			</div>
      		</s:iterator>
		</DIV>
     </DIV> 
		
	</DIV>
</div>

  <SCRIPT type=text/javascript>
function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=0; j=document.getElementById("tagContent"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
</SCRIPT>

<SCRIPT type=text/javascript>
function selectTagd(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tagsd").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=0; j=document.getElementById("tagContentd"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
</SCRIPT>
<SCRIPT type=text/javascript>
function selectTagt(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tagst").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=0; j=document.getElementById("tagContentt"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
</SCRIPT>
	
  <div id="footer">
  <jsp:include page="footer.jsp"></jsp:include>
  </div>
</div>

</body>
</html>
