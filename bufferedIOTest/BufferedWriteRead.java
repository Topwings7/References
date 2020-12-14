package bufferedIOTest;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class BufferedWriteRead {
	public static void main(String[] args) {
		
		File file = new File("src/bufferedIOTest/test02");
		
		try(BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(file));
				BufferedInputStream bin = new BufferedInputStream(new FileInputStream(file));){
			
			for (byte i = 'a'; i <= 'z'; i++) {
				bout.write(i);
			}
			bout.flush();
			
			for (int i = 0; i < file.length(); i++) {
				System.out.println(bin.read());
			}
				
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
	}
}
