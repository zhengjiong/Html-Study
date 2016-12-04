package com.yufeng.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.SoftwareVo;
import com.yufeng.dao.impl.SoftDao;

public class SoftwareDownAction extends ActionSupport {
	private int id;
	private String fileName;
	private InputStream inputStream;
	private SoftDao softDao;
	private SoftwareVo softwareVo;
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public InputStream getInputStream() throws Exception
	{
		//System.err.println("getInputStream");
		ServletContext servletContext = ServletActionContext.getServletContext();
		
		//System.out.println("---------------------------------");
		//fileName = java.net.URLEncoder.encode(fileName, "UTF-8");
		softwareVo = softDao.getSoftById(id);
		//System.out.println("path="+softwareVo.getPath());
		return servletContext.getResourceAsStream(softwareVo.getPath());
	}
    public String getDownloadFileName() throws Exception { 
		softwareVo = softDao.getSoftById(id);
        //String downFileName = java.net.URLEncoder.encode(softwareVo.getSoftName(), "UTF-8");   
       /* try {   
        	System.out.println(downFileName);
            downFileName = new String(downFileName.getBytes("iso-8859-1"), "utf-8");
            System.out.println(downFileName);
            
        } catch (UnsupportedEncodingException e) {   
            e.printStackTrace();   
        }   */
        //System.out.println("downfileName="+downFileName);
        //System.out.println("softwareVo.getSoftName()="+softwareVo.getSoftName());
        //return java.net.URLEncoder.encode(downFileName, "UTF-8");
		String downFileName = softwareVo.getPath();
		String[] splits = downFileName.split("/");
		//System.out.println("split="+splits[0]);
		//System.out.println("split="+splits[1]);
        return java.net.URLEncoder.encode(softwareVo.getPath().split("/")[softwareVo.getPath().split("/").length-1], "UTF-8");
    }
    
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public SoftDao getSoftDao() {
		return softDao;
	}

	public void setSoftDao(SoftDao softDao) {
		this.softDao = softDao;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
