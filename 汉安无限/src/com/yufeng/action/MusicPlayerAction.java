package com.yufeng.action;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MusicVo;
import com.yufeng.dao.impl.DaoImpl;
/**
 * @author zhengjiong
 * 2012-3-22 10:35:03
 */
public class MusicPlayerAction extends ActionSupport implements SessionAware,ServletRequestAware,ServletResponseAware{
	private DaoImpl dao;
	private int id;
	private ServletResponse response;
	private ServletRequest request;
	private Map<String, Object> session;
	
	public DaoImpl getDao() {
		return dao;
	}
	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setSession(Map arg0) {
		session = arg0;
	}
	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
	@Override
	public String execute() throws Exception
	{
		if(id != 0)
		{
			MusicVo musicVo = dao.getMusicVoById(id);
			if(musicVo != null)
			{
				String uniqueString = session.get("uniqueString") == null ? UniqueStringGenerator.getUniqueString() : session.get("uniqueString").toString();
				Document doc = DocumentHelper.createDocument();
				Element playlist = doc.addElement("playlist");
				Element music = playlist.addElement("music");
				music.addAttribute("name", new String(musicVo.getMusicName().getBytes("ISO-8859-1"),"UTF-8"));
				music.addAttribute("addres", new String(musicVo.getAddress().getBytes("ISO-8859-1"),"UTF-8"));
				System.out.println(new String(musicVo.getAddress().getBytes("ISO-8859-1"),"UTF-8"));
				//music.addAttribute("addres", "file:///c|/����܇.mp3");
				ActionContext actionContext = ActionContext.getContext();  
				ServletContext servletContext = (ServletContext) actionContext.get(ServletActionContext.SERVLET_CONTEXT);  
				String path = servletContext.getRealPath("\\js")+"\\"+uniqueString+".xml";
				//System.out.println(path);
				OutputFormat format = OutputFormat.createPrettyPrint();
				format.setEncoding("utf-8");
				File file = new File(path);
				FileWriter fileWriter = new FileWriter(file);
				XMLWriter xmlWriter = new XMLWriter(fileWriter,format);
				xmlWriter.write(doc);
				xmlWriter.flush();
				xmlWriter.close();
				session.put("uniqueString", uniqueString);
			}
			return SUCCESS;
		}
		
		
		return ERROR;
	}
}
