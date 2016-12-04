package com.yufeng.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.yufeng.dao.impl.DaoImpl;

public class AddMusicAction extends ActionSupport {
	private DaoImpl dao;
	private String path;
	public DaoImpl getDao() {
		return dao;
	}
	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String execute() throws Exception {
		long a = System.currentTimeMillis();
		ArrayList listDir = new ArrayList();
		//File root = new File("F:\\habeyond_2\\habeyond\\WebRoot\\musics");
		File root = new File(path);
		File files[] = root.listFiles();
		for (int i = 0; i < files.length; i++) {
		    if (files[i].isDirectory())
		    {
		    	listDir.add(files[i]);
		    	//System.out.println("is Directory "+files[i].getAbsolutePath());
		    }else {
		    	//System.out.println("is not Directory "+files[i].getAbsolutePath());
			}
		}
		File tmp;
		while (!listDir.isEmpty()) {
		    tmp = (File) listDir.remove(0);
		    if (tmp.isDirectory()) {
		        files = tmp.listFiles();
		        if (files == null){
		        	continue;
		        }
		        String album = "";
    			String singer = "";
    			String company = "";
    			String time = "";
    			int style = 0;
    			String[] arrays;
    			
    			
    			StringBuffer cover = new StringBuffer();
    			
    			ArrayList<String> musicPathList = new ArrayList<String>();
    			
		        for (int i = 0; i < files.length; i++) {
		            /*if (files[i].isDirectory()){
		            	listDir.add(files[i]);
		            }else{
		            	System.out.println(files[i].getAbsolutePath());
		            }*/
		        	File f = files[i];
		        	String absPathName = f.getAbsolutePath();
		        	//absPathName = absPathName.toLowerCase();
		        	
		        	StringBuffer musicPathSB = new StringBuffer();
        			
		        	if(absPathName.endsWith(".txt"))
		        	{
	        			
		        		//System.out.println("文本文件 :" + absPathName);
		        		BufferedReader br = 
		        					new BufferedReader(new FileReader(new File(absPathName)));
		        		String line = "";
		        		while (null != (line = br.readLine() )) {
							if(line.startsWith("专辑")){
								arrays = line.split(":");
								album = arrays[1];
							}else if (line.startsWith("歌手")) {
								arrays = line.split(":"); 
								singer = arrays[1];
							}else if (line.startsWith("公司")) {
								arrays = line.split(":"); 
								company = arrays[1];
							}else if (line.startsWith("时间")) {
								arrays = line.split(":"); 
								time = arrays[1];
							}else if (line.startsWith("风格")) {
								arrays = line.split(":"); 
								String styleStr = arrays[1];
								if(styleStr.equals("经典老歌")){
									style = 2;
								}else if (styleStr.equals("流行歌曲")) {
									style = 3;
								}else if (styleStr.equals("网络红歌")) {
									style = 4;
								}
								
							}
						}
		        		//System.out.println(album + singer + company + time + style);
		        	}else if (absPathName.endsWith(".jpg") || absPathName.endsWith(".gif") || absPathName.endsWith(".png")) {
		        		//cover = f.getParent();
		        		String[] fileArray = absPathName.split("\\\\");
		        		for(int j = fileArray.length - 3 ; j < fileArray.length; j++){
		        			cover.append(fileArray[j]);
		        			if(j != fileArray.length -1)
		        			{
		        				cover.append("\\\\");
		        			}
		        		}
					}else if (absPathName.endsWith(".mp3")) {
						String[] fileArray = absPathName.split("\\\\");
		        		for(int j = fileArray.length - 3 ; j < fileArray.length; j++){
		        			musicPathSB.append(fileArray[j]);
		        			if(j != fileArray.length -1)
		        			{
		        				musicPathSB.append("\\\\");
		        			}
		        		}
						musicPathList.add(musicPathSB.toString());
						//System.out.println(musicPathSB.toString());
					}
		        }
		        //System.out.println(cover.toString());
		        //System.out.println("----------------------------");
		        //插入专辑
		        String sql = "insert into musicalbum (albumName,singer,company,issueDate,cover,IsValidate) values('"+album+"','"+singer+"','"+company+"','"+time+"','"+cover+"',1)";
		        //String tempSql = new String(sql.getBytes("gbk"), "UTF-8");
		        dao.insertAlbum(sql);
		        System.out.println(sql);
		        int max = dao.getMaxAlbumId();
		        for(int i = 0; i < musicPathList.size();i++)
		        {
		        	String musicPath = musicPathList.get(i);
		        	String[] musicPathSplit = musicPath.split("\\\\");
		        	String musicName = (musicPathSplit[musicPathSplit.length-1]).substring(0, (musicPathSplit[musicPathSplit.length-1]).length()-4);
		        	//System.out.println("musicName-------->"+musicName);
		        	String sql2 = "INSERT INTO musics (musicName,roleName,cateID,createTime,IsValidate,albumID,styleID,address) VALUES ('"+musicName+"', '"+singer+"', '1', '"+time+"', '1', "+max+", "+style+",'"+musicPath+"')";
		        	//String tempSql2 = new String(sql2.getBytes("gbk"), "UTF-8");
		        	dao.insertMusic(sql2);
		        	System.out.println(sql2);
		        }
		    } 
		}
		
		System.out.println(System.currentTimeMillis() - a);
		
		return null;
	}
}
