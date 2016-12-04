package com.yufeng.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.yufeng.bean.MusicVo;
import com.yufeng.dao.impl.DaoImpl;

public class PlayerAction extends ActionSupport implements SessionAware {

	private Map session;
	private DaoImpl dao;
	private String[] musicChk;
	private ArrayList<MusicVo> musicList = new ArrayList<MusicVo>();

	public String musicPlayer() throws Exception {
		for (int i = 0; i < musicChk.length; i++) {
			MusicVo musicVo = dao.getMusicVoById(Integer.parseInt(musicChk[i]));
			musicList.add(musicVo);
		}
		return "musicplayer";
	}

	// 关注
	public void guanzhu() throws Exception {
		Object ss = session.get("userID");
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) ctx
				.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = (HttpServletResponse) ctx
				.get(ServletActionContext.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (ss == null) {
			out.print("请先登录！");
		} else {
			int userID = Integer.parseInt(ss.toString());
			String movieID = request.getParameter("movieID");
			int mID = Integer.parseInt(movieID);
			String msg = dao.userConcernsMovie(userID, mID);
			if (msg.equals("ok")) {
				out.print("ok");
			} else {
				out.print("请重试");
			}
		}
	}
	// 收藏
	public void shouchang() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) ctx
				.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = (HttpServletResponse) ctx
				.get(ServletActionContext.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
			String movieID = request.getParameter("movieID");
			int mID = Integer.parseInt(movieID);
			String msg = dao.shouChang(mID);
			if (msg.equals("ok")) {
				out.print("ok");
			} else {
				out.print("请重试");
			}
		}
	//支持 1
	public void zhichi() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) ctx
				.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = (HttpServletResponse) ctx
				.get(ServletActionContext.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
			String movieID = request.getParameter("movieID");
			int mID = Integer.parseInt(movieID);
			String msg = dao.userVoteMovie(mID,1);
			if (msg.equals("ok")) {
				out.print("ok");
			} else {
				out.print("请重试");
			}
		}
	//反对  0 不喜欢
	public void fandui() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) ctx
				.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = (HttpServletResponse) ctx
				.get(ServletActionContext.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
			String movieID = request.getParameter("movieID");
			int mID = Integer.parseInt(movieID);
			String msg = dao.userVoteMovie(mID,0);
			if (msg.equals("ok")) {
				out.print("ok");
			} else {
				out.print("请重试");
			}
		}
	
	public DaoImpl getDao() {
		return dao;
	}

	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}

	public String[] getMusicChk() {
		return musicChk;
	}

	public void setMusicChk(String[] musicChk) {
		this.musicChk = musicChk;
	}

	public ArrayList<MusicVo> getMusicList() {
		return musicList;
	}

	public void setMusicList(ArrayList<MusicVo> musicList) {
		this.musicList = musicList;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

}
