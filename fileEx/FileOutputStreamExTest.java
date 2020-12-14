package fileEx;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class FileOutputStreamExTest {
	public static void main(String[] args) {
		//파일을 쓰는 기능이 있는 fileOutputStream
		//파일생성을 직접하지 않음
		String fileName = "src/fileEx/test01.text"; //패키지안쪽경로 src/fileEx/test01.text;

		//파일을 아웃풋 스트림 객체
		OutputStream fout =	null;

		//파일과 파일아웃풋스트림객체를 연결하여 파일아웃풋 스트림 객체 생성
		try {
			fout = new FileOutputStream(fileName); // 파일을 넣거나  // 파일명의 스트링을 넣을수있다 
			fout.write(0);
			fout.write(1);
			fout.write(2);
			fout.write(3);
			fout.write(4);
			fout.write(97); //파일은 정수가 저장되고, 읽는방식으로 출력된다 A
			//인코딩방식

			System.out.println("파일작성 완료"); 
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if(fout != null) { //fout 객체생성시에서 익셉션이 발생하면   객체생성이되지않아 fout.close() null포인터 익셉션이뜸
					fout.close(); //파일아웃풋 스트림 객체는 파일과 연결된 상태인 객체이기 때문에 객체가 GC에 자동으로 제거되지 않음  // 
				}
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
		}

	}
}
