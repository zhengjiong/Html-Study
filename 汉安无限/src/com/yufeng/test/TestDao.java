package com.yufeng.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import com.sun.jndi.url.corbaname.corbanameURLContextFactory;
import com.yufeng.action.LoginAction;
import com.yufeng.bean.SuggestAndComplainVO;
import com.yufeng.bean.UserVo;
import com.yufeng.dao.impl.DaoImpl;

public class TestDao {
	UserVo user = new UserVo();
	LoginAction la = new LoginAction();

	// public void testLoginUser() throws Exception{
	// user=dao.loginUser("tracy","tracy123");
	// Assert.isNull(user);
	// }
	// @Test
	// public void testLogin(UserVo user) throws Exception{
	// la.setUserName("tracy");
	// la.setPasswd("tracy123");
	// String ss=null;
	// ss=la.login();
	// Assert.assertTrue(ss.equals("loginFail"));
	// }

	public static boolean readfile(String filepath)
			throws FileNotFoundException, IOException {
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
						String sqlmoviePath=readfile.getAbsolutePath().substring(readfile.getAbsolutePath().indexOf("\\")+1).replace("\\", "/");
						String movie=sqlmoviePath.substring(sqlmoviePath.lastIndexOf("/")+1, sqlmoviePath.lastIndexOf("."));
						String movieName[]=movie.split("_");
						System.out.println(movieName[0]);
						if(movieName.length==1){
							System.out.println(1);
						}else {
							System.out.println("--"+movieName[movieName.length-1]);
						}
					} else if (readfile.isDirectory()) {
						readfile(filepath + "\\" + filelist[i]);
					}
				}

			}

		} catch (FileNotFoundException e) {
			System.out.println("readfile()   Exception:" + e.getMessage());
		}
		return true;
	}

	public static boolean readFileName(String filepath)
			throws FileNotFoundException, IOException {
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
						System.out.println("_-----------"
								+ readfile.getAbsolutePath().substring(0,
										lastIndex + 1)
								+ CnToSpell1
										.getSpell(readfile.getName(), false));
						if (readfile.renameTo(new File(readfile
								.getAbsolutePath().substring(0, lastIndex + 1)
								+ CnToSpell1
										.getSpell(readfile.getName(), false)))) {
							System.out.println("ok");
						} else {
							System.out.println("no");
						}
						// if (houzui == ".flv" || houzui.equals(".flv")) {
						// System.out.println("XXXX" + houzui);
						// String filename = readfile.getName().substring(0,
						// readfile.getName().lastIndexOf("."));
						// System.out.println(filename);
						// String[] s = filename.split("_");
						// System.out.println(s[0]);
						// String newFileName = s[0].substring(s[0]
						// .lastIndexOf(".") + 1);
						//
						// System.out.println(newFileName + houzui);
						// System.out.println("_-----------"+readfile.getAbsolutePath());
						// // if (readfile.renameTo(new File(readfile
						// // .getAbsolutePath().substring(0,
						// // lastIndex + 1)
						// // + newFileName + houzui))) {
						// // System.out.println("ok");
						// // } else {
						// // System.out.println("no");
						// // }
						// }
					} else if (readfile.isDirectory()) {
						readFileName(filepath + "\\" + filelist[i]);
					}
				}

			}

		} catch (FileNotFoundException e) {
			System.out.println("readfile()   Exception:" + e.getMessage());
		}
		return true;
	}

	public static boolean readfile1(String filepath)
			throws FileNotFoundException, IOException {
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
						if (houzui == ".flv" || houzui.equals(".flv")) {
							System.out.println(houzui);
							String filename = readfile.getName().substring(0,
									readfile.getName().indexOf("."));
							System.out.println(filename);

							System.out.println(filename + houzui);
							if (readfile.renameTo(new File(readfile
									.getAbsolutePath().substring(0,
											lastIndex + 1)
									+ filename + houzui))) {
								System.out.println("ok");
							} else {
								System.out.println("no");
							}
						}
					} else if (readfile.isDirectory()) {
						readfile(filepath + "\\" + filelist[i]);
					}
				}

			}

		} catch (FileNotFoundException e) {
			System.out.println("readfile()   Exception:" + e.getMessage());
		}
		return true;
	}

	public static boolean deletefile(String delpath)
			throws FileNotFoundException, IOException {
		File file = new File(delpath);
		if (!file.isDirectory()) {
			System.out.println("1");
			// file.delete();
		} else if (file.isDirectory()) {
			System.out.println("2");
			String[] filelist = file.list();
			for (int i = 0; i < filelist.length; i++) {
				File delfile = new File(delpath + "\\" + filelist[i]);
				if (!delfile.isDirectory()) {
					System.out.println("path=" + delfile.getPath());
					System.out.println("absolutepath="
							+ delfile.getAbsolutePath());
					System.out.println("name=" + delfile.getName());
					String houzhui = delfile.getName().substring(
							delfile.getName().lastIndexOf("."));
					System.out.println(houzhui);
					if (houzhui.equals(".flv") || houzhui == ".flv") {
						delfile.delete();
						System.out.println("删除文件成功");
					}
				} else if (delfile.isDirectory()) {
					// deletefile(delpath + "\\" + filelist[i]);
				}
			}
			// file.delete();

		}
		return true;
	}

	public static void main(String[] arg) {
		/*try {
			readfile("F:/Media");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		String address="f:/test/大魔术师/大魔术师.rmvb";
		String s[]=address.split(":");
		System.out.println(s[0]);

		/*
		 * try { //readfile1("F:/Media"); //deletefile("F:/Media"); } catch
		 * (FileNotFoundException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (IOException e) { // TODO Auto-generated
		 * catch block e.printStackTrace(); }
		 */

	}

}
