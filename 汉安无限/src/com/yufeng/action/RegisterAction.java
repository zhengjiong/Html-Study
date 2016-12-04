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
	//�û���������ֻ�����
	private String useremail;
	//��¼�û���
	private String username;
	//����
	private String passwd;
	//����
	private String age;
	//�Ա�
	private String sex;
	//����
	private String hobbys;
	//����ǩ��
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
			addFieldError("filedInfo", "ע��ɹ������¼");
		return "registerSuccess";
		}
		else{
			addFieldError("filedInfo", "ע��ʧ��");
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
			out.print("�������Ѿ���ע���");
		}else if(msg.equals("ok")){
			out.print("ok");
		}else{
			out.print("������");
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
