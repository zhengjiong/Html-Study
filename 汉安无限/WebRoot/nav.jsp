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
    
    <title>汉安无限-导航</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="汉安无限-导航">
	<link rel="stylesheet" type="text/css" href="css/nav.css">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" >$(function(){for(var i=0;i<16;i++){$("#top_nav_"+i).attr("class","");}$("#top_nav_1").addClass("on");});</script>
  </head>
<body>
<s:include value="head_2.jsp"></s:include>
<div class="wrapper">
	<div class="hot">
		<div class="hot_tt">
			<h2>网址导航</h2>
			<a href="getindexMsg.action">更多&gt;</a>
		</div>
		<div class="animelist">
			<span>[小说]</span>
			<a title="起点中文网" href="http://www.qidian.com">起点中文网</a>
			<a title="红袖言情" href="http://www.hongxiu.com/">红袖言情</a>
			<a title="TXT小说网" href="http://www.txtbbs.com/">TXT小说网</a>
			<a title="妖屋小说" href="http://www.15.net/">妖屋小说</a>
			<a title="潇湘言情小说" href="http://www.xxsy.net/">潇湘言情小说</a>
			<a title="看书小说网" href="http://www.kanshu.com/">看书小说网</a>
			<a title="看书小说网" href="http://book.sina.com.cn">新浪读书 </a>
			<a title="看书小说网" href="http://www.3gsc.com.cn">3G书城 </a>
		</div>
		<div class="animelist">
			<span >[视频]</span>
			<a title="PPTV视频" href="http://www.pptv.com/">PPTV视频</a>
			<a title="PPS电影" href="http://www.pps.tv/">PPS电影</a>
			<a title="新华视频" href="http://www.news.cn/video/index.htm">新华视频</a>
			<a title="优酷" href="http://www.youku.com">新华视频</a>
			<a title="新华视频" href="http://www.tudou.com">新华视频</a>
			<a title="新华视频" href="http://www.letv.com">乐视网</a>
			<a title="新华视频" href="http://www.ku6.com">酷6网 </a>
		</div>
		<div class="animelist">
			<span >[音乐]</span>
			<a title="酷狗音乐 " href="http://www.kugou.com">酷狗音乐</a>
			<a title="一听音乐网" href="http://www.1ting.com">一听音乐网</a>
			<a title="九酷音乐网 " href="http://www.9ku.com">九酷音乐网</a>
			<a title="音悦台MV" href="http://www.yinyuetai.com">音悦台MV</a>
			<a title="虾米音乐网 " href="http://www.xiami.com">虾米音乐网</a>
		</div>
		<div class="animelist">
			<span >[游戏]</span>
			<a title="游乐" href="http://www.qq937.com">游乐</a>
			<a title="幻想三国" href="http://88.198game.com">幻想三国</a>
			<a title="庄园物语" href="http://sso.365m.cn">庄园物语</a>
			<a title="中关村游戏网" href="http://game.zol.com.cn">中关村游戏网</a>
			<a title="4399小游戏" href="http://www.4399.com">4399小游戏</a>
			<a title="7k7k小游戏" href="http://www.7k7k.com">7k7k小游戏</a>
			<a title="龙将 " href="http://ljol.wan.360.cn">龙将 </a>
			<a title="2144小游戏" href="http://www.2144.cn">7k7k小游戏</a>
		</div>
		<div class="animelist">
			<span >[军事]</span>
			<a title="中华网军事" href="http://military.china.com/">中华网军事</a>
			<a title="铁血军事" href="http://www.tiexue.net">铁血军事</a>
			<a title="凤凰网军事" href="http://news.ifeng.com">凤凰网军事</a>
			<a title="华生军事" href="http://bbs.voc.com.cn">华生军事</a>
			<a title="千龙军事" href="http://mil.qianlong.com">千龙军事</a>
			<a title="中华人民共和国国防部" href="http://www.mod.gov.cn">中华人民共和国国防部</a>
			<a title="战略军事 " href="http://www.chinaiiss.com">战略军事</a>
			<a title="军事前沿 " href="http://www.qianyan001.com">军事前沿</a>
		</div>
		<div class="animelist">
			<span >[财经]</span>
			<a title="东方财富网" href="http://www.eastmoney.com">东方财富网</a>
			<a title="腾讯财经" href="http://www.tiexue.net">腾讯财经</a>
			<a title="金融界" href="http://news.ifeng.com">金融界</a>
			<a title="证券之星" href="http://bbs.voc.com.cn">证券之星</a>
			<a title="和讯网" href="http://mil.qianlong.com">和讯网</a>
			<a title="财经频道-21CN" href="http://www.mod.gov.cn">财经频道-21CN</a>
			<a title="中国经济网" href="http://www.mod.gov.cn">中国经济网</a>
		</div>
		<div class="animelist">
			<span >[邮箱]</span>
			<a title="163邮箱" href="http://email.163.com">163邮箱</a>
			<a title="126邮箱" href="http://www.126.com">126邮箱</a>
			<a title="QQ邮箱" href="https://mail.qq.com">QQ邮箱</a>
			<a title="网易yeah.net邮箱" href="http://www.yeah.net">网易yeah.net邮箱</a>
			<a title="中国移动：139邮箱" href="http://mail.10086.cn">中国移动：139邮箱</a>
			<a title="新浪邮箱 " href="http://mail.sina.com.cn">新浪邮箱 </a>
			<a title="Hotmail" href="http://www.hotmail.com">Hotmail</a>
			<a title="Gmail " href="http://www.gmail.com">Gmail </a>
		</div>
		<div class="animelist">
			<span >[电脑]</span>
			<a title="IT168" href="http://www.it168.com">IT168</a>
			<a title="太平洋电脑网" href="http://www.pconline.com.cn">太平洋电脑网</a>
			<a title="中关村在线" href="http://www.zol.com.cn">中关村在线</a>
			<a title="泡泡网" href="http://www.pcpop.com">泡泡网</a>
			<a title="ZOL驱动下载" href="http://driver.zol.com.cn">ZOL驱动下载</a>
			<a title="非凡软件站" href="http://www.crsky.com">非凡软件站</a>
			<a title="电脑之家" href="http://www.pchome.net">电脑之家</a>
			<a title="天极数码 " href="http://product.yesky.com">天极数码 </a>
		</div>
		<div class="animelist">
			<span >[购物]</span>
			<a title="麦考林" href="http://www.m18.com">麦考林</a>
			<a title="拍拍网" href="http://www.paipai.com">拍拍网</a>
			<a title="淘宝网" href="http://www.taobao.com/">淘宝网</a>
			<a title="梦芭莎" href="http://shopping.moonbasa.com/">梦芭莎</a>
			<a title="雅库英伦男装" href="http://www.yksuit.com/">雅库英伦男装</a>
			<a title="兰缪内衣" href="http://www.lamiu.com/">兰缪内衣</a>
			<a title="凡客诚品" href="http://www.vancl.com">凡客诚品</a>
			<a title="亚马逊 " href="http://www.amazon.cn">亚马逊 </a>
		</div>
		<div class="animelist">
			<span >[交友]</span>
			<a title="珍爱网" href="http://love.zhenai.com">珍爱网</a>
			<a title="百合网" href="http://www.baihe.com">百合网</a>
			<a title="人人网" href="http://www.renren.com">人人网</a>
			<a title="赛我小窝" href="http://cyworld.ifensi.com">赛我小窝</a>
			<a title="久久结婚网" href="http://www.99wed.com">久久结婚网</a>
			<a title="我在找你" href="http://www.95195.com">我在找你</a>
			<a title="爱在这儿 " href="http://www.loveinhere.com">爱在这儿 </a>
			<a title="中国红娘网" href="http://www.hongniang.com">中国红娘网</a>
		</div>
		<div class="animelist">
			<span >[女性]</span>
			<a title="YOKA时尚网" href="http://www.yoka.com/">YOKA时尚网</a>
			<a title="瑞丽女性网" href="http://www.rayli.com.cn/">瑞丽女性网</a>
			<a title="VOGUE时尚网" href="http://www.vogue.com.cn/">VOGUE时尚网</a>
			<a title="爱丽女性网" href="http://www.27.cn/">爱丽女性网</a>
			<a title="腾讯女性" href="http://lady.qq.com/">腾讯女性</a>
			<a title="搜狐女人" href="http://women.sohu.com/">搜狐女人</a>
			<a title="她生活 " href="http://www.shelive.net">她生活 </a>
			<a title="女友网 " href="http://ny1988.com">女友网 </a>
		</div>
		<div class="animelist">
			<span >[商城]</span>
			<a title="苏宁易购" href="http://www.suning.com/">苏宁易购</a>
			<a title="红孩子母婴商城" href="http://www.redbaby.com.cn/">红孩子母婴商城</a>
			<a title="唯品会" href="http://www.vipshop.com">唯品会</a>
			<a title="1号店超市" href="http://www.yihaodian.com">1号店超市</a>
			<a title="国美电器 " href="http://www.gome.com.cn">国美电器 </a>
			<a title="佳品网" href="http://www.jiapin.com">佳品网</a>
			<a title="好乐买 " href="http://www.okbuy.com">好乐买 </a>
			<a title="聚尚网" href="http://www.fclub.cn">聚尚网</a>
		</div>
		<div class="animelist">
			<span >[汽车]</span>
			<a title="汽车之家" href="http://www.autohome.com.cn/">汽车之家</a>
			<a title="腾讯汽车" href="http://auto.qq.com/">腾讯汽车</a>
			<a title="搜狐汽车" href="http://auto.sohu.com/">搜狐汽车</a>
			<a title="二手车之家" href="http://www.che168.com/">二手车之家</a>
			<a title="太平洋汽车网" href="http://www.pcauto.com.cn/">太平洋汽车网</a>
			<a title="中国汽车网" href="http://www.chinacars.com/">中国汽车网</a>
			<a title="易车网 " href="http://chengdu.bitauto.com">易车网 </a>
			<a title="爱卡汽车" href="http://www.xcar.com.cn">爱卡汽车</a>
		</div>
		<div class="animelist">
			<span >[银行]</span>
			<a title="中国工商银行" href="http://www.icbc.com.cn/">中国工商银行</a>
			<a title="兴业银行" href="http://www.cib.com.cn/">兴业银行</a>
			<a title="深圳发展银行" href="http://www.sdb.com.cn/">深圳发展银行</a>
			<a title="搜狐保险" href="http://money.sohu.com/">搜狐保险</a>
			<a title="和讯保险" href="http://insurance.hexun.com/">和讯保险</a>
			<a title="向日葵保险网" href="http://www.xiangrikui.com/">向日葵保险网</a>
			<a title="中国银行 " href="http://www.boc.cn">中国银行 </a>
			<a title="招商银行" href="http://www.cmbchina.com">招商银行</a>
		</div>
		<div class="animelist">
			<span >[手机]</span>
			<a title="太平洋手机" href="http://mobile.pconline.com.cn/">太平洋手机</a>
			<a title="IT168动漫频道" href="http://mobile.it168.com/">IT168动漫频道</a>
			<a title="泡泡网手机频道" href="http://mobile.pcpop.com/">泡泡网手机频道</a>
			<a title="155手游天下" href="http://www.155.cn/">155手游天下</a>
			<a title="搜狐手机" href="http://digi.it.sohu.com/">搜狐手机</a>
			<a title="ZOL手机" href="http://mobile.zol.com.cn/">ZOL手机</a>
			<a title="手机中国 " href="http://www.cnmo.com">手机中国 </a>
			<a title="IT168手机" href="http://mobile.it168.com">IT168手机</a>
		</div>
		<div class="animelist">
			<span >[生活]</span>
			<a title="太平洋家居网" href="http://mobile.pconline.com.cn/">太平洋家居网</a>
			<a title="九游网" href="http://mobile.it168.com/">九游网</a>
			<a title="游在云南旅游信息网" href="http://mobile.pcpop.com/">游在云南旅游信息网</a>
			<a title="搜狐旅游" href="http://www.155.cn/">搜狐旅游</a>
			<a title="21CN旅游" href="http://digi.it.sohu.com/">21CN旅游</a>
			<a title="易达商旅网" href="http://mobile.zol.com.cn/">易达商旅网</a>
			<a title="赶集网 " href="http://cd.ganji.com">赶集网</a>
			<a title="58同城" href="http://cd.58.com">58同城</a>
		</div>
		<div class="animelist">
			<span >[招聘]</span>
			<a title="中国人才热线" href="http://www.cjol.com/">中国人才热线</a>
			<a title="中国招聘热线" href="http://www.hr33.com/">中国招聘热线</a>
			<a title="搜狐就业" href="http://learning.sohu.com/">搜狐就业</a>
			<a title="中国光电人才网" href="http://pe.baidajob.com/">中国光电人才网</a>
			<a title="最佳东方" href="http://www.veryeast.cn/">最佳东方</a>
			<a title="中国钢结构人才网" href="http://sc.baidajob.com/">中国钢结构人才网</a>
			<a title="智联招聘 " href="http://www.zhaopin.com">智联招聘 </a>
			<a title="前程无忧" href="http://www.51job.com">前程无忧</a>
		</div>
		<div class="animelist">
			<span >[体育]</span>
			<a title="搜狐体育" href="http://sports.sohu.com/">搜狐体育</a>
			<a title="乔丹体育" href="http://sports.tom.com/">乔丹体育</a>
			<a title="腾讯体育" href="http://sports.qq.com/">腾讯体育</a>
			<a title="人民网体育" href="http://sports.people.com.cn/">人民网体育</a>
			<a title="中华网体育" href="http://sports.china.com/">中华网体育</a>
			<a title="新华体育" href="http://www.xinhuanet.com/">新华体育</a>
			<a title="新浪体育 " href="http://sports.sina.com.cn">新浪体育 </a>
			<a title="NBA中文网" href="http://china.nba.com">NBA中文网</a>
		</div>
		<div class="animelist">
			<span >[博客]</span>
			<a title="QQ空间" href="http://qzone.qq.com/">QQ空间</a>
			<a title="搜狐博客" href="http://blog.sohu.com/">搜狐博客</a>
			<a title="人人网" href="http://www.renren.com/">人人网</a>
			<a title="TMT社交媒体" href="http://blog.donews.com/">TMT社交媒体</a>
			<a title="腾讯微博" href="http://t.qq.com/">腾讯微博</a>
			<a title="和讯博客" href="http://blog.hexun.com/">和讯博客</a>
			<a title="新浪微博 " href="http://weibo.com">新浪微博 </a>
			<a title="网易微博" href="http://t.163.com">网易微博</a>
		</div>
		<div class="animelist">
			<span >[社区]</span>
			<a title="华声论坛" href="http://qzone.qq.com/">华声论坛</a>
			<a title="红网论坛" href="http://blog.sohu.com/">红网论坛</a>
			<a title="红豆社区" href="http://www.renren.com/">红豆社区</a>
			<a title="19楼空间" href="http://blog.donews.com/">19楼空间</a>
			<a title="QQ空间" href="http://qzone.qq.com ">QQ空间</a>
			<a title="天涯社区" href="http://www.tianya.cn">天涯社区</a>
			<a title="豆瓣" href="http://www.douban.com">豆瓣</a>
			<a title="百度贴吧 " href="http://tieba.baidu.com">百度贴吧 </a>
		</div>
	</div>
</div>
<div id="footer">
	<a href="showSuggestAndComplain.action">联系我们</a> | <a href="showSuggestAndComplain.action">郑重声明</a> | <a href="showSuggestAndComplain.action">帮助信息</a>| <a href="showSuggestAndComplain.action">投诉建议</a> | <a href="showSuggestAndComplain.action">网上调查</a> | <a href="showSuggestAndComplain.action">留言信息</a><span style="display:none"></span><br>
    蜀ICP备 12005138号-1
</div>
<script src="http://s16.cnzz.com/stat.php?id=4427800&web_id=4427800&show=pic" language="JavaScript"></script>
</body>
</html>
