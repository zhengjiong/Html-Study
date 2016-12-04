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
	//�û�
	private UserVo uservo;
	//�鿴����
	private ArrayList<LeavesVo> leavelist;
	//�Ƽ�����
	private ArrayList<UserVo> suggestFriends;
	//���Һ���
	private ArrayList<UserVo> findFriends;
	//�ҹ�ע�ĵ�Ӱ
	private ArrayList<MoviesVo> movieForGZ;
	//��ѯ���Ա�
	private String friendSex;
	//��С����
	private String minage;
	//�������
	private String maxage;
	//����ID
	private String FriendID;
	//��������
	private String leavesWord;
	//����ID
	private String leavesID;
	//�ظ�����
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
	 * ����������ѯ����
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
	 * ����������
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
	 * �ظ�����
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
