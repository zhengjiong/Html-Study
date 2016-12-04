package com.yufeng.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.yufeng.bean.SoftwareSmallCateVo;
import com.yufeng.bean.SoftwareVo;

/**
 * 
 * @author zj 2012-5-9 上午11:42:48
 */
public class SoftDao extends SqlMapClientDaoSupport {

	/**
	 * 根据页码获得软件
	 */
	public ArrayList<SoftwareVo> getSoftwareByPageNum(int pageNum,
			String pCondition) {
		if (pageNum > 1) {
			pageNum = (pageNum - 1) * 5;
		} else {
			pageNum = 0;
		}
		try {
			String sql = "select a.*,c.id as 'cid',c.cateName from software a"
					+ " inner join softwarebigcate c ON a.cid=c.id"
					+ " where 1=1 " + pCondition
					+ " order by createTime desc limit " + pageNum + ",5";
			ArrayList<SoftwareVo> softwareVos;
			softwareVos = (ArrayList<SoftwareVo>) getSqlMapClient()
					.queryForList("getSoftwareByPageNum", sql);
			if (softwareVos != null && softwareVos.size() != 0) {
				return softwareVos;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * 获得软件的数量
	 */
	public int getAllSoftwareCount(String pCondition) {

		try {
			// String sql = "select * from software where 1=1 "+pCondition;
			String sql = "select a.*,c.id as 'cid',c.cateName from software a"
					+ " inner join softwarebigcate c ON a.cid=c.id"
					+ " where 1=1 " + pCondition + " order by createTime desc";
			ArrayList<SoftwareVo> softwareVos;
			softwareVos = (ArrayList<SoftwareVo>) getSqlMapClient()
					.queryForList("getAllSoftwareCount", sql);
			if (softwareVos != null && softwareVos.size() != 0) {
				return softwareVos.size();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}

	/**
	 * 根据cid查询小分类集合
	 * 
	 * @param cid
	 * @return
	 */
	public ArrayList<SoftwareSmallCateVo> getSoftwareSmallCateVosByCid(int cid) {

		try {
			String sql = "select * from softwaresmallcate where bigCateId="
					+ cid;
			ArrayList<SoftwareSmallCateVo> _SoftwareSmallCateVos;
			_SoftwareSmallCateVos = (ArrayList<SoftwareSmallCateVo>) getSqlMapClient()
					.queryForList("getSoftwareSmallCateVosByCid", sql);
			return _SoftwareSmallCateVos;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public SoftwareVo getSoftwareByID(int id) {

		try {
			String sql = "select * from software where Id="
					+ id;
			SoftwareVo softwareVo =  (SoftwareVo) getSqlMapClient().queryForObject("getSoftware", sql);
			return softwareVo;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public ArrayList<SoftwareVo> getSoftwareByCID(int cid) {

		try {
			String sql = "select * from software where cid="
					+ cid +" LIMIT 0,5";
			ArrayList<SoftwareVo> softwareList =   (ArrayList<SoftwareVo>) getSqlMapClient().queryForList("getSoftware", sql);
			return softwareList;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	/**
	 * 根据软件id获得软件路径
	 * @param id
	 * @return
	 */
	public SoftwareVo getSoftById(int id){
		try{
			String sql = "select a.*,c.id as 'cid',c.cateName from software a" +
			" inner join softwarebigcate c ON a.cid=c.id"+
		" where a.id="+id;
			//System.out.println("sql="+sql);
			SoftwareVo softwareVo = (SoftwareVo) getSqlMapClient().queryForObject("getSoftById", sql);
			return softwareVo;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
