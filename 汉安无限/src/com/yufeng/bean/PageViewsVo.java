package com.yufeng.bean;

import java.io.Serializable;

public class PageViewsVo implements Serializable {

	private int id;
	private int startindex;
	private int movie;
	private int tv;
	private int zongyi;
	private int dongman;
	private int player;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getStartindex() {
		return startindex;
	}
	public void setStartindex(int startindex) {
		this.startindex = startindex;
	}
	public int getMovie() {
		return movie;
	}
	public void setMovie(int movie) {
		this.movie = movie;
	}
	public int getTv() {
		return tv;
	}
	public void setTv(int tv) {
		this.tv = tv;
	}
	public int getZongyi() {
		return zongyi;
	}
	public void setZongyi(int zongyi) {
		this.zongyi = zongyi;
	}
	public int getDongman() {
		return dongman;
	}
	public void setDongman(int dongman) {
		this.dongman = dongman;
	}
	public int getPlayer() {
		return player;
	}
	public void setPlayer(int player) {
		this.player = player;
	}
}
