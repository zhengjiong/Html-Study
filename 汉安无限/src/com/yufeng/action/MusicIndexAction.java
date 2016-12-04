package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.omg.CORBA.PRIVATE_MEMBER;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.AlbumVo;
import com.yufeng.bean.MusicVo;
import com.yufeng.dao.impl.DaoImpl;
/**
 * 
 * @author zhengjiong
 * 2012-3-21 11:33:20
 */
public class MusicIndexAction extends ActionSupport implements SessionAware{
	private DaoImpl dao;
	private ArrayList<AlbumVo> newAlbumVos;			//最新专辑
	private ArrayList<MusicVo> musicVos;			//音乐TOP10
	private ArrayList<MusicVo> singers;				//歌手名
	private ArrayList<MusicVo> popMusicVos;			//流行音乐
	private ArrayList<MusicVo> netMusicVos;			//网络歌曲
	private ArrayList<MusicVo> classicsMusicVos;	//经典老歌
	private ArrayList<MusicVo> movieMusicVos;		//影视原声
	private ArrayList<MusicVo> recommendMusicVos;	//推荐音乐
	private Map<String,Object> session;
	
	public DaoImpl getDao() {
		return dao;
	}
	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
	public ArrayList<AlbumVo> getNewAlbumVos() {
		return newAlbumVos;
	}
	public void setSession(Map arg0) {
		session = arg0;
	}
	public void setNewAlbumVos(ArrayList<AlbumVo> newAlbumVos) {
		this.newAlbumVos = newAlbumVos;
	}
	public ArrayList<MusicVo> getMusicVos() {
		return musicVos;
	}
	public void setMusicVos(ArrayList<MusicVo> musicVos) {
		this.musicVos = musicVos;
	}
	public ArrayList<MusicVo> getSingers() {
		return singers;
	}
	public void setSingers(ArrayList<MusicVo> singers) {
		this.singers = singers;
	}
	public ArrayList<MusicVo> getPopMusicVos() {
		return popMusicVos;
	}
	public void setPopMusicVos(ArrayList<MusicVo> popMusicVos) {
		this.popMusicVos = popMusicVos;
	}
	public ArrayList<MusicVo> getRecommendMusicVos() {
		return recommendMusicVos;
	}
	public void setRecommendMusicVos(ArrayList<MusicVo> recommendMusicVos) {
		this.recommendMusicVos = recommendMusicVos;
	}
	@Override
	public String execute() throws Exception {
		if(session.get("newAlbumVos") == null)
		{
			newAlbumVos = dao.getNewAlbums(6);//获得最新的9个专辑
			session.put("newAlbumVos", newAlbumVos);
		}
		if(session.get("musicVos") == null)
		{
			musicVos = dao.getNewMusicVos(10);//最新上传的10首歌
			if(musicVos != null)
			{
				session.put("musicVos", musicVos);
			}
		}
		if(session.get("singers") == null)
		{
			singers = dao.getSingers(15);
			if(singers != null)
			{
				session.put("singers", singers);
			}
		}
		if(session.get("popMusicVos") == null)
		{
			popMusicVos = dao.getMusicVosByStyle(3);
			if(popMusicVos != null)
			{
				session.put("popMusicVos", popMusicVos);
			}
		}
		if(session.get("netMusicVos") == null)
		{
			netMusicVos = dao.getMusicVosByStyle(4);
			if(netMusicVos != null)
			{
				session.put("netMusicVos", netMusicVos);
			}
		}
		if(session.get("classicsMusicVos") == null)
		{
			classicsMusicVos = dao.getMusicVosByStyle(2);
			if(classicsMusicVos != null)
			{
				session.put("classicsMusicVos", classicsMusicVos);
			}
		}
		if(session.get("movieMusicVos") == null)
		{
			movieMusicVos = dao.getMusicVosByStyle(1);
			if(movieMusicVos != null)
			{
				session.put("movieMusicVos", movieMusicVos);
			}
		}
		if(session.get("recommendMusicVos") == null)
		{
			recommendMusicVos = dao.getNewMusicVos(100);
			if(recommendMusicVos != null)
			{
				session.put("recommendMusicVos", recommendMusicVos);
			}
		}
		return SUCCESS;
	}
	
}
