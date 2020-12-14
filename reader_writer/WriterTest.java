package reader_writer;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class WriterTest {
	public static void main(String[] args) {
		//문자열을 쓰기위한 아이
		
		String faleName = "src/reader_writer/data";
		File file = new File("src/reader_writer/data2");
		
		try(BufferedWriter bw = new BufferedWriter(new FileWriter(file))){
			
			bw.write("모시모시");
			bw.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
