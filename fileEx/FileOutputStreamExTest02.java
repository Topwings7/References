package fileEx;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FileOutputStreamExTest02 {
	public static void main(String[] args) {
		//finally가 너무 불편함
		//try-resource라는 방식으로 하기도 한다
		//try에서 만들어지는 객체를 자동으로 clise()해준다
		//이때 close()가 가능한 객체만 
		
		String fileName = "src/text02.text";
		
		try(FileOutputStream fout = new FileOutputStream(fileName);
			FileInputStream fin = new FileInputStream("text02.text");
			){ //이트라이가 종료되는 시점
			for (int i = 0; i < 100; i++) {
				fout.write(i);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
