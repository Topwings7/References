package dataIOTest;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class DataIOTest {
	public static void main(String[] args) {
		// 기초 자료형으로 데이타를 읽고 쓰도록 도와주는 아이
		
		File file = new File("src/dataIOTest/ex01");
		
		try(FileOutputStream out  = new FileOutputStream(file);
			FileInputStream  in   = new FileInputStream(file);
			DataOutputStream dout = new DataOutputStream(out);
			DataInputStream  din  = new DataInputStream(in);){
			
			int    num = 100000;
			char   ch  = '가';
			double PI  = 3.14;
			String str = "안녕하세요";
			
			dout.writeInt(num); 
			dout.writeChar(ch);
			dout.writeDouble(PI);
			dout.writeUTF(str);
			
			dout.flush();
			System.out.println("작성 종료");
			// int:4byte char:2byte 바이트때문에 입력양식과 동일하게 읽어줘야하다 안그럼깨짐
			System.out.println(din.readInt());
			System.out.println(din.readChar());
			System.out.println(din.readDouble());
			System.out.println(din.readUTF());
			
		}catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		}catch (IOException e) {
			System.out.println(e.getMessage());
		}
				
	}
}
