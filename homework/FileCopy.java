package homework;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileCopy {
	public static void main(String[] args) {
		File file = new File("src/homework/icandoit.png");
		
		try(FileInputStream in = new FileInputStream(file);
			FileOutputStream out = new FileOutputStream("src/homework/wecandoit.png")){
			
			for (int i = 0; i < file.length(); i++) {
				out.write(in.read());
			}
			System.out.println("복사 완료");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
