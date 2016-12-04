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
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
#con {
	FONT-SIZE: 12px;

	WIDTH: 760px;
	left: -591px;
	top: 600px;
}
#tags {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 10px; WIDTH: 650px; PADDING-TOP: 0px; HEIGHT: 23px;
}
#tags LI {
	BACKGROUND: url(images/tagleft.gif) no-repeat left bottom; FLOAT: left; MARGIN-RIGHT: 1px; LIST-STYLE-TYPE: none; HEIGHT: 23px; width:68px;
}
#users ul li {
	float: left;
	width: 140px;
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
#tagContent {
	BORDER-RIGHT: #aecbd4 1px solid; PADDING-RIGHT: 1px; BORDER-TOP: #aecbd4 1px solid; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; BORDER-LEFT: #aecbd4 1px solid; PADDING-TOP: 1px; BORDER-BOTTOM: #aecbd4 1px solid; BACKGROUND-COLOR: #fff
}
.tagContent {
	PADDING-RIGHT: 10px; DISPLAY: none; PADDING-LEFT: 10px; BACKGROUND: url(images/bg.gif) repeat-x; PADDING-BOTTOM: 10px; WIDTH: 730px; COLOR: #474747; PADDING-TOP: 10px; HEIGHT: 300px
}
#tagContent DIV.selectTag {
	DISPLAY: block
}

<!--
/*导航*/
*{font-family:微软雅黑 !important}
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


</style>
	
  </head>
  <body>
<div id="container">
  <div id="header">
  		<jsp:include page="head.jsp"></jsp:include>
  </div>
  <div style="height:400px; margin-bottom:5px;">
    <div style="float:left; width:200px; height:400px;">
      <div class="divhead">个人资料</div>
      <table>
      	<tr>
      		<td width="100px">用户名</td>
      		<td width="100px"><s:property value="uservo.username"/></td>
      	</tr>
      	<tr>
      		<td width="100px">年龄</td>
      		<td width="100px"><s:property value="uservo.age"/></td>
      	</tr>
      	<tr>
      		<td width="100px">性别</td>
      		<td width="100px"><s:property value="uservo.sex"/></td>
      	</tr>
      	<tr>
      		<td width="100px">邮箱</td>
      		<td width="100px"><s:property value="uservo.usermail"/></td>
      	</tr>
      	<tr>
      		<td width="100px">爱好</td>
      		<td width="100px"><s:property value="uservo.hobbys"/></td>
      	</tr>
      </table>
    </div>
    <div style=" width:760px; float:right; height:360px;">

<DIV id=con>
<UL id=tags>
  <LI class=selectTag><A onClick="selectTag('tagContent0',this)" 
  href="javascript:void(0)">查找好友</A> </LI>
  <LI><A onClick="selectTag('tagContent1',this)" 
  href="javascript:void(0)">查看留言</A> </LI>
  <LI><A onClick="selectTag('tagContent2',this)" 
  href="javascript:void(0)">我的关注</A> </LI>
