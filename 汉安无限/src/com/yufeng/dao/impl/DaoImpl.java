package com.yufeng.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.sun.faces.lifecycle.UpdateModelValuesPhase;
import com.yufeng.bean.*;

public class DaoImpl extends SqlMapClientDaoSupport {
	private ArrayList<MoviesVo> list = new ArrayList<MoviesVo>();

	/**
	 * �û���¼,����Ա��¼
	 * 
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */

	public UserVo loginUser(String username, String password) throws Exception {
		if (username != null || password != null) {
			UserVo user = new UserVo();
			try {
				String sql = "select ID,username,password,powers from users where username='"
						+ username
						+ "' and password='"
						+ password
						+ "' and IsValidate=1";
				System.out.print(sql);
				user = (UserVo) getSqlMapClient().queryForObject("loginuser",
						sql);
				if (user != null) {
					// ��½�ɹ����޸ĵ�½ʱ��
					sql = "update users set loginDate=now() where ID="
							+ user.getID();
					getSqlMapClient().startTransaction();
					getSqlMapClient().update("updateLoginDate", sql);
					getSqlMapClient().commitTransaction();
					return user;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return null;
	}

	/**
	 * �û�ע��
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public String registUser(UserVo user) throws Exception {
		if (user != null) {
			try {
				String sql = "insert into users(username,password,usermail,hobbys,sex,age,IsValidate,powers,registDate) values('"
						+ user.getUsername()
						+ "','"
						+ user.getPassword()
						+ "','"
						+ user.getUsermail()
						+ "','"
						+ user.getHobbys()
						+ "','"
						+ user.getSex()
						+ "',"
						+ user.getAge()
						+ ",1,1,now())";
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertusers", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * ע�����Ա
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public String registAdmin(UserVo user) throws Exception {
		if (user != null) {
			try {
				String sql = "insert into users(username,password,usermail,IsValidate,powers,registDate) values('"
						+ user.getUsername()
						+ "','"
						+ user.getPassword()
						+ "','" + user.getUsermail() + "',1,0,now())";
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertadmin", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * �û���Ѱ����-------------------------------
	 * 
	 * @param keyword
	 *            �������(��Χ)age������hobbys���Ա�sex,����age20&30
	 *            ��age=20&30,hobbys=����
	 * @return
	 * @throws Exception
	 */
	public ArrayList<UserVo> findFriendsByKey(String friendsex, String minage,
			String maxage) throws Exception {
		if (friendsex != null && !friendsex.equals("")) {
			try {
				String sex = "";
				if (friendsex.equals("0")) {
					sex = "Ů";
				} else {
					sex = "��";
				}
				String sql = "select ID,username,hobbys,sex,age from users where sex='"
						+ sex
						+ "' age>"
						+ Integer.parseInt(minage)
						+ " and age<" + Integer.parseInt(maxage);
				ArrayList<UserVo> list = (ArrayList<UserVo>) getSqlMapClient()
						.queryForList("selectfriends", sql);
				return list;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}

	/**
	 * �Ƽ�����--------------------------------------------
	 * 
	 * @param userID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<UserVo> suggestFriends(int userID) throws Exception {
		if (userID != 0) {
			try {
				ArrayList<UserVo> suggestListFriend = new ArrayList<UserVo>();
				String sql = "SELECT ID,username,age,sex,hobbys FROM `users` where age>((SELECT age from users where ID="
						+ userID
						+ ")-10) and age<((select age from users where ID="
						+ userID + ")+10) and ID!=" + userID;
				suggestListFriend = (ArrayList<UserVo>) getSqlMapClient()
						.queryForList("selectSuggestFriends", sql);
				if (suggestListFriend != null) {
					return suggestListFriend;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ���ϵ���
	 * 
	 * @param smov
	 * @return
	 * @throws Exception
	 */
	public String addLikeMov(SuggestMovVo smov) throws Exception {
		if (smov != null) {
			String sql = "insert into likeMov(userID,movOrmus,likeMovie,likereason) values("
					+ smov.getUserID()
					+ ","
					+ smov.getMovOrmus()
					+ ",'"
					+ smov.getLikeMovie() + "','" + smov.getLikereason() + "')";
			try {
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertLikeMovie", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * ��վ������
	 * 
	 * @return
	 * @throws Exception
	 */
	public int addFWnum() throws Exception {
		try {
			String sql = "update totnum set totalNum=totalNum+1";
			getSqlMapClient().startTransaction();
			getSqlMapClient().update("updatetotalNum", sql);
			getSqlMapClient().commitTransaction();
			sql = "select totalNum from totnum";
			int num = Integer.parseInt(getSqlMapClient().queryForObject(
					"selecttotalNum", sql).toString());
			return num;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			getSqlMapClient().endTransaction();
		}
	}

	/**
	 * ���Ͷ�߽���
	 * 
	 * @param comvo
	 * @return
	 * @throws Exception
	 */
	public String addComplaints(ComplainVo comvo) throws Exception {
		if (comvo != null) {
			String sql = "insert into complain(userID,subject,suggestMsg) values("
					+ comvo.getUserID()
					+ ","
					+ comvo.getSubject()
					+ ","
					+ comvo.getSuggestMsg() + ")";
			try {
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertComplain", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * ��ӹ���
	 * 
	 * @param msgvo
	 * @return
	 * @throws Exception
	 */
	public String addPostMsg(PostMsgVo msgvo) throws Exception {
		if (msgvo != null) {
			String sql = "insert into msg(Title,messages,IsValidate,creatTime) values('"
					+ msgvo.getTitle()
					+ "','"
					+ msgvo.getMessages()
					+ "',1,now())";
			try {
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertPostMsg", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * ��ѯ������Ϣ�б�
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<PostMsgVo> getPostMsg() throws Exception {
		try {
			String sql = "select ID,Title,creatTime from msg where IsValidate=1";
			ArrayList<PostMsgVo> list = (ArrayList<PostMsgVo>) getSqlMapClient()
					.queryForList("selectPostMsg", sql);
			if (list != null && list.size() != 0) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��ѯ������Ϣ��ϸ����
	 * 
	 * @param ID
	 * @return
	 * @throws Exception
	 */
	public PostMsgVo getDetailMsg(int ID) throws Exception {
		try {
			if (ID != 0) {
				String sql = "select ID,Title,messages,creatTime from msg where IsValidate=1";
				PostMsgVo msgvo = (PostMsgVo) getSqlMapClient().queryForObject(
						"selectDetailMsg", sql);
				if (msgvo != null) {
					return msgvo;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}

	/**
	 * ��Ƶ���ࣨ���ࣩ
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MovieCateVo> getmovieCate() throws Exception {
		try {
			String sql = "select ID,cateName from bigcate";
			ArrayList<MovieCateVo> list = (ArrayList<MovieCateVo>) getSqlMapClient()
					.queryForList("selectMovieCate", sql);
			if (list != null && list.size() != 0) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ������ࣨС�ࣩ
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MovieStyleVo> getmovieStyle(int cateID) throws Exception {
		try {
			String sql = "select ID,cateSname from cates where bID=" + cateID;
			ArrayList<MovieStyleVo> list = (ArrayList<MovieStyleVo>) getSqlMapClient()
					.queryForList("selectMovieStyle", sql);
			if (list != null) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ��ҳ---��ѯ��ƬԤ��10��
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getPrevueMovies() throws Exception {
		try {
			String sql = "select  t1.ID, t1.MovieName,t1.roleName from movies as t1 join prevues as t2 on t1.ID=t2.movieID where t1.bigcateid=1 and t1.IsValidate=1  order by t2.updateTime desc limit 0,10;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectPrevueMovies", sql);
			if (list != null && list.size() != 0) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 *��Ӱ��ҳ----- Ժ����ӳ 10��
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getHotCinemasMovies() throws Exception {
		try {
			String sql = "select  t1.ID,t1.MovieName,t1.roleName from movies as t1 join hotCinemas as t2 on t1.ID=t2.movieID  and t1.IsValidate=1 order by t2.updateTime desc limit 0,10;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectHotCinemasMovies", sql);
			if (list != null && list.size() != 0) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ��ҳ-----�����עtop 10
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getTopConcernsMovies() throws Exception {
		try {
			String sql = "select  ID,MovieName,roleName from movies where bigcateid=1 and IsValidate=1  order by concerns desc limit 0,10;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectConcernsMovies", sql);
			if (list != null && list.size() != 0) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ��ҳ-----�����Ƽ� top 3
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getHotSuggestMovies() throws Exception {
		try {
			String sql = "select  t1.ID,t1.MovieName,t1.roleName,t1.mainPic from movies as t1 join HotSuggestMovies as t2 on t1.ID=t2.movieID and t1.IsValidate=1  order by t2.updateTime desc limit 0,3;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectHotSuggestMovies", sql);
			if (list != null && list.size() != 0) {

				return splitName(list);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ��ҳ------���µ�Ӱ top 10
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getNewMovies() throws Exception {
		try {
			String sql = "select  ID,MovieName,sore from movies where IsValidate=1  order by sore,updateTime desc limit 0,10;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectNewMovies", sql);
			if (list != null && list.size() != 0) {
				return splitName(list);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ��ҳ------ϲ�硢�ƻ� top 5
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMoviesComedy(int styleID) throws Exception {
		try {
			String sql = "select ID,MovieName,mainPic,roleName from movies where cateID="
					+ styleID
					+ " and IsValidate=1 order by creatTime desc limit 0,5;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectMoviesComedy", sql);
			if (list != null && list.size() != 0) {
				return splitName(list);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ��ҳ------ϲ�硢�ƻ� top 10
	 * 
	 * @param styleID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMoviesComedyTop(int styleID) throws Exception {
		try {
			String sql = "select  ID,MovieName,address,sore from movies where cateID="
					+ styleID
					+ " and IsValidate=1 order by sore asc limit 0,10;";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectMoviesComedys", sql);
			if (list != null && list.size() != 0) {
				return splitName(list);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ����ҳ��------����ҳ����ʾ��ĳһ���͵ĵ�Ӱ top 10����ҳ��ʾ
	 * 
	 * @param bigCateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMoviesSearchByBigCateID(int bigCateID,
			int page) throws Exception {
		try {
			int size = 10;
			String sql = "select  ID,MovieName,mainPic,roleName from movies where cateID="
					+ bigCateID
					+ " and IsValidate=1 order by creatTime desc limit "
					+ page
					* size + "," + size;
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectMoviesSearchByBigCateID", sql);
			if (list != null && list.size() != 0) {
				return splitName(list);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ����ؼ��� ����ѯ���
	 * 
	 * @param keyword
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMoviesSearchByKeyword(String keyword, int page)
			throws Exception {
		try {
			int size = 10;
			String sql = "select  ID,MovieName,mainPic,roleName from movies where MovieName like '%"
					+ keyword
					+ "%' or roleName like '%"
					+ keyword
					+ "%' or directors like '%"
					+ keyword
					+ "%' and IsValidate=1  order by creatTime desc limit "
					+ page * size + "," + size;
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectMoviesSearchByBigCateID", sql);
			if (list != null && list.size() != 0) {
				return splitName(list);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ��Ӱ����---
	 * 
	 * @param ID
	 * @return
	 * @throws Exception
	 */
	public MoviesVo getMovieDetail(int ID) throws Exception {
		if (ID != 0) {
			try {
				MoviesVo moviesvo = new MoviesVo();
				String sql = "select t1.ID,t1.MovieName,t1.address,t1.rolesName,t1.directors,t2.areaName,t1.creatTime,t3.cateSname,t1.seriesNum,t1.uploadName,t1.updateTime,t1.directName,t1.cateid,t1.bigCateID FROM movies AS t1, areas AS t2,cates as t3  where  t1.areaID = t2.ID AND t1.ID = "
						+ ID + " and IsValidate=1 AND t1.cateID = t3.ID";
				moviesvo = (MoviesVo) getSqlMapClient().queryForObject(
						"selectMovie", sql);
				if (moviesvo != null) {
					return moviesvo;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ��ҳ-------top
	 * 
	 * @return
	 * @throws Exception
	 */
	public MoviesVo getMovieForIndex(int bigCateID) throws Exception {
		if (bigCateID != 0) {
			try {
				MoviesVo moviesvo = new MoviesVo();
				String sql = "select  t1.ID,t1.MovieName,t1.roleName,t1.directors,t2.cateSname,t1.creatTime,t1.directName,t1.indexPic from movies as t1 join cates as t2 on t1.bigCateID="
						+ bigCateID
						+ " and t1.cateID=t2.ID and NOT ISNULL(t1.indexPic) and t1.IsValidate=1  order by updateTime desc limit 0,1;";
				moviesvo = (MoviesVo) getSqlMapClient().queryForObject(
						"selectIndexMovie", sql);
				if (moviesvo != null) {
					if (moviesvo.getDirectName().length() > 30) {
						String directname = moviesvo.getDirectName().substring(
								0, 30);
						moviesvo.setDirectName(directname + "...");
					}
					return moviesvo;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ��ҳ-------�б�
	 * 
	 * @param bigCateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMoviesForIndex(int bigCateID)
			throws Exception {
		if (bigCateID != 0) {
			try {
				ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
				String sql = "select  t1.ID,t1.MovieName,t1.roleName,t1.mainPic from movies as t1 where bigCateID="
						+ bigCateID
						+ " and t1.IsValidate=1  order by updateTime desc limit 1,8;";
				moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
						.queryForList("selectIndexMovieList", sql);
				if (moviesvolist != null) {
					return splitName(moviesvolist);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ��ҳ-------top 10
	 * 
	 * @param bigCateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getIndexTop(int bigCateID) throws Exception {
		if (bigCateID != 0) {
			try {
				ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
				String sql = "select  ID,MovieName,sore from movies where bigCateID="
						+ bigCateID
						+ " and IsValidate=1 order by sore desc limit 0,10;";
				moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
						.queryForList("selectIndexMovieTop", sql);
				if (moviesvolist != null && moviesvolist.size() != 0) {
					return splitName(moviesvolist);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;

	}

	/**
	 * ���ա�����-----�Ƽ�
	 * 
	 * @param bigCateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getzongyiTop(int bigCateID) throws Exception {
		if (bigCateID != 0) {
			try {
				ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
				String sql = "select  t1.ID,t1.MovieName,t1.sore from movies as t1 join hotzongyi as t2 on t2.movieID=t1.ID and t1.bigCateID="
						+ bigCateID
						+ " and t1.IsValidate=1  order by sore desc limit 0,10;";
				moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
						.queryForList("selectIndexMovieTops", sql);
				if (moviesvolist != null && moviesvolist.size() != 0) {
					return splitName(moviesvolist);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ���ն���------������
	 * 
	 * @param bigCateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getUpdateMoviesByCateID(int bigCateID)
			throws Exception {
		if (bigCateID != 0) {
			try {
				ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
				String sql = "select  ID,MovieName,roleName,mainPic from movies where bigCateID="
						+ bigCateID
						+ " and IsValidate=1 order by updateTime desc limit 0,6;";
				moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
						.queryForList("selectzongyiSuggest", sql);
				if (moviesvolist != null && moviesvolist.size() != 0) {
					return splitName(moviesvolist);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ���ն���------���ŵ㲥
	 * 
	 * @param bigCateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMoviesPlayNumByCateID(int bigCateID)
			throws Exception {
		if (bigCateID != 0) {
			try {
				ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
				String sql = "select  ID,MovieName,roleName,mainPic from movies where bigCateID="
						+ bigCateID
						+ " and IsValidate=1 order by playNum desc limit 0,6;";
				moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
						.queryForList("selectzongyiSuggest", sql);
				if (moviesvolist != null && moviesvolist.size() != 0) {
					return splitName(moviesvolist);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ���Ӿ�------���硢��̨��ŷ������½
	 * 
	 * @param cateID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getMovieByUpdateTime(int cateID)
			throws Exception {
		if (cateID != 0) {
			try {
				ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
				String sql = "select  ID,MovieName from movies where cateID="
						+ cateID
						+ " and IsValidate=1 order by updateTime limit 0,5";
				moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
						.queryForList("getMoviesNames", sql);
				if (moviesvolist != null && moviesvolist.size() != 0) {
					return splitName(moviesvolist);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ���Ӿ�--------�Ȳ��糡
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getHotMovies() throws Exception {
		try {
			ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
			String sql = "select  ID,MovieName,roleName,mainPic from movies where bigCateID=2 and IsValidate=1 order by playNum desc limit 0,5;";
			moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
					.queryForList("getHotMovies", sql);
			if (moviesvolist != null && moviesvolist.size() != 0) {
				return splitName(moviesvolist);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���Ӿ�----------���ư� top 1
	 * 
	 * @return
	 * @throws Exception
	 */
	public MoviesVo getFYFirstmovie() throws Exception {
		try {
			MoviesVo vo = new MoviesVo();
			String sql = "select  t1.ID,t1.MovieName,t1.roleName,t1.mainPic,t2.areaName from movies as t1 join areas as t2 on t1.areaID=t2.ID  and IsValidate=1 order by sore desc limit 0,1";
			vo = (MoviesVo) getSqlMapClient().queryForObject("getFYVO", sql);
			if (vo != null) {
				return vo;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���Ӿ�-------���ư� 2--8
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getFYmovies() throws Exception {
		try {
			ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
			String sql = "select  ID,MovieName,roleName,mainPic,sore from movies where bigCateID=2 and IsValidate=1 order by sore desc limit 1,8;";
			moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
					.queryForList("getHotMovies", sql);
			if (moviesvolist != null && moviesvolist.size() != 0) {
				return splitName(moviesvolist);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���Ӿ�--------������
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getUpdateTimeNewMovies() throws Exception {
		try {
			ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
			String sql = "select  ID,MovieName,roleName,mainPic from movies where bigCateID=2 and IsValidate=1  order by updateTime desc limit 0,5;";
			moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
					.queryForList("getUpdateTimeNewMovies", sql);
			if (moviesvolist != null && moviesvolist.size() != 0) {
				return splitName(moviesvolist);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���Ӿ�----------��ע�� top 1
	 * 
	 * @return
	 * @throws Exception
	 */
	public MoviesVo getGZFirstmovie() throws Exception {
		try {
			MoviesVo vo = new MoviesVo();
			String sql = "select  t1.ID,t1.MovieName,t1.roleName,t1.mainPic,t2.areaName from movies as t1 join areas as t2 on t1.areaID=t2.ID  and IsValidate=1 order by concerns desc limit 0,1";
			vo = (MoviesVo) getSqlMapClient().queryForObject("getGZVO", sql);
			if (vo != null) {
				return vo;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���Ӿ�-------��ע�� 2--8
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> getGZmovies() throws Exception {
		try {
			ArrayList<MoviesVo> moviesvolist = new ArrayList<MoviesVo>();
			String sql = "select ID,MovieName,sore from movies where bigCateID=2 and IsValidate=1 order by concerns desc limit 1,8;";
			moviesvolist = (ArrayList<MoviesVo>) getSqlMapClient()
					.queryForList("getGZMovies", sql);
			if (moviesvolist != null && moviesvolist.size() != 0) {
				return splitName(moviesvolist);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<MoviesVo> getMovieNames(String moviename) throws Exception {
		String sql = "select  t1.ID,t1.MovieName,t1.address,t1.rolesName,t1.directors,t2.areaName,t1.creatTime,t3.cateSname,t1.seriesNum,t1.uploadName,t1.updateTime,t1.directName FROM movies AS t1, areas AS t2,cates as t3  where  t1.areaID = t2.ID AND t1.moviename like '%"
				+ moviename + "%'  AND t1.cateID = t3.ID ";
		list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
				"selectMovie", sql);
		return list;

	}

	/**
	 * �õ��������ַ�����(�Ѳ���)
	 * 
	 * @return
	 */
	public ArrayList<MusicStyleVo> getMusicStyleVos() {
		try {
			String sql = "select ID,styleName from musicstyle where IsValidate = 1";
			ArrayList<MusicStyleVo> musicStyleVos = (ArrayList<MusicStyleVo>) getSqlMapClient()
					.queryForList("selectMusicStyleVos", sql);
			if (musicStyleVos != null && musicStyleVos.size() != 0) {
				return musicStyleVos;
			} else {
				return null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ������ַ�����id,��������б� (�Ѳ���)
	 * 
	 * @param styleId
	 *            ���ID
	 * @return
	 */
	public ArrayList<MusicVo> getMusicVosByStyle(int styleId) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.id ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 and a.styleID= ");
			sql.append(styleId);
			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("selectMusicByStyle", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				return musicVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * �����������������б�
	 * 
	 * @param cateId
	 *            �������ID
	 * @return
	 */
	public ArrayList<MusicVo> getMusicVosByCateId(int cateId) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.id ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 and a.cateID=");
			sql.append(cateId);
			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("selectMusicVosByCateId", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				return musicVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * �������ID���������Ϣ
	 * 
	 * @param id
	 * @return
	 */
	public MusicVo getMusicVoById(int id) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.id ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 and a.ID=");
			sql.append(id);
			MusicVo musicVo = (MusicVo) getSqlMapClient().queryForObject(
					"selectMusicById", sql.toString());
			if (musicVo != null) {
				return musicVo;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * �õ������ϴ��ĸ� (�Ѳ���)
	 * 
	 * @param number
	 *            Ҫ��ø������
	 * @return
	 */
	public ArrayList<MusicVo> getNewMusicVos(int number) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.id ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 ");
			sql.append("order by createTime desc ");
			sql.append("limit 0," + number);

			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("getNewMusicVos", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				return musicVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * �õ������� (�Ѳ���)
	 * 
	 * @param number
	 *            Ҫ��õ�����
	 * @return
	 */
	public ArrayList<MusicVo> getSingers(int number) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select * from musics where IsValidate=1 group by roleName order by createTime desc ");
			sql.append("limit 0," + number);

			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("getSingers", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				return musicVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * �������ר�� (�Ѳ���)
	 * 
	 * @return
	 */
	public ArrayList<AlbumVo> getAllAlbums() {
		try {
			String sql = "select * from musicalbum where IsValidate=1 order by issueDate desc";
			ArrayList<AlbumVo> albumVos = (ArrayList<AlbumVo>) getSqlMapClient()
					.queryForList("getAllAlbums", sql.toString());
			if (albumVos != null && albumVos.size() != 0) {
				return albumVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ������µ�ר�� (�Ѳ���)
	 * 
	 * @param number
	 *            ��Ҫר��������
	 * @return
	 */
	public ArrayList<AlbumVo> getNewAlbums(int number) {
		try {
			String sql = "select * from musicalbum where IsValidate=1 order by issueDate limit 0,"
					+ number;
			ArrayList<AlbumVo> albums = (ArrayList<AlbumVo>) getSqlMapClient()
					.queryForList("getNewAlbums", sql.toString());
			if (albums != null && albums.size() != 0) {
				return albums;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���ר��ID��ѯר�� (�Ѿ�����)
	 * 
	 * @param albumId
	 *            ר��ID
	 * @return
	 */
	public AlbumVo getAlbumByAlbumId(int albumId) {
		try {
			String sql = "select * from musicalbum where IsValidate=1 and id="
					+ albumId;
			AlbumVo album = (AlbumVo) getSqlMapClient().queryForObject(
					"getAlbumByAlbumId", sql);
			if (album != null) {
				return album;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���ר����ID�������и�ר��������
	 * 
	 * @param albumID
	 *            ר��ID
	 * @return
	 */
	public ArrayList<MusicVo> getMusicVosByAlbumID(int albumID) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.ID ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 and b.ID=");
			sql.append(albumID);

			// System.out.println(sql.toString());
			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("getMusicVosByAlbumID", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				return musicVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ����������ֲ�ѯ���� (�Ѳ���)
	 * 
	 * @param musicName
	 *            ������
	 * @return
	 */
	public ArrayList<MusicVo> searchMusicVos(String musicName) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.id ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 and a.musicName like ");
			sql.append("'%" + musicName + "%'");
			sql.append("or a.roleName like ");
			sql.append("'%" + musicName + "%'");
			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("searchMusicVos", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				// System.out.println("����:" + musicVos.get(0).getMusicName());
				return musicVos;
			} else {
				System.out.println(sql);
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ��ݸ��ֲ�ѯ����
	 * 
	 * @param musicName
	 *            ������
	 * @return
	 */
	public ArrayList<MusicVo> getMusicVosByRoleName(String roleName) {
		try {
			StringBuilder sql = new StringBuilder();
			sql
					.append("select a.ID,a.musicName,a.roleName,a.createTime,a.uploadName,a.musicWord,a.address,b.albumName,c.styleName,d.areaName,a.cateID,a.albumID,a.styleID ");
			sql.append("from musics a join musicalbum b on a.albumID = b.id ");
			sql.append("join musicstyle c on a.styleID = c.ID ");
			sql.append("join areas d on a.cateID=d.ID ");
			sql.append("where a.IsValidate=1 and a.roleName like ");
			sql.append("'%" + roleName + "%'");
			ArrayList<MusicVo> musicVos = (ArrayList<MusicVo>) getSqlMapClient()
					.queryForList("getMusicVosByRoleName", sql.toString());
			if (musicVos != null && musicVos.size() != 0) {
				return musicVos;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

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
			String sql = "select * from software where 1=1 " + pCondition
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
	 * 获得所有软件的数量
	 */
	public int getAllSoftwareCount() {

		try {
			String sql = "select * from software";
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

	public void insertAlbum(String sql) {
		try {
			getSqlMapClient().startTransaction();
			System.out.println(sql);
			getSqlMapClient().insert("insertAlbum", sql);
			getSqlMapClient().commitTransaction();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				getSqlMapClient().endTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public int getMaxAlbumId() {
		String sql = "select max(ID) from musicalbum";
		try {
			Integer count = (Integer) getSqlMapClient().queryForObject(
					"getMaxAlbumId", sql);
			return count.intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public void insertMusic(String sql) {
		try {
			getSqlMapClient().startTransaction();
			System.out.println(sql);
			getSqlMapClient().insert("insertMusic", sql);
			getSqlMapClient().commitTransaction();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				getSqlMapClient().endTransaction();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * ����
	 * 
	 * @param dcvo
	 * @return
	 * @throws Exception
	 */
	public String diaocha(DiaochaVo dcvo) throws Exception {
		if (dcvo != null) {
			try {
				String sql = "insert into diaocha(userID,dc1,dc2,dc3,dc4,dc5,dc6,dc7,dc8,dc9,dc10) values("
						+ dcvo.getUserID()
						+ ",'"
						+ dcvo.getDc1()
						+ "','"
						+ dcvo.getDc2()
						+ "','"
						+ dcvo.getDc3()
						+ "','"
						+ dcvo.getDc4()
						+ "','"
						+ dcvo.getDc5()
						+ "','"
						+ dcvo.getDc6()
						+ "','"
						+ dcvo.getDc7()
						+ "','"
						+ dcvo.getDc8()
						+ "','"
						+ dcvo.getDc9()
						+ "','"
						+ dcvo.getDc10() + "')";
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertdiaocha", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * Ͷ�߽���
	 * 
	 * @param svo
	 * @return
	 * @throws Exception
	 */
	public String addSuggest(SuggestsVo svo) throws Exception {
		if (svo != null) {
			try {
				String sql = "insert into suggests(userID,titles,contents) values("
						+ svo.getUserID()
						+ ",'"
						+ svo.getTitles()
						+ "','"
						+ svo.getContents() + "');";
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertsuggests", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * Ͷ�߽�����ʾ----������Ϣ
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<SuggestsVo> showSuggest() throws Exception {
		try {
			ArrayList<SuggestsVo> list = new ArrayList<SuggestsVo>();
			String sql = "select titles,contents,anwsers from suggests where IsValidate=1 and NOT ISNULL(anwsers);";
			list = (ArrayList<SuggestsVo>) getSqlMapClient().queryForList(
					"selectsuggests", sql);
			if (list != null && list.size() != 0) {
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���������
	 * 
	 * @param lvo
	 * @return
	 * @throws Exception
	 */
	public String sendMsgTofriend(LeavesVo lvo) throws Exception {
		if (lvo != null) {
			String sql = "insert into leaves (userID,msgs,leaverID) values("
					+ lvo.getUserID() + ",'" + lvo.getMsgs() + "',"
					+ lvo.getLeaverID() + ");";
			try {
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertleaves", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * �ظ�����
	 * 
	 * @param lvo
	 * @return
	 * @throws Exception
	 */
	public String answersLeave(LeavesVo lvo) throws Exception {
		if (lvo != null) {
			String sql = "update leaves set answers='" + lvo.getAnwsers()
					+ "' where ID=" + lvo.getID() + ";";
			try {
				getSqlMapClient().startTransaction();
				getSqlMapClient().update("answersleaves", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * �鿴����
	 * 
	 * @param userID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<LeavesVo> showLeaves(int userID) throws Exception {
		if (userID != 0) {
			ArrayList<LeavesVo> list = new ArrayList<LeavesVo>();
			try {
				String sql = "select t1.ID,t1.msgs,t2.username from leaves as t1 join users as t2 on t1.userID=t2.ID and t1.userID="
						+ userID + ";";
				list = (ArrayList<LeavesVo>) getSqlMapClient().queryForList(
						"selectleaves", sql);
				if (list != null && list.size() != 0) {
					return list;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * �ҹ�ע�ĵ�Ӱ
	 * 
	 * @param userID
	 * @return
	 * @throws Exception
	 */
	public ArrayList<MoviesVo> showGZ(int userID) throws Exception {
		if (userID != 0) {
			try {
				String sql = "select t1.ID,t1.MovieName,t1.roleName,t1.directors,t2.areaName from movies as t1 join areas as t2 join concerns as t3 on t1.areaID=t2.ID and t3.movieID=t1.ID and t3.userID="
						+ userID;
				ArrayList<MoviesVo> list = new ArrayList<MoviesVo>();
				list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
						"selectuserGZ", sql);
				if (list != null && list.size() != 0) {
					return list;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * ��ע��Ƶ
	 * 
	 * @param userID
	 * @param movieID
	 * @return
	 * @throws Exception
	 */
	public String userConcernsMovie(int userID, int movieID) throws Exception {
		if (userID != 0 && movieID != 0) {
			try {
				String sql = "insert into concerns(userID,movieID) values("
						+ userID + "," + movieID + ");";
				getSqlMapClient().startTransaction();
				getSqlMapClient().insert("insertConcerns", sql);
				sql = "update movies set concerns=concerns+1 where ID="
						+ movieID;
				getSqlMapClient().update("updateconcerns", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * ͶƱ
	 * 
	 * @param movieID
	 * @param voteNum
	 *            0 ��ϲ����1ϲ��
	 * @return
	 * @throws Exception
	 */
	public String userVoteMovie(int movieID, int voteNum) throws Exception {
		String sql = "";
		if (movieID != 0) {
			if (voteNum == 0) {
				sql = "update movies set voteNoLike=voteNoLike+1 where ID="
						+ movieID;
			} else {
				sql = "update movies set voteLike=voteLike+1 where ID="
						+ movieID;
			}
			try {
				getSqlMapClient().startTransaction();
				getSqlMapClient().update("updateVote", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	/**
	 * ��ѯ�û�����
	 * 
	 * @param userID
	 * @return
	 * @throws Exception
	 */
	public UserVo getUserForF(int userID) throws Exception {
		if (userID != 0) {
			try {
				String sql = "select ID,username,usermail,sex,age,hobbys from users where ID="
						+ userID;
				UserVo uservo = (UserVo) getSqlMapClient().queryForObject(
						"selectusermsg", sql);
				if (uservo != null) {
					return uservo;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public ArrayList<MoviesPathVO> getMoviesPathByID(int id) throws Exception {
		try {
			String sql = "select ID,address,movieID,movienum  from moviespath where movieID= "
					+ id + " ORDER BY movienum";
			ArrayList<MoviesPathVO> list = (ArrayList<MoviesPathVO>) getSqlMapClient()
					.queryForList("getmoviespath", sql);
			if (list != null || list.size() != 0) {
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
		return null;
	}

	public MoviesPathVO getMoviesPathByIDAndNum(int id, int num)
			throws Exception {
		try {
			String sql = "select ID,address,movieID,movienum from moviespath where movienum="
					+ num + " and movieID=" + id + " ORDER BY movienum";
			getSqlMapClient().update("shouchang", "update movies set playNum=playNum+1 where address="+id);
			MoviesPathVO moviesPath = (MoviesPathVO) getSqlMapClient()
					.queryForList("getmoviespath", sql).get(0);
			if (list != null || list.size() != 0) {
				return moviesPath;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
		return null;
	}

	public UserVo getUserByUserName(String userName) throws Exception {
		if (userName != null || userName != "") {
			UserVo user = new UserVo();
			String sql = "select ID,username,password,powers  from users where username='"
					+ userName + "'";
			try {
				user = (UserVo) getSqlMapClient().queryForObject("loginuser",
						sql);
				return user;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}

		}
		return null;
	}

	/**
	 * ��ȡͶ�߽���ظ�
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<SuggestAndComplainVO> getSuggestAndComplain()
			throws Exception {
		try {
			String sql = "SELECT sug.ID,sug.userID,com.subject,com.suggestMsg,sug.titles,sug.contents,sug.anwsers from suggests as sug ,complain as com where sug.userID=com.userID and sug.IsValidate=1;";
			ArrayList<SuggestAndComplainVO> sclist = (ArrayList<SuggestAndComplainVO>) getSqlMapClient()
					.queryForList("getsuggestandcomplain", sql);
			if (list != null || list.size() != 0) {
				return sclist;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ��֤����
	 * 
	 * @param usermail
	 * @return
	 * @throws Exception
	 */
	public String getEmail(String usermail) throws Exception {
		if (usermail == null || usermail.trim().equals("")) {
			return "error";
		} else {
			try {
				String sql = "select count(*) from users where usermail='"
						+ usermail + "';";
				System.out.println(sql);
				int emails = Integer.parseInt(getSqlMapClient().queryForObject(
						"selectReEmail", sql).toString());
				if (emails > 0) {
					return "exits";
				} else {
					return "ok";
				}
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}
		}
	}

	/**
	 * �ղ�
	 * 
	 * @param movieID
	 * @return
	 * @throws Exception
	 */
	public String shouChang(int movieID) throws Exception {
		if (movieID != 0) {
			try {
				String sql = "";
				getSqlMapClient().startTransaction();
				sql = "update movies set keepNum=keepNum+1 where ID=" + movieID;
				getSqlMapClient().update("shouchang", sql);
				getSqlMapClient().commitTransaction();
				return "ok";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				getSqlMapClient().endTransaction();
			}
		}
		return "error";
	}

	public ArrayList<MoviesVo> getMoviesNameAll() throws Exception {
		try {
			String sql = "select ID,moviename,address from movies order by id";
			list = (ArrayList<MoviesVo>) getSqlMapClient().queryForList(
					"selectMoviesComedys", sql);
			if (list != null && list.size() != 0) {
				return list;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String addMoviesPath(String Path, String ID, String num)
			throws Exception {

		try {
			String sql = "";
			getSqlMapClient().startTransaction();
			sql = "INSERT INTO moviespath (address,movieID,movienum)  VALUES('"
					+ Path + "'," + ID + "," + num + ")";
			getSqlMapClient().insert("addmoviepath", sql);
			getSqlMapClient().commitTransaction();
			return "ok";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			getSqlMapClient().endTransaction();
		}

		return "error";
	}

	/**
	 * �������а�����
	 * 
	 * @return
	 */
	private ArrayList<MoviesVo> splitName(ArrayList<MoviesVo> movielist)
			throws Exception {
		if (movielist != null) {
			ArrayList<MoviesVo> listmovie = movielist;
			for (int i = 0; i < listmovie.size(); i++) {
				String moviename = listmovie.get(i).getMovieName();
				if (moviename.length() > 7) {
					moviename = moviename.substring(0, 7) + "...";
					listmovie.get(i).setMovieName(moviename);
				}
			}
			return listmovie;
		}
		return movielist;
	}

	public String addmovieimg(String img, int id) throws Exception {

		try {
			String sql = "";
			getSqlMapClient().startTransaction();
			sql = "update movies set mainPic='" + img + "' where id=" + id;
			getSqlMapClient().insert("insertConcerns", sql);
			getSqlMapClient().commitTransaction();
			return "ok";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			getSqlMapClient().endTransaction();
		}

		return "error";

	}

	public void setPageViews(int Browse) throws Exception {
		String sql = "";
		switch (Browse) {
		case 1://首页
			sql = "update pageviews set startindex=startindex+1;";
			break;
		case 2://电影页
			sql = "update pageviews set movie=movie+1;";
			break;
		case 3://电视剧页
			sql = "update pageviews set tv=tv+1;";
			break;
		case 4://综艺页
			sql = "update pageviews set zongyi=zongyi+1;";
			break;
		case 5://动漫页
			sql = "update pageviews set dongman=dongman+1;";
			break;
		case 6://播放页
			sql = "update pageviews set player=player+1;";
			break;
		}
		try {
			getSqlMapClient().startTransaction();
			getSqlMapClient().update("shouchang", sql);
			getSqlMapClient().commitTransaction();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			getSqlMapClient().endTransaction();
		}


	}

}
