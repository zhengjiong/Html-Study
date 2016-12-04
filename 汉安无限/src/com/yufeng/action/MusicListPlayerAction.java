package com.yufeng.action;

import java.io.File;
import java.io.FileOutputStream;
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
 * 
 * @author zhengjiong
 * 2012-3-22 ����05:52:49
 */
public class MusicListPlayerAction extends ActionSupport implements ServletRequestAware,SessionAware{
	private DaoImpl dao;
	private int id;
	private String[] musicChk;
	private ServletRequest request;
	private Map<String,Object> session;
	
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
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
	
	public String[] getMusicChk() {
		return musicChk;
	}
	public void setSession(Map arg0) {
		session = arg0;
	}
	public void setMusicChk(String[] musicChk) {
		this.musicChk = musicChk;
	}
	@Override
	public String execute() throws Exception
	{
		if(musicChk.length != 0)
		{
			//String uniqueString = session.get("uniqueString") == null ? UniqueStringGenerator.getUniqueString() : session.get("uniqueString").toString();
			String uniqueString = UniqueStringGenerator.getUniqueString();
			Document doc = DocumentHelper.createDocument();
			Element playlist = doc.addElement("playlist");
			Element trackList = playlist.addElement("trackList");
			for(int i=0;i < musicChk.length; i++)
			{
				MusicVo musicVo = dao.getMusicVoById(Integer.parseInt(musicChk[i]));
				if(musicVo != null)
				{
					Element track = trackList.addElement("track");
					Element location = track.addElement("location");
					Element title = track.addElement("title");
					//music.addAttribute("addres", "file:///c|/����܇.mp3");
					//new String(musicVo.getMusicName().getBytes("ISO-8859-1"),"utf-8")
					//"musics/"+ (new String(musicVo.getMusicName().getBytes("ISO-8859-1"),"utf-8"))+".mp3"
					location.addText(musicVo.getAddress());
					title.addText(musicVo.getMusicName());
				}
			}
			ActionContext actionContext = ActionContext.getContext();
			ServletContext servletContext = (ServletContext) actionContext.get(ServletActionContext.SERVLET_CONTEXT); 
			String path = servletContext.getRealPath("\\musicxml")+"\\"+uniqueString+".xml";
			//System.out.println(path);
			OutputFormat format = OutputFormat.createPrettyPrint();
			format.setEncoding("utf-8");
			
			FileOutputStream  fos = null;
			File file = new File(path);
			fos = new FileOutputStream(file);
			//地方上对方收到放地方的
			//XMLWriter xmlWriter = new XMLWriter(new FileWriter(new File(path)),format);
			XMLWriter xmlWriter = new XMLWriter(fos, format);
			xmlWriter.write(doc);
			xmlWriter.flush();
			xmlWriter.close();
			session.put("uniqueString", uniqueString);
		}
		return SUCCESS;
	}
	
}
