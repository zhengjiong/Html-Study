package com.yufeng.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;
import com.yufeng.bean.MovieCateVo;
import com.yufeng.bean.MovieTopPicVo;
import com.yufeng.bean.MoviesVo;

public class MovieDao extends SqlMapClientDaoSupport {
	private ArrayList<MoviesVo> list = new ArrayList<MoviesVo>();
	
	//热播榜
	public ArrayList<MoviesVo> getHotPlayerTop(int bid,String order,int page,int size) throws Exception{
		String sql = "SELECT * from movies where bigCateID="+bid+" and IsValidate=1 ORDER BY "+order+" DESC, updateTime desc LIMIT "+page+","+size;
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}

	//好评榜
	public ArrayList<MoviesVo> getPraise() throws Exception{
		String sql = "SELECT * from tmp_path where bigCateID=1 and IsValidate=1 ORDER BY voteLike DESC LIMIT 0,10;";
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	
	//获取导演
	public ArrayList<MoviesVo> getDirectors() throws Exception{
		String sql = "SELECT  * from movies where  sore>0 order by  sore DESC LIMIT 0,12";
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	//根据导演获取电影信息
	public ArrayList<MoviesVo> getMoviesByDirectors(String roleName) throws Exception{
		String sql = "select DISTINCT(MovieName),address,id,roleName,voteLike,voteNoLike,indexPic,directors,mainPic,sore,seriesNum,updateTime,uploadName,playNum,keepNum,rolesName,creatTime,directName from movies where  directors like '%"+roleName+"%'  and IsValidate=1 and bigCateID=1 LIMIT 0,12";
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	
	//根据演员获取电影信息
	public ArrayList<MoviesVo> getMoviesByRoleName(String roleName) throws Exception{
		String sql = "select * from movies where (roleName like '%"+roleName+"%' or rolesName like '%"+roleName+"%' ) and IsValidate=1 and bigCateID=1 LIMIT 0,6";
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	
	public ArrayList<MovieCateVo> getCateByBID(int bid) throws SQLException{
		String sql = "select id,cateSname from cates where bid="+bid;
		ArrayList<MovieCateVo> caelist = new ArrayList<MovieCateVo>();
		caelist = (ArrayList<MovieCateVo>) getSqlMapClient()
				.queryForList("getMoviesCateVO", sql);
		if (caelist != null && caelist.size() != 0) {
			return caelist;
		}
		return null;
	}
	
	//根据类型获得电影
	public ArrayList<MoviesVo> getMoviesBysCateID(int cateid,int bid,int page,int size) throws Exception{
		String sql = "select * from movies where (cateID="+cateid +" or cateID1="+cateid +") and IsValidate=1 and bigCateID="+bid+"  ORDER BY creatTime DESC,updateTime desc LIMIT "+page+","+size;
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	//根据地区获得电影
	public ArrayList<MoviesVo> getMoviesByAeasID(int areaid,int bid,int page,int size) throws Exception{
		String sql ="";
		if(areaid==0){
			sql = "select * from movies where  IsValidate=1 and bigCateID="+bid+" and  ORDER BY createTime DESC,updateTime desc LIMIT "+page+","+size;
		}else{
		    sql = "select * from movies where areaid="+areaid+" and IsValidate=1 and bigCateID="+bid+" ORDER BY createTime,updateTime desc DESC LIMIT "+page+","+size;
		}
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	public ArrayList<MoviesVo> getMoviesByKey(String  key,int bid,int cateid,int areaid ,int page,int size) throws Exception{
		String sql ="select * from movies where IsValidate=1 and (rolesname like'%"+key+"%' or rolename like'%"+key+"%' or moviename like'%"+key+"%' or creattime like '%"+key+"%' or Directors like '%"+key+"%') ";
		if(bid!=0){
			sql += " and bigCateID="+bid;
		}
		if(cateid!=0){
			sql += " and (cateID="+cateid +" or cateID1="+cateid +")";
		}
		if (areaid!=0) {
			sql += " and areaID="+areaid;
		}
		sql += " order by creatTime DESC,updateTime desc LIMIT "+page+","+size;
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	//根据关键字获得电影
	public ArrayList<MoviesVo> getMoviesByKey(String  key,int bid,int page,int size) throws Exception{
		String 
		
			sql = "select * from movies where ( rolesname like'%"+key+"%' or rolename like'%"+key+"%' or moviename like'%"+key+"%' or creattime ='"+key+"' or Directors like '%"+key+"%') and IsValidate=1 ORDER BY updateTime desc, creatTime desc LIMIT "+page+","+size;
		
		
		list = (ArrayList<MoviesVo>) getSqlMapClient()
				.queryForList("getMoviesVO", sql);
		if (list != null && list.size() != 0) {
			return splitName(list);
		}
		return null;
	}
	
	public ArrayList<MovieTopPicVo> getHotPlayerPic(int bid,String order,int page,int size) throws Exception{
		String sql = "SELECT * from movietoppic a , movies b where a.movieID=b.ID  and a.IsValidate=1 and b.IsValidate=1 and b.bigCateID="+bid+" ORDER BY b."+order+" LIMIT "+page+","+size;
		ArrayList<MovieTopPicVo> piclist = new ArrayList<MovieTopPicVo>();
		piclist = (ArrayList<MovieTopPicVo>) getSqlMapClient()
				.queryForList("getHotPic", sql);
		if (piclist != null && piclist.size() != 0) {
			return piclist;
		}
		return null;
	}
	
	private ArrayList<MoviesVo> splitName(ArrayList<MoviesVo>  movielist) throws Exception{
		if(movielist!=null){
			ArrayList<MoviesVo> listmovie=movielist;
			for(int i=0;i<listmovie.size();i++){
				String moviename=listmovie.get(i).getMovieName();
				String rolesName=listmovie.get(i).getRolesName();
				String directName=listmovie.get(i).getDirectName();
				if(moviename.length()>6){
					moviename=moviename.substring(0,6)+"...";
					listmovie.get(i).setMovieName(moviename);
				}
				if(rolesName.length()>4){
					rolesName=rolesName.substring(0,4)+"...";
					listmovie.get(i).setRolesName(rolesName);
				}
				if(directName.length()>8){
					directName=directName.substring(0,8)+"...";
					listmovie.get(i).setDirectName(directName);
				}
			}
			return listmovie;
		}
		return movielist;
	}
}
