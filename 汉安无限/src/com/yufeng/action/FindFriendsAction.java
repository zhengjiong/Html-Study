package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.LeavesVo;
import com.yufeng.bean.MoviesVo;
import com.yufeng.bean.UserVo;
import com.yufeng.dao.impl.DaoImpl;

public class FindFriendsAction extends ActionSupport  implements SessionAware{
	private DaoImpl dao;
	private Map session;
	//用户
	private UserVo uservo;
	//查看留言
	private ArrayList<LeavesVo> leavelist;
	//推荐好友
	private ArrayList<UserVo> suggestFriends;
	//查找好友
	private ArrayList<UserVo> findFriends;
	//我关注的电影
	private ArrayList<MoviesVo> movieForGZ;
	//查询的性别
	private String friendSex;
	//最小年龄
	private String minage;
	//最大年龄
	private String maxage;
	//好友ID
	private String FriendID;
	//留言内容
	private String leavesWord;
	//留言ID
	private String leavesID;
	//回复内容
	private String answerMsg;
	
	public String getAllFMsg()throws Exception{
		Object ss=session.get("userID");
		if(ss==null){
			return "nologin";
		}
		else{
			int userID=Integer.parseInt(ss.toString());
			uservo=dao.getUserForF(userID);
			leavelist=dao.showLeaves(userID);
			movieForGZ=dao.showGZ(userID);
			suggestFriends=dao.suggestFriends(userID);
			
		return "getAllMsg";
		}
	}
	/**
	 * 按照条件查询好友
	 * @return
	 * @throws Exception
	 */
	public String findFriends()throws Exception{
		Object ss=session.get("userID");
		if(ss==null){
			return "nologin";
		}
		else{
			int userID=Integer.parseInt(ss.toString());
			uservo=dao.getUserForF(userID);
			leavelist=dao.showLeaves(userID);
			movieForGZ=dao.showGZ(userID);
			suggestFriends=dao.findFriendsByKey(friendSex,minage,maxage);
		return "findfriends";
		}
	}
	/**
	 * 给好友留言
	 * @throws Exception
	 */
	public void leavesWordToFriend()throws Exception{
			Object ss=session.get("userID");
			int userID=Integer.parseInt(ss.toString());
			LeavesVo lvo=new LeavesVo();
			lvo.setUserID(Integer.parseInt(FriendID));
			lvo.setMsgs(leavesWord);
			lvo.setLeaverID(userID);
			dao.sendMsgTofriend(lvo);
	}
	/**
	 * 回复留言
	 * @throws Exception
	 */
	public void answerLeaves()throws Exception{
		Object ss=session.get("userID");
		int userID=Integer.parseInt(ss.toString());
		LeavesVo lvo=new LeavesVo();
		lvo.setID(Integer.parseInt(leavesID));
		lvo.setAnwsers(answerMsg);
		dao.answersLeave(lvo);
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

	public UserVo getUservo() {
		return uservo;
	}

	public void setUservo(UserVo uservo) {
		this.uservo = uservo;
	}

	public ArrayList<LeavesVo> getLeavelist() {
		return leavelist;
	}

	public void setLeavelist(ArrayList<LeavesVo> leavelist) {
		this.leavelist = leavelist;
	}

	public ArrayList<MoviesVo> getMovieForGZ() {
		return movieForGZ;
	}

	public void setMovieForGZ(ArrayList<MoviesVo> movieForGZ) {
		this.movieForGZ = movieForGZ;
	}

	public ArrayList<UserVo> getSuggestFriends() {
		return suggestFriends;
	}

	public void setSuggestFriends(ArrayList<UserVo> suggestFriends) {
		this.suggestFriends = suggestFriends;
	}

	public ArrayList<UserVo> getFindFriends() {
		return findFriends;
	}

	public void setFindFriends(ArrayList<UserVo> findFriends) {
		this.findFriends = findFriends;
	}
	public String getFriendSex() {
		return friendSex;
	}
	public void setFriendSex(String friendSex) {
		this.friendSex = friendSex;
	}
	public String getMinage() {
		return minage;
	}
	public void setMinage(String minage) {
		this.minage = minage;
	}
	public String getMaxage() {
		return maxage;
	}
	public void setMaxage(String maxage) {
		this.maxage = maxage;
	}
	public String getFriendID() {
		return FriendID;
	}
	public void setFriendID(String friendID) {
		FriendID = friendID;
	}
	public String getLeavesWord() {
		return leavesWord;
	}
	public void setLeavesWord(String leavesWord) {
		this.leavesWord = leavesWord;
	}
	public String getLeavesID() {
		return leavesID;
	}
	public void setLeavesID(String leavesID) {
		this.leavesID = leavesID;
	}
	public String getAnswerMsg() {
		return answerMsg;
	}
	public void setAnswerMsg(String answerMsg) {
		this.answerMsg = answerMsg;
	}
	
}
