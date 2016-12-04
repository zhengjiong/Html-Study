package com.yufeng.action;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.UserVo;
import com.yufeng.dao.impl.DaoImpl;
@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport implements SessionAware {

	private DaoImpl dao;
	private Map session;
	//用户邮箱或者手机号码
	private String useremail;
	//登录用户名
	private String username;
	//密码
	private String passwd;
	//年龄
	private String age;
	//性别
	private String sex;
	//爱好
	private String hobbys;
	//个性签名
	private String userwrite;
	private boolean registered=false;
	public String registerUser()throws Exception{
		UserVo uservo=new UserVo();
		uservo.setAge(Integer.parseInt(age));
		uservo.setHobbys(hobbys);
		uservo.setPassword(passwd);
		uservo.setSex(sex);
		uservo.setUsername(username);
		uservo.setUsermail(useremail);
		uservo.setMsg(userwrite);
		String messag=dao.registUser(uservo);
		if(messag.equals("ok")){
			addFieldError("filedInfo", "注册成功，请登录");
		return "registerSuccess";
		}
		else{
			addFieldError("filedInfo", "注册失败");
			return "registerFail";
		}
	}
	public void check() throws Exception{
		ActionContext ctx=ActionContext.getContext();
		HttpServletRequest request=(HttpServletRequest) ctx.get(ServletActionContext.HTTP_REQUEST);
		String useremail=request.getParameter("inputemail");
		HttpServletResponse response=(HttpServletResponse) ctx.get(ServletActionContext.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String msg=dao.getEmail(useremail);
		if(msg.equals("exits")){
			out.print("该邮箱已经被注册过");
		}else if(msg.equals("ok")){
			out.print("ok");
		}else{
			out.print("请重试");
		}
	}
	public DaoImpl getDao() {
		return dao;
	}
	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHobbys() {
		return hobbys;
	}
	public void setHobbys(String hobbys) {
		this.hobbys = hobbys;
	}
	public String getUserwrite() {
		return userwrite;
	}
	public void setUserwrite(String userwrite) {
		this.userwrite = userwrite;
	}
}