</UL>
	<DIV id=tagContent>
		<DIV class="tagContent selectTag" id=tagContent0>
        <div>
          <form id="form1" name="findFriends" method="post" action="findFriend.action" onsubmit="return checkForm();">
          性别：<select name="friendSex" id="friendSex">
            <option value="1">男</option>
            <option value="0">女</option>          
          </select>
          年龄：<input name="minage" type="text" size="5" id="minage"/>~<input name="maxage" type="text" size="5" id="maxage"/>
          <label>
            <input type="submit" name="button3" id="button3" value="提交" />
          </label>
          </form>
        </div>
		<div id="users" style="height:20px;">
  			<ul>
              <li>用户名</li>
              <li>性别</li>
              <li>年龄</li>
              <li>爱好</li>
              <li>给他/她留言</li>
            </ul>
           </div>
           
          <s:iterator value="#request.suggestFriends" id="UserVo" status="status">
           <div id="users" style="height:20px;">
            <ul>
              <li><s:property  value="#UserVo.username"/></li>
              <li><s:property  value="#UserVo.sex"/></li>
              <li><s:property  value="#UserVo.age"/></li>
              <li><s:property  value="#UserVo.hobbys"/></li>
              <li><a href="javascript:void(0)" onclick="sendmsg('send<s:property value="#status.count"/>')">留言</a></li>
            </ul>
           </div>
          <div id="send<s:property value="#status.count"/>" style="height:20px; display:none;">
          <form action="leavers.action" method="post">
          		<input name="leavesWord" type="text"  width="500px"/>
          		<input type="hidden" name="FriendID" value="<s:property  value="#UserVo.ID"/>"/>
          		<input type="submit" name="button2" id="button2" value="发送" onclick="nonesendmsg('send<s:property value="#status.count"/>')" />
          </form>
          </div>
         </s:iterator>
         
           <div style="height:20px; margin-top:200px; text-align:center">
            <a href="#">首页</a>
           	<a href="#">上页</a>
            <a href="#">下页</a>
            <a href="#">末页</a>
           </div>
          <div id="send1" style="height:20px; display:none;">
          <form action="" method="get">
          	<input type="text" size="80" maxlength="500"  width="500px"/>
          	<input type="submit" name="button2" id="button2" value="发送"onclick="nonesendmsg('send1')" />
          </form>
          </div>
        </DIV>
        
		<DIV class="tagContent" id=tagContent1>
			<s:iterator value="#request.leavelist" id="LeavesVo" status="status">
				<div>
	            	<s:property  value="#LeavesVo.username"/>给我留言>> <s:property  value="#LeavesVo.msgs"/>
	                <a href="javascript:void(0)" onclick="sendmsg('sms1')">回复</a>
	            </div>
	            <div id="sms1" style="height:20px; display:none;">
	          <form action="answersleaves.action" method="post">
	          		<input type="text" size="80" maxlength="500"  width="500px" name="answerMsg"/>
	          		<input type="hidden" name="leavesID" value="<s:property  value="#LeavesVo.ID"/>"/>
	          		<input type="submit" name="button2" id="button2" value="发送"onclick="nonesendmsg('sms1')" />
	          		
	          </form>
	          </div>
          	</s:iterator>
          <div style="height:20px; margin-top:200px; text-align:center">
            <a href="#">首页</a>
           	<a href="#">上页</a>
            <a href="#">下页</a>
            <a href="#">末页</a>
           </div>
		</DIV>
		<DIV class="tagContent" id=tagContent2>
        <div id="users" style="height:20px;">
            <ul>
              <li>片名<br /><br /></li>
              <li>主演<br /><br /></li>
              <li>导演<br /><br /></li>
              <li>地区<br /><br /></li>
              <li><br /><br /></li>
            </ul>
           </div>
        <s:iterator value="#request.movieForGZ" id="MoviesVo" status="status">
		  <div id="users" style="height:20px;">
            <ul>
              <li><s:property  value="#MoviesVo.MovieName"/><br /><br /></li>
              <li><br /><br /></li>
              <li><s:property  value="#MoviesVo.roleName"/><br /><br /></li>
              <li><s:property  value="#MoviesVo.directors"/><br /><br /></li>
              <li><s:property  value="#MoviesVo.roareaNameleName"/><br /><br /></li>
              <li><a href="">播放</a><br /><br /></li>
            </ul>
           </div>
         </s:iterator> 
           <div style="height:20px; margin-top:200px; text-align:center">
            <a href="#">首页</a>
           	<a href="#">上页</a>
            <a href="#">下页</a>
            <a href="#">末页</a>
           </div>
		</DIV>
	</DIV>
</DIV>
<p>
  <SCRIPT type=text/javascript>
function sendmsg(id){
	document.getElementById(id).style.display = "block";
}
function nonesendmsg(id){
	document.getElementById(id).style.display = "none";
}
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

function checkForm()
	{
		if(checkUsername())
		{
			return true;
		}
	}
	function checkUsername()
	{
		if(document.getElementById("friendSex").value==null||document.getElementById("friendSex").value==""){
			alert("请选择性别");
			return false; 
		}
		if(document.getElementById("minage").value==null||document.getElementById("minage").value==""){
			alert("请输入年龄范围");
			return false;
		}
		if(document.getElementById("maxage").value==null||document.getElementById("maxage").value==""){
			alert("请输入年龄范围");
			return false;
		}
		if(document.getElementById("minage").value>document.getElementById("maxage").value){
			alert("请输入正确的查找范围");
			return false;
		}
		else{
		return true;
		}
	}

</SCRIPT>
</div>
    </div>
    
   <div id="mainContent">
   		
   </div>

  <div id="footer">
  	<jsp:include page="footer.jsp"></jsp:include>
  </div>
</div>
</body>
</html>

