package reader_writer;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Reader {
	public static void main(String[] args) {
		File file = new File("src/reader_writer/data");
		
		try(BufferedReader br = new BufferedReader(new FileReader(file))){
			
			int chk = -1;
			while ((chk = br.read()) != -1) {
				System.out.println((char)chk);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
