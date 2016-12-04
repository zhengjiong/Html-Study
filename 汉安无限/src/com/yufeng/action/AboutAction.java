package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.DiaochaVo;
import com.yufeng.bean.SuggestAndComplainVO;
import com.yufeng.bean.SuggestsVo;
import com.yufeng.dao.impl.DaoImpl;
@SuppressWarnings("serial")
public class AboutAction extends ActionSupport implements SessionAware {
	private DaoImpl dao;
	private Map session;
	private String dc1;
	private String dc2;
	private String dc3;
	private String dc4;
	private String dc5;
	private String dc6;
	private String dc7;
	private String dc8;
	private String dc9;
	private String dc10;
	private String title;
	private String contents;
	private String anwsers;
	private ArrayList<SuggestsVo> showdiaocha;
	private ArrayList<SuggestAndComplainVO> suggestAndComplainLit=new ArrayList<SuggestAndComplainVO>();
	/**
	 * ������ϵ���
	 * @return
	 * @throws Exception
	 */
	public String diaocha() throws Exception{
		DiaochaVo dcvo=new DiaochaVo();
		dcvo.setDc1(dc1);
		dcvo.setDc2(dc2);
		dcvo.setDc3(dc3);
		dcvo.setDc4(dc4);
		dcvo.setDc5(dc5);
		dcvo.setDc6(dc6);
		dcvo.setDc7(dc7);
		dcvo.setDc8(dc8);
		dcvo.setDc9(dc9);
		dcvo.setDc10(dc10);
		String ss=dao.diaocha(dcvo);
		if(ss.equals("ok")){
			return "ok";
		}
		return "addfail";
	}
	
	public String suggests() throws Exception{
		if (session.get("userName")==null){
			addActionMessage("���ȵ�¼��");
			return "login";
		}
		SuggestsVo suggests=new SuggestsVo();
		suggests.setTitles(title);
		suggests.setContents(contents);
		suggests.setAnwsers(anwsers);
		suggests.setUserID(dao.getUserByUserName(session.get("userName").toString()).getID());
		String flag=dao.addSuggest(suggests);
		if(flag.equals("ok")){
			return "ok";
		}
		return "addfail";
	}
	
	public String showSuggestAndComplain() throws Exception{
		suggestAndComplainLit=dao.getSuggestAndComplain();
		for (int i = 0; i < suggestAndComplainLit.size(); i++) {
			//System.out.println(suggestAndComplainLit.get(i).getSuggestMsg());
		}
		if (suggestAndComplainLit!=null){
			return "ok";
		}
		return "error";
	}
	
	public ArrayList<SuggestAndComplainVO> getSuggestAndComplainLit() {
		return suggestAndComplainLit;
	}

	public void setSuggestAndComplainLit(
			ArrayList<SuggestAndComplainVO> suggestAndComplainLit) {
		this.suggestAndComplainLit = suggestAndComplainLit;
	}

	public String showdiaocha()throws Exception{
		showdiaocha=dao.showSuggest();
		if(showdiaocha!=null){
			return "alldiaocha";
		}
		return "diaochafail";
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAnwsers() {
		return anwsers;
	}

	public void setAnwsers(String anwsers) {
		this.anwsers = anwsers;
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

	public String getDc1() {
		return dc1;
	}

	public void setDc1(String dc1) {
		this.dc1 = dc1;
	}

	public String getDc2() {
		return dc2;
	}

	public void setDc2(String dc2) {
		this.dc2 = dc2;
	}

	public String getDc3() {
		return dc3;
	}

	public void setDc3(String dc3) {
		this.dc3 = dc3;
	}

	public String getDc4() {
		return dc4;
	}

	public void setDc4(String dc4) {
		this.dc4 = dc4;
	}

	public String getDc5() {
		return dc5;
	}

	public void setDc5(String dc5) {
		this.dc5 = dc5;
	}

	public String getDc6() {
		return dc6;
	}

	public void setDc6(String dc6) {
		this.dc6 = dc6;
	}

	public String getDc7() {
		return dc7;
	}

	public void setDc7(String dc7) {
		this.dc7 = dc7;
	}

	public String getDc8() {
		return dc8;
	}

	public void setDc8(String dc8) {
		this.dc8 = dc8;
	}

	public String getDc9() {
		return dc9;
	}

	public void setDc9(String dc9) {
		this.dc9 = dc9;
	}

	public String getDc10() {
		return dc10;
	}

	public void setDc10(String dc10) {
		this.dc10 = dc10;
	}
	public ArrayList<SuggestsVo> getShowdiaocha() {
		return showdiaocha;
	}
	public void setShowdiaocha(ArrayList<SuggestsVo> showdiaocha) {
		this.showdiaocha = showdiaocha;
	}
	
	
}
