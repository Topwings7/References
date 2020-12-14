package homework;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Time;

public class FileCopy2ver {
	public static void main(String[] args) {
		File file = new File("src/homework/icandoit.png");
		
		try(BufferedInputStream bin = new BufferedInputStream(new FileInputStream(file));
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream("src/homework/hecandoit.png"));) {
			
			Long starttime = System.currentTimeMillis();
			
			
			byte[] temp = new byte[1024*8];
			
			int readlen = temp.length;
			while((readlen = bin.read(temp, 0, readlen)) != -1) {
				bout.write(temp, 0, readlen);
			}
				
			Long endtime = System.currentTimeMillis();
			Long time = endtime-starttime;
			
			
			System.out.println("걸린시간 :"+time);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
