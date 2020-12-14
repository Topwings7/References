package bufferedIOTest;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class BufferedIOTest {
	public static void main(String[] args) {
		//보조스트림은 데이타 입출력 스트림과 연결해서 사용을 한다
		//배열->데이터씽크스트림->보조스트림
		
		File file = new File("src/bufferedIOTest/test01");
		
		FileOutputStream     out       = null;
		BufferedOutputStream bout = null;   
		FileInputStream      in         = null;
		BufferedInputStream  bin    = null;  //size 1024*8  8Kilo Byte 만큼의 공간을 가지고있다 
		try {
			//쓰기
			//파일에서 기본스트림 열고 
			out = new FileOutputStream(file);
			//보조스트림연결
			bout = new BufferedOutputStream(out);
			//읽기
			//기본스트림 열고
			in = new FileInputStream(file);
			//보조스트림연결
			bin = new BufferedInputStream(in);
			
			for (int i = 0; i < 1024*8+1; i++) { //버퍼 용량을 넘치게 쏟아내게
				bout.write(i);
			}
			bout.flush(); //담길 내용물을 비워내라  이시점에 파일에 작성됨    출력방법 //1. 버퍼용량넘치게 2.플러쉬메소드 3.트라이캐취문을 아래에
			System.out.println("파일 작성 완료");
			
			System.out.println(bin.read());
			System.out.println(bin.read());
			
			System.out.println("읽기 완료");
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		}catch (IOException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if(bin  != null) bin.close(); //버퍼드 인풋은에 쌓였다가 클로우즈 시에 파일에 작성된다
				if(in   != null) in.close(); 
				if(bout != null) bout.close();
				if(out  != null) out.close();
				
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
		}
		
	}
}
