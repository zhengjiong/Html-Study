/*
JavaScript Document
ckplayer5.0,有问题请访问http://www.ckplayer.com，欢迎把您的风格提供给大家分享
免费软件，请保持本版权信息
*/
function ckstyle(){
	Object.prototype.addProperty=function(ck,value){this[ck]=value}
	var ck=new Object()
	ck.addProperty('logo','');//logo地址,如果不像显示就设置成空
	ck.addProperty('buffer','ckplayer/assets2/buffer.swf');//缓冲图标地址，推荐使用swf
	ck.addProperty('play_g','ckplayer/assets2/images_Play_out.png');//播放按钮普通状态图片
	ck.addProperty('play_m','ckplayer/assets2/images_Play_on.png');//播放按钮鼠标经过状态图片
	ck.addProperty('pause_g','ckplayer/assets2/images_Pause_out.png');//暂停按钮普通状态图片
	ck.addProperty('pause_m','ckplayer/assets2/images_Pause_on.png');//暂停按钮鼠标经过状态图片
	ck.addProperty('pause_c','ckplayer/assets2/images_Pause_Scgedyke.png');//中间暂停按钮图片
	ck.addProperty('sound_g','ckplayer/assets2/images_Sound_out.png');//静音按钮普通状态图片
	ck.addProperty('sound_m','ckplayer/assets2/images_Sound_on.png');//静音按钮鼠标经过状态图片
	ck.addProperty('mute_g','ckplayer/assets2/images_Mute_out.png');//取消静音按钮普通状态图片
	ck.addProperty('mute_m','ckplayer/assets2/images_Mute_on.png');//取消静音按钮鼠标经过状态图片
	ck.addProperty('full_g','ckplayer/assets2/images_Full_out.png');//全屏按钮普通状态图片
	ck.addProperty('full_m','ckplayer/assets2/images_Full_on.png');//全屏按钮鼠标经过状态图片
	ck.addProperty('general_g','ckplayer/assets2/images_General_out.png');//取消全屏按钮普通状态图片
	ck.addProperty('general_m','ckplayer/assets2/images_General_on.png');//取消全屏按钮鼠标经过状态图片
	ck.addProperty('volume_g','ckplayer/assets2/images_Volume_back.png');//音量调节底部图片
	ck.addProperty('volume_m','ckplayer/assets2/images_Volume_on.png');//音量调节亮部图片
	ck.addProperty('volume_s','ckplayer/assets2/images_Volume_Float.png');//音量调节按钮图片
	ck.addProperty('schedule_s','ckplayer/assets2/images_Schedule.png');//进度调节按钮图片
	ck.addProperty('bottom_g','ckplayer/assets2/images_buttom_bg.png');//底部背景图片
	ck.addProperty('schedule_bg','ckplayer/assets2/images_Schedule_bg.png');//加载进度背景图片
	ck.addProperty('schedule_load','ckplayer/assets2/images_Schedule_load.png');//加载进度背景图片
	ck.addProperty('schedule_play','ckplayer/assets2/images_Schedule_play.png');//加载进度背景图片
	ck.addProperty('logo_width',87);//logo的宽
	ck.addProperty('logo_height',20);//logo的高
	ck.addProperty('logo_align',3);//logo的对齐方式，0是左上，1是左下，2是右上，3是右下
	ck.addProperty('logo_x',65);//这里跟ckalign有直接关系，如果是ckalign=0/1 左边距离 2/3 是右边距离
	ck.addProperty('logo_y',20);//同上，ckalign=0/2 离上边距离，1/3 是离下边距离
	ck.addProperty('ct_height',26);//底部容器的高
	ck.addProperty('play_left',0);//播放/暂停按钮离左边的距离
	ck.addProperty('clock_color',0xfdfdfd);//已播放时间/总时间的颜色
	ck.addProperty('clock_left',80);//已播放时间/总时间离左边的距离
	ck.addProperty('clock_top',4);//播放时间离底部容器上边的距离
	ck.addProperty('full_right',120);//全屏/取消全屏按钮离右边的距离,至少设置成按钮的宽度
	ck.addProperty('volume_right',170);//音量调节框离右边的距离
	ck.addProperty('volume_top',10);//音量调节框离底部容器顶端的距离
	ck.addProperty('volume_width',40);//音量调节框的宽
	ck.addProperty('volume_height',9);//音量调节框的高
	ck.addProperty('vs_width',6);//音量调节滑块的宽
	ck.addProperty('vs_height',14);//音量调节滑块框的高
	ck.addProperty('sound_right',220);//静音/取消静音离右边的距离
	ck.addProperty('pgb_height',5);//进度框的高度
	ck.addProperty('pgb_left',0);//进度框离左边的距离
	ck.addProperty('pgb_right',0);//进度框离右边的距离
	ck.addProperty('pgb_bottom',31);//进度框顶部离下面的的距离
	ck.addProperty('ss_width',13);//进度调节滑块的宽
	ck.addProperty('ss_height',13);//进度调节滑块框的高
	ck.addProperty('video_bottom',31);//播放器离底部的距离
	ck.addProperty('pa_width',60);//浮动暂停按钮的宽
	ck.addProperty('pa_height',60);//浮动暂停按钮的高
	ck.addProperty('pa_alpha',60);//浮动暂停按钮的透明度
	ck.addProperty('buffer_width',30);//缓冲图标的宽
	ck.addProperty('buffer_height',30);//缓冲图标的高
	ck.addProperty('buffer_time',100);//视频缓冲时间，单位毫秒
	ck.addProperty('pr_bgcolor',0x000000);//提示框背景颜色
	ck.addProperty('pr_bdcolor',0xfdfdfd);//提示框边框颜色
	ck.addProperty('pr_alpha',30);//提示框的透明度
	ck.addProperty('pr_color',0xffffff);//提示框文字的颜色
	ck.addProperty('pr_talpha',80);//提示文字的透明度
	ck.addProperty('pr_height',17);//提示框的高度
	ck.addProperty('pr_angle',6);//提示框的边的弧度
	ck.addProperty('pr_distance',5);//提示框离实际元件的距离
	ck.addProperty('admask_alpha',50);//视频播放前广告遮罩层的透明度
	ck.addProperty('advolume_true',1);//视频播放前广告时是否显示静音，0是不显示，1是显示，如果admask_alpha=100则静音按钮左对齐
	ck.addProperty('statustrue',3);//是否跟踪状态-0是关闭，大于0是开启，1是调用普通状态，2增加调用视频信息，3增加调用视频播放过程状态，调用js类ckplayer_status(str),str的参数详细说明参考ckplayer.com
	ck.addProperty('pr_play','点击播放');
	ck.addProperty('pr_pause','点击暂停');
	ck.addProperty('pr_mute','点击静音');
	ck.addProperty('pr_nomute','取消静音');
	ck.addProperty('pr_full','点击全屏');
	ck.addProperty('pr_nofull','退出全屏');
	ck.addProperty('pr_time','[$Time]');//[$Time]会自动替换目前进度提示
	ck.addProperty('pr_volume','[$Volume]');//[$Volume]会自动替换音量
	ck.addProperty('pr_adv','广告剩余：[$Second]秒');//[$Second]会自动替换成时间
	return ck;
	}
