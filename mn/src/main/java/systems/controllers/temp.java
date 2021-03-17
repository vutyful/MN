package systems.controllers;

import java.io.*;

public class temp {
	public static void main(String[] args) {
		try{
			String str = "ipython " + System.getProperty("user.dir").replace("\\", "/") + "/src/main/java/systems/controllers/temp.py";
			
			System.out.println(str);

		    Process p = Runtime.getRuntime().exec(str);

		    BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));

		    String line = null;
		    
		    System.out.println("실행");
		    
		    while((line = br.readLine()) != null){

		        System.out.println(line);

		    }

		}catch(Exception e){

		    System.out.println("err발생" + e);

		}finally
		{
			System.out.println("종료");
		}
	}
}
