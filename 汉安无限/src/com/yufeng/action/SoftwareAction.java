package com.yufeng.action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.omg.CORBA.PRIVATE_MEMBER;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.SoftwareSmallCateVo;
import com.yufeng.bean.SoftwareVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.SoftDao;

public class SoftwareAction extends ActionSupport implements SessionAware{
	private SoftDao softDao;
	private String condition;
	private int cid;
	private int scid;
	private int pageNum;//第几页
	private int pageSize;//页面数量
	private int currentPage;//当前页面
	private int page[];
	private int id;
	private Map<Object, Object> session;
	private ArrayList<SoftwareVo> softwareVos;
	private SoftwareVo soft;
	private int softCount;
	//private ArrayList<SoftwareSmallCateVo> mSoftwareSmallCateVos;
	@Override
	public String execute() throws Exception {
		
		//System.out.println("第"+pageNum+"页");
		if(pageNum <= 0)
		{
			currentPage = 1;
		}else {
			currentPage = pageNum;
		}
		
		if(condition != null && !condition.equals(""))
		{
			condition = condition.trim();
			//System.out.println(condition.length());
			//condition = new String(condition.getBytes("iso-8859-1"), "UTF-8");
			//System.out.println(condition);
			condition = "and (a.softName like '%"+condition+"%' or a.path like '%"+condition+"%')";
		}else {
			condition = "";
		}
		String condition2 = "";
		if (cid != 0) {
			condition = condition + " and c.id="+cid;
			condition2 = " and c.id="+cid;
			//根据cid查询分类信息
			//mSoftwareSmallCateVos = softDao.getSoftwareSmallCateVosByCid(cid);
			
		}
		/*if (scid != 0) {
			condition = condition + " and a.scid="+scid;
			condition2 = " and a.scid="+scid;
		}*/
		softwareVos = softDao.getSoftwareByPageNum(pageNum,condition);
		if(softwareVos != null)
		{
			session.put("softwareVos", softwareVos);
			softCount = condition.equals("") ? softDao.getAllSoftwareCount("") : softDao.getAllSoftwareCount(condition2);
		}else {
			session.put("softwareVos", null);
			softCount = 0;
		}
		session.put("softCount", softCount);
		
		if(softCount != 0)
		{
			if (softCount%5 == 0 ) {
				pageSize = softCount/5;
			}else{
				if(softCount > 5)
				{
					pageSize = softCount/5 + 1;
				}else {
					pageSize = 1;
				}
			}
		}else {
			pageSize = 0;
		}
		page = new int[pageSize];
		for(int i = 0; i < pageSize; i++)
		{
			page[i] = i+1;
		}
		return super.execute();
	}
	
	public String toEncoder(String path){
		
		try {
			return URLEncoder.encode(path, "utf-8");
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	

	public String showSoftDetail(){
		soft=softDao.getSoftwareByID(id);
		softwareVos=softDao.getSoftwareByCID(soft.getCid());
		return "showdetail";
	}
	
	public ArrayList<SoftwareVo> getSoftwareVos() {
		return softwareVos;
	}

	public void setSoftwareVos(ArrayList<SoftwareVo> softwareVos) {
		this.softwareVos = softwareVos;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SoftwareVo getSoft() {
		return soft;
	}

	public void setSoft(SoftwareVo soft) {
		this.soft = soft;
	}

	public void setSession(Map arg0) {
		session = arg0;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int[] getPage() {
		return page;
	}

	public void setPage(int[] page) {
		this.page = page;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getScid() {
		return scid;
	}

	public void setScid(int scid) {
		this.scid = scid;
	}

	public SoftDao getSoftDao() {
		return softDao;
	}

	public void setSoftDao(SoftDao softDao) {
		this.softDao = softDao;
	}

	/*public ArrayList<SoftwareSmallCateVo> getmSoftwareSmallCateVos() {
		return mSoftwareSmallCateVos;
	}

	public void setmSoftwareSmallCateVos(
			ArrayList<SoftwareSmallCateVo> mSoftwareSmallCateVos) {
		this.mSoftwareSmallCateVos = mSoftwareSmallCateVos;
	}*/
	
}
