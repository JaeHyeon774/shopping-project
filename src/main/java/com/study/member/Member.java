package com.study.member;

import java.io.File;

public class Member {

    public static int RECORD_PER_PAGE = 3;
	
	public static synchronized String getUploadDir() {
		String path = "";
        if (File.separator.equals("\\")) {
            path = "c:/ai study/deploy/shopping/member/storage/";
            System.out.println("Windows 10: " + path);
            
        } else {
            // System.out.println("Linux");
            path = "/home/ubuntu/deploy/shopping/contents/storage/";
        }
        
        return path;
	}

}