function swfupload(){
	 this.ckplayer_url='';
	 this.ckplayer_flv='';
	 this.ckplayer_volume=50;
	 this.ckplayer_play=true;
	 this.ckplayer_width=600;
	 this.ckplayer_height=400;
	 this.ckplayer_bgcolor='#000000';
	 this.ckplayer_allowFullScreen=true;
	 this.ckplayer_loadimg='';
	 this.ckplayer_pauseflash='';
	 this.ckplayer_pauseurl='';
	 this.ckplayer_loadadv='';
	 this.ckplayer_loadurl='';
	 this.ckplayer_loadtime=0;
	 this.ckplayer_endstatus=0;
	 this.swfwrite=function(str){
		var swfhtml='';
		swfhtml+='<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="'+this.ckplayer_width+'" height="'+this.ckplayer_height+'" id="ckplayer_'+str+'" align="middle">'
		swfhtml+='		<param name="movie" value="'+this.ckplayer_url+'" />'
		swfhtml+='		<param name="quality" value="high" />'
		swfhtml+='		<param name="bgcolor" value="'+this.ckplayer_bgcolor+'" />'
		swfhtml+='		<param name="wmode" value="transparent" />'
		swfhtml+='		<param name="allowScriptAccess" value="sameDomain" />'
		swfhtml+='      <param name="allowFullScreen" value="'+this.ckplayer_allowFullScreen+'" />';
		swfhtml+='      <param name="Flashvars" value="fvolume='+this.ckplayer_volume+'&fplay='+this.ckplayer_play+'&flv='+this.ckplayer_flv+'&load_img='+this.ckplayer_loadimg+'&pause_adv='+this.ckplayer_pauseflash+'&pause_url='+this.ckplayer_pauseurl+'&load_adv='+this.ckplayer_loadadv+'&load_url='+this.ckplayer_loadurl+'&load_time='+this.ckplayer_loadtime+'&end_status='+this.ckplayer_endstatus+'" />';
		swfhtml+='      <embed src="'+this.ckplayer_url+'" flashvars="fvolume='+this.ckplayer_volume+'&fplay='+this.ckplayer_play+'&flv='+this.ckplayer_flv+'&load_img='+this.ckplayer_loadimg+'&pause_adv='+this.ckplayer_pauseflash+'&pause_url='+this.ckplayer_pauseurl+'&load_adv='+this.ckplayer_loadadv+'&load_url='+this.ckplayer_loadurl+'&load_time='+this.ckplayer_loadtime+'&end_status='+this.ckplayer_endstatus+'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="'+this.ckplayer_width+'" height="'+this.ckplayer_height+'" allowFullScreen="'+this.ckplayer_allowFullScreen+'"></embed>';
		swfhtml+='	</object>'
		document.getElementById(str).style.backgroundColor=this.ckplayer_bgcolor;
		document.getElementById(str).innerHTML=swfhtml;
		}
	}