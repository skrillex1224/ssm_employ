package com.tjpu.employ.utils;

import java.io.FileOutputStream;
import java.io.IOException;

public class FileDownLoadUtils {
	private static FileOutputStream fos;
	
	//暴露方法
	public static boolean downLoadFileTo(String path,byte[] bytes){
		return downloadFile(path,bytes);
	}
	
	private static boolean downloadFile(String path,byte[] bytes){
		try {
			fos = new FileOutputStream(path);
			
			fos.write(bytes);
		} catch (IOException e) {
			return false;
		}finally {
			if(fos != null){
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return true;
		
	}
	
	
}
