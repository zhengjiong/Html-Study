package com.yufeng.action;
/**
 * 
 * @author zhengjiong
 * 2012-3-23 ÏÂÎç11:26:35
 */
public class UniqueStringGenerator {
	private static final int MAX_GENERATE_COUNT = 99999;   
    private static int generateCount = 0;  
	public UniqueStringGenerator()   
    {   
    }   
    public static synchronized String getUniqueString()   
    {   
        if(generateCount > 99999)   
            generateCount = 0;   
        String uniqueNumber = Long.toString(System.currentTimeMillis()) + Integer.toString(generateCount);   
        generateCount++;   
        return uniqueNumber;   
    }   
}
