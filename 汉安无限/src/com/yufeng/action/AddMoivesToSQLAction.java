package com.yufeng.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.test.CnToSpell1;

public class AddMoivesToSQLAction extends ActionSupport implements SessionAware {
	private Map session;
	private ArrayList<MoviesVo> list;
	private String filepath;

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public ArrayList<MoviesVo> getList() {
		return list;
	}

	public void setList(ArrayList<MoviesVo> list) {
		this.list = list;
	}

	public DaoImpl getDao() {
		return dao;
	}

	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}

	private DaoImpl dao;

	public String addMoviePath() throws Exception {
		getmovies(filepath);
		return null;
	}

	public String AddMovie() throws Exception {
		list = dao.getMoviesNameAll();
		for (int i = 0; i < list.size(); i++) {

			FileReader reader = null;
			try {
				reader = new FileReader(filepath);
				BufferedReader br = new BufferedReader(reader);
				String s1 = null;
				while ((s1 = br.readLine()) != null) {
					String[] s = s1.split("/");

					System.out.println(s1);
					if (s[s.length - 1].indexOf("_") != -1) {
						String moviename = s[s.length - 1].substring(0,
								s[s.length - 1].indexOf("_"));
						if (list.get(i).getMovieName().equals(moviename)) {
							dao.addMoviesPath(s1, list.get(i).getID()+"",
									s[s.length - 1].substring(s[s.length - 1]
											.indexOf("_") + 1, s[s.length - 1]
											.indexOf(".")));
							System.out.println("------------");
						}
					}
					if (s[s.length - 1].indexOf("_") == -1
							&& list.get(i).getMovieName().equals(
									s[s.length - 1].substring(0,
											s[s.length - 1].indexOf(".")))) {
						dao.addMoviesPath(s1, list.get(i).getID()+"", 1 + "");
						// System.out.println(s[s.length - 1].substring(0,
						// s[s.length - 1].indexOf(".")));
					}
				}
				br.close();
				reader.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return null;
	}

	public String addmovieimg() throws Exception {
		try {

			File file = new File(filepath);
			if (!file.isDirectory()) {
				System.out.println("文件");
				System.out.println("path=" + file.getPath());
				System.out.println("absolutepath=" + file.getAbsolutePath());
				System.out.println("name=" + file.getName());
			} else if (file.isDirectory()) {
				System.out.println("文件夹");
				String[] filelist = file.list();

				for (int i = 0; i < filelist.length; i++) {
					File readfile = new File(filepath + "\\" + filelist[i]);
					if (!readfile.isDirectory()) {
						System.out.println("path=" + readfile.getPath());
						System.out.println("absolutepath="
								+ readfile.getAbsolutePath());
						System.out.println("name=" + readfile.getName());
						int lastIndex = readfile.getAbsolutePath().lastIndexOf(
								File.separator);
						String houzui = readfile.getName().substring(
								readfile.getName().lastIndexOf("."));
						System.out.println(readfile.getName().substring(0,
								readfile.getName().lastIndexOf(".")));
						list = dao.getMoviesNameAll();
						for (int j = 0; j < list.size(); j++) {
							String sqlname = CnToSpell1.getSpell(list.get(j)
									.getMovieName().trim(), false);
							String filename = CnToSpell1.getSpell(
									readfile.getName()
											.substring(
													0,
													readfile.getName()
															.lastIndexOf(".")),
									false);
							if (sqlname.equals(filename)) {
								System.out.println("-------------");
								System.out.println(list.get(j).getMovieName());
								dao.addmovieimg("images/"
										+ CnToSpell1.getSpell(readfile
												.getName(), false), list.get(j)
										.getID());
								readfile.renameTo(new File(readfile
										.getAbsolutePath().substring(0,
												lastIndex + 1)
										+ CnToSpell1.getSpell(readfile
												.getName(), false)));
							}
						}
					} else if (readfile.isDirectory()) {
						readFileName(filepath + "\\" + filelist[i]);
					}

				}
			}

		} catch (FileNotFoundException e) {
			System.out.println("readfile()   Exception:" + e.getMessage());
		}
		return null;
	}

	public static ArrayList readFileName(String filepath)
			throws FileNotFoundException, IOException {
		ArrayList list = new ArrayList();
		try {

			File file = new File(filepath);
			if (!file.isDirectory()) {
				// System.out.println("文件");
				// System.out.println("path=" + file.getPath());
				// System.out.println("absolutepath=" + file.getAbsolutePath());
				// System.out.println("name=" + file.getName());
			} else if (file.isDirectory()) {
				System.out.println("文件夹");
				String[] filelist = file.list();
				for (int i = 0; i < filelist.length; i++) {
					File readfile = new File(filepath + "\\" + filelist[i]);
					if (!readfile.isDirectory()) {
						// System.out.println("path=" + readfile.getPath());
						// System.out.println("absolutepath="
						// + readfile.getAbsolutePath());
						// System.out.println("name=" + readfile.getName());
						int lastIndex = readfile.getAbsolutePath().lastIndexOf(
								File.separator);
						String houzui = readfile.getName().substring(
								readfile.getName().lastIndexOf("."));
						// System.out.println("_-----------"
						// + readfile.getAbsolutePath().substring(0,
						// lastIndex + 1)
						// + CnToSpell1
						// .getSpell(readfile.getName(), false));
						//						
						list.add(readfile.getName());

					} else if (readfile.isDirectory()) {
						readFileName(filepath + "\\" + filelist[i]);
					}
				}

			}

		} catch (FileNotFoundException e) {
			System.out.println("readfile()   Exception:" + e.getMessage());
		}
		return list;
	}

	public  boolean getmovies(String filepath)
			throws Exception {
		list = dao.getMoviesNameAll();
		try {

			File file = new File(filepath);
			if (!file.isDirectory()) {
				System.out.println("文件");
//				System.out.println("path=" + file.getPath());
//				System.out.println("absolutepath=" + file.getAbsolutePath());
//				System.out.println("name=" + file.getName());
			} else if (file.isDirectory()) {
				System.out.println("文件夹");
				String[] filelist = file.list();
				
				for (int i = 0; i < filelist.length; i++) {
					File readfile = new File(filepath + "\\" + filelist[i]);
					if (!readfile.isDirectory()) {
//						System.out.println("path=" + readfile.getPath());
						//System.out.println("absolutepath="
						//		+ readfile.getAbsolutePath());
//						System.out.println("name=" + readfile.getName());
						int lastIndex = readfile.getAbsolutePath().lastIndexOf(
								File.separator);
						
						
						String panfu[]=readfile.getAbsolutePath().split(":");
						String path="";
						if (panfu[0].equals("f")){
							path="data1/";
						}
						if (panfu[0].equals("g")){
							path="data2/";
						}
						if (panfu[0].equals("h")){
							path="data3/";
						}
						if (panfu[0].equals("i")){
							path="data4/";
						}
						if (panfu[0].equals("j")){
							path="data5/";
						}
						if (panfu[0].equals("k")){
							path="data6/";
						}
						String sqlmoviePath = readfile.getAbsolutePath()
								.substring(
										readfile.getAbsolutePath()
												.indexOf("\\") + 1).replace(
										"\\", "/");
						if(sqlmoviePath.lastIndexOf(".")!=-1){
						String movie = sqlmoviePath.substring(sqlmoviePath
								.lastIndexOf("/") + 1, sqlmoviePath
								.lastIndexOf("."));
						
						String movieName[] = movie.split("_");
						String msg="";
						for (int j = 0; j < list.size(); j++) {
						if(list.get(j).getMovieName().equals(movieName[0]))
						{
							if (movieName.length == 1) {
								msg=dao.addMoviesPath(path+sqlmoviePath, list.get(j).getAddress(), 1 + "");
								System.out.println("添加单集"+msg);
							} else {
								msg=dao.addMoviesPath(path+sqlmoviePath, list.get(j).getAddress(),movieName[movieName.length - 1]);
								System.out.println("添加多集"
										+ msg);
							}
						}
						}}
					} else if (readfile.isDirectory()) {
						getmovies(filepath + "\\" + filelist[i]);
					}
				}
				
			}

		} catch (FileNotFoundException e) {
			System.out.println("readfile()   Exception:" + e.getMessage());
		}
		return true;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

}
