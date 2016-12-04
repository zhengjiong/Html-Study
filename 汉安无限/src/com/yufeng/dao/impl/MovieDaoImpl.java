package com.yufeng.dao.impl;

import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.yufeng.bean.MovieTopPicVo;
import com.yufeng.bean.MoviesVo;

public class MovieDaoImpl extends SqlMapClientDaoSupport {
	//首页，全部10条,按照上传时间排序
	public ArrayList<MoviesVo> getAllTop10() throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.sore,t1.updateNum from movies as t1 join " +
					"indexlist as t2 on t1.IsValidate=1 and t1.ID=t2.movieID and t2.showID=1 limit 0,10;";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getAllTop10", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//首页列表
	public ArrayList<MoviesVo> getMoviesByBigID(int bigID) throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.sore,t1.updateNum from movies as t1 join indexlist" +
					" as t2 on t1.Isvalidate=1 and t1.ID=t2.movieID and t2.showID="+bigID+" limit 0,10;";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getMoviesByBigID", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//热门大片1,男性影院2，海外剧场3，人气动漫4，港台剧场5，人气综艺6---有图片
	public ArrayList<MoviesVo> getHotBigMoviePic(int showID)throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.mainPic,t1.updateNum from movies as t1 join" +
					" mainshowMovie as t2 on t1.ID=t2.movieID and  IsValidate=1 and t2.showCate="+showID+" limit 0,2;";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getHotBigMoviePic", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//热门大片1,男性影院2，海外剧场3，人气动漫4，港台剧场5，人气综艺6---无图片
	public ArrayList<MoviesVo> getHotBigMovie(int showID)throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.updateNum,t1.roleName from movies as t1 join" +
					" mainshowMovie as t2 on t1.ID=t2.movieID and  IsValidate=1 and t2.showCate="+showID+" limit 2,3;";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getHotBigMovie", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	//今日电影、今日电视剧、今日综艺、今日动漫 按照todayMovie查询最近的8条
	public ArrayList<MoviesVo> getTodayMovies(int bigID)throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.mainPic,t1.roleName ,t1.uploadName from movies as t1 join todayMovie as t2 on t1.ID=t2.movieID and t2.bigCateID="+bigID;
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getTodayMovies", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	/******************动漫***************/
	//热播动漫1 好评榜2
	public ArrayList<MoviesVo> getHotAnime(int showID) throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.sore,t1.updateNum from movies as t1 join " +
			"animeMovie as t2 on t1.IsValidate=1 and t1.ID=t2.movieID and t2.hotID="+showID+" limit 0,10;";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getHotAnime", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//动漫热门推荐3
	public ArrayList<MoviesVo> getSuggestAnime()throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.mainPic,t1.roleName ,t1.uploadName from movies as t1 join animeMovie as t2 on t1.ID=t2.movieID and t2.hotID=3 limit 0,12";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getSuggestAnime", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	/*************************综艺*************/
	//内地1  港台2
	public ArrayList<MoviesVo> getChinazy(int showID)throws Exception{
	try{
		String sql="select t1.ID,t1.MovieName,t1.sore,t1.updateNum from movies as t1 join " +
		"zyMovie as t2 on t1.IsValidate=1 and t1.ID=t2.movieID and t2.showID="+showID+" limit 0,10;";
		ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
		.queryForList("getChinazy", sql);
		return moviesvolist;
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	//综艺热门推荐3
	public ArrayList<MoviesVo> getSuggestzy()throws Exception{
		try{
			String sql="select t1.ID,t1.MovieName,t1.mainPic,t1.roleName ,t1.uploadName from movies as t1 join zyMovie" +
					" as t2 on t1.ID=t2.movieID and t2.showID=3 limit 0,12";
			ArrayList<MoviesVo> moviesvolist=(ArrayList<MoviesVo>) getSqlMapClient()
			.queryForList("getSuggestzy", sql);
			return moviesvolist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	/*****************首页下，电影、电视、综艺、动漫***********/
	public MoviesVo getBigMoviesBottom(int bigID)throws Exception{
		try{
			String sql="select t1.ID,t2.mainPic,t1.MovieName,t1.directName,t1.roleName,t1.directors,t3.cateSname from movies as t1 join indexbigpic as t2 join cates as t3 on t1.ID=t2.movieID and t2.showID="+bigID+" and t1.cateID=t3.ID and t1.IsValidate=1 order by ID desc limit 0,1;";
			MoviesVo moviesvo=(MoviesVo) getSqlMapClient().queryForObject("getBigMoviesBottom",sql);
			return splitName(moviesvo);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public ArrayList<MoviesVo> getMovieBottomByCateID(int cateID)throws Exception{
		if(cateID!=0){
			try{
				String sql="SELECT t1.id,t1.MovieName,t1.mainPic,t1.roleName FROM `movies` as t1 join indexbottom as t2 on t1.ID=t2.movieID and t1.IsValidate=1 and t2.showID="+cateID+" order by t2.ID desc limit 0,12";
				ArrayList<MoviesVo> movieslist=(ArrayList<MoviesVo>) getSqlMapClient().queryForList("getMovieBottomByCateID",sql);
				return movieslist;
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return null;
	}
	//排行榜
    public ArrayList<MoviesVo> getindexBottomTop(int bigID)throws Exception{
    	if(bigID!=0){
    		try{
    			String sql="SELECT t1.ID,t1.MovieName,t1.roleName,t1.sore FROM `movies` as t1 JOIN indexbottomtop as t2 on t1.ID=t2.movieID and t2.showID="+bigID;
    			ArrayList<MoviesVo> movieslist=(ArrayList<MoviesVo>) getSqlMapClient().queryForList("getindexBottomTop",sql);
    			return movieslist;
    		}catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	return null;
    }
	
	
	
	
    private  MoviesVo splitName(MoviesVo  movie) throws Exception{
		if(movie!=null){
			MoviesVo listmovie=movie;
			
				String moviename=listmovie.getMovieName();
				String rolesName=listmovie.getRolesName();
				String directName=listmovie.getDirectName();
				
				
				if(directName.length()>100){
					directName=directName.substring(0,100)+"...";
					listmovie.setDirectName(directName);
				}
			
			return listmovie;
		}
		return movie;
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
	
	
	
	
	
}
