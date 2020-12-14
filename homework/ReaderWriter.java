package homework;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class ReaderWriter {
	public static void main(String[] args) {
		File file = new File("src/homework/gugudan.txt");

		try(BufferedWriter bw = new BufferedWriter(new FileWriter(file));
			BufferedReader br = new BufferedReader(new FileReader(file));){

			for (int i = 2; i < 10; i++) {
				for (int j = 1; j < 10; j++) {
					bw.write(i+"*"+j+"="+(i*j)+"\n");
				}
			}
			bw.flush();
			
			String readLine = null;
			while((readLine = br.readLine()) != null) {
				System.out.println(readLine);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
