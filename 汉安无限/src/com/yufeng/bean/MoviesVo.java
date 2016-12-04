package com.yufeng.bean;

import java.io.Serializable;
/**
 * ��ƵVo
 * @author Administrator
 *
 */
public class MoviesVo implements Serializable {

	private int ID; 
	//ӰƬ���
	private String MovieName;
	//����·��
	private String address;
	//��ӳʱ��
	private String creatTime;
	//����
	private String roleName;
	//���
	private String directName;
	//�㲥����
	private int playNum;
	private int keepNum;
	//��������
	private String areaName;
	//��Ƶ����(С��)
	private String cateSname;
	//��Ƶ��������(���ǵ�Ӱ���ӻ��Ƕ���)
	private String cateName;
	//��Ƶ�ϴ�������
	private String uploadName;
	//�ϴ�ʱ��
	private String updateTime;
	//��ƵͼƬ·��
	private String mainPic;
	//��Ӱ����
	private int sore;
	//��Ա��
	private String rolesName;
	//����
	private String directors;
	//��Ƶ����
	private int voteNoLike;
	private int voteLike;
	private String updateNum;
	private int cateID;
	private int bigCateID;
	
	public int getBigCateID() {
		return bigCateID;
	}

	public void setBigCateID(int bigCateID) {
		this.bigCateID = bigCateID;
	}

	public int getCateID() {
		return cateID;
	}

	public void setCateID(int cateID) {
		this.cateID = cateID;
	}

	

	public int getKeepNum() {
		return keepNum;
	}

	public void setKeepNum(int keepNum) {
		this.keepNum = keepNum;
	}

	public int getVoteNoLike() {
		return voteNoLike;
	}

	public void setVoteNoLike(int voteNoLike) {
		this.voteNoLike = voteNoLike;
	}

	public int getVoteLike() {
		return voteLike;
	}

	public void setVoteLike(int voteLike) {
		this.voteLike = voteLike;
	}
	private int seriesNum;
	//����ͼƬ
	private String indexPic;
	public MoviesVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MoviesVo(int id, String movieName, String address, String creatTime,
			String roleName, String directName, int playNum, String areaName,
			String cateSname, String cateName, String uploadName,
			String updateTime, String mainPic, int sore, String rolesName,
			String directors, int seriesNum, String indexPic,String updateNum) {
		super();
		ID = id;
		MovieName = movieName;
		this.address = address;
		this.creatTime = creatTime;
		this.roleName = roleName;
		this.directName = directName;
		this.playNum = playNum;
		this.areaName = areaName;
		this.cateSname = cateSname;
		this.cateName = cateName;
		this.uploadName = uploadName;
		this.updateTime = updateTime;
		this.mainPic = mainPic;
		this.sore = sore;
		this.rolesName = rolesName;
		this.directors = directors;
		this.seriesNum = seriesNum;
		this.indexPic = indexPic;
		this.updateNum=updateNum;
	}

	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getMovieName() {
		return MovieName;
	}
	public void setMovieName(String movieName) {
		MovieName = movieName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDirectName() {
		return directName;
	}
	public void setDirectName(String directName) {
		this.directName = directName;
	}
	public int getPlayNum() {
		return playNum;
	}
	public void setPlayNum(int playNum) {
		this.playNum = playNum;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getCateSname() {
		return cateSname;
	}
	public void setCateSname(String cateSname) {
		this.cateSname = cateSname;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getUploadName() {
		return uploadName;
	}
	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public String getMainPic() {
		return mainPic;
	}
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	public int getSore() {
		return sore;
	}
	public void setSore(int sore) {
		this.sore = sore;
	}
	public String getRolesName() {
		return rolesName;
	}
	public void setRolesName(String rolesName) {
		this.rolesName = rolesName;
	}
	public String getDirectors() {
		return directors;
	}
	public void setDirectors(String directors) {
		this.directors = directors;
	}
	public int getSeriesNum() {
		return seriesNum;
	}
	public void setSeriesNum(int seriesNum) {
		this.seriesNum = seriesNum;
	}
	public String getIndexPic() {
		return indexPic;
	}
	public void setIndexPic(String indexPic) {
		this.indexPic = indexPic;
	}

	public String getUpdateNum() {
		return updateNum;
	}

	public void setUpdateNum(String updateNum) {
		this.updateNum = updateNum;
	}

	
}
