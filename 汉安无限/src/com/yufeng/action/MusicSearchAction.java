package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.jstl.core.Config;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.AlbumVo;
import com.yufeng.bean.MusicVo;
import com.yufeng.dao.impl.DaoImpl;

public class MusicSearchAction extends ActionSupport implements RequestAware,SessionAware{
	private String condition;
	private int albumId;
	private String roleName;
	private Map<String, Object> request;
	private Map<String, Object> session;
	private DaoImpl dao;
	private ArrayList<MusicVo> searchMusicVos;	//������������
	private ArrayList<AlbumVo> newAlbumVos;			//����ר��
	private ArrayList<MusicVo> recommendMusicVos;	//�Ƽ�����
	
	public void setSession(Map arg0) {
		session = arg0;
	}
	public void setRequest(Map arg0) {
		request = arg0;
	}
	public DaoImpl getDao() {
		return dao;
	}
	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public ArrayList<MusicVo> getSearchMusicVos() {
		return searchMusicVos;
	}
	public void setSearchMusicVos(ArrayList<MusicVo> searchMusicVos) {
		this.searchMusicVos = searchMusicVos;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	@Override
	public String execute() throws Exception {
		if(!(condition == null || condition.equals("")))
		{
			condition = condition.trim();
			System.out.println(condition);
			//condition = new String(condition.getBytes("gbk"), "UTF-8");
			//System.out.println(condition);
			searchMusicVos = dao.searchMusicVos(condition);
		}else if (albumId != 0) {
			searchMusicVos = dao.getMusicVosByAlbumID(albumId);
		}else if (!(roleName == null || roleName.equals(""))) {
			System.out.println(roleName);
			roleName = new String(roleName.substring(0, 3).getBytes("gbk"), "utf-8");
			System.out.println(roleName);
			searchMusicVos = dao.getMusicVosByRoleName(roleName);
		}
		if(session.get("recommendMusicVos") == null)
		{
			recommendMusicVos = dao.getNewMusicVos(100);
			if(recommendMusicVos != null)
			{
				session.put("recommendMusicVos", recommendMusicVos);
			}
		}
		if(session.get("newAlbumVos") == null)
		{
			newAlbumVos = dao.getNewAlbums(6);
			session.put("newAlbumVos", newAlbumVos);
		}
		return SUCCESS;
	}
	
	
	
}
