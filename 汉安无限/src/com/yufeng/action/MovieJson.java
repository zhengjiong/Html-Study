package com.yufeng.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;



import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MoviesPathVO;
import com.yufeng.dao.impl.DaoImpl;

public class MovieJson extends ActionSupport implements SessionAware {

	private Map session;
	private int movieID;
	private DaoImpl dao;
	private String result;
	private ArrayList<MoviesPathVO> list;
	private int movienum;
	private String fileName;
	private InputStream inputStream;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public InputStream getInputStream() throws Exception
	{
		String realPanFu="";
		ServletContext servletContext = ServletActionContext.getServletContext();
			MoviesPathVO moviesPathVO=dao.getMoviesPathByIDAndNum(movieID, movienum);
			String panfu=moviesPathVO.getAddress().substring(0,moviesPathVO.getAddress().indexOf("/"));
			System.out.println(panfu);
			if(panfu.equals("data1")){
				realPanFu="f:\\";
			}
			if(panfu.equals("data2")){
				realPanFu="g:\\";
			}
			if(panfu.equals("data3")){
				realPanFu="h:\\";
			}
			if(panfu.equals("data4")){
				realPanFu="i:\\";
			}
			if(panfu.equals("data5")){
				realPanFu="j:\\";
			}
			if(panfu.equals("data6")){
				realPanFu="k:\\";
			}
			String path=moviesPathVO.getAddress().substring(moviesPathVO.getAddress().indexOf("/")).replace("/", "\\");
			
		String realPath = realPanFu+path;
	      System.out.println(realPath);
	      File file = new File(realPath);
	      inputStream = new FileInputStream(file);
	      
		return inputStream;

	}
    public int getMovienum() {
		return movienum;
	}

	public void setMovienum(int movienum) {
		this.movienum = movienum;
	}

	public String getDownloadFileName() throws Exception {   
  
        String downFileName = fileName;   
       /* try {   
        	System.out.println(downFileName);
            downFileName = new String(downFileName.getBytes("iso-8859-1"), "utf-8");
            System.out.println(downFileName);
            
        } catch (UnsupportedEncodingException e) {   
            e.printStackTrace();   
        }   */
        
        return java.net.URLEncoder.encode(downFileName, "UTF-8");   
    }
    
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	

	public String showDownMovies() throws Exception {
		list = dao.getMoviesPathByID(movieID);
		for (int i = 0; i < list.size(); i++) {
			String path=list.get(i).getAddress();
			String name=path.substring(path.lastIndexOf("/")+1);
			list.get(i).setAddress(name);
		}
		return "moviedownlist";
	}

	public DaoImpl getDao() {
		return dao;
	}

	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public ArrayList<MoviesPathVO> getList() {
		return list;
	}

	public void setList(ArrayList<MoviesPathVO> list) {
		this.list = list;
	}


	public int getMovieID() {
		return movieID;
	}

	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
}
