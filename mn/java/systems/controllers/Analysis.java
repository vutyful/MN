package systems.controllers;

import java.io.*;

public class Analysis extends Thread
{

	public void run()
	{
		String tp = this.getClass().getResource("/").toString().replace("file:/", "") + "systems/controllers/";
		
		try{			
			String str = "ipython " + tp + "Analysis.py " + tp;
	
			System.out.println("Analysis 실행");
			
		    Process p = Runtime.getRuntime().exec(str);
		    
		    System.out.println("실행중...");

		    BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		    
		    String line = null;
		    
		    while((line = br.readLine()) != null){
		        System.out.println(line);
		    }
	
		}catch(Exception e){
	
		    System.out.println("err발생" + e);
	
		}finally
		{
			System.out.println("Analysis 종료");
		}
	}
}
