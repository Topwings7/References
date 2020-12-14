package io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileIoStreamExtest {
	public static void main(String[] args) {
		//파일 읽고 쓰고

		File file = new File("src/fileEx/test03.txt");
		
		try (FileOutputStream fout = new FileOutputStream(file);
			){
			for (char i = 'a' ; i < 'z'; i++) {
				fout.write(i);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		try (FileInputStream fin = new FileInputStream(file);){
			
			byte[]b = new byte['a'-'z'+1];
			
			fin.read(b);
			for (byte c : b) {
				System.out.println((char)c);
			}
		} catch (Exception e) {
		}
	}
}
