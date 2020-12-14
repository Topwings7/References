package file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Write_Read {
	public static void main(String[] args) {

		File file = new File("max.txt");        

		try(FileOutputStream cout = new FileOutputStream(file);   //이렇게 해도되네
				FileInputStream cin = new FileInputStream(file)){
			for (char i = 'a' ; i <= 'z' ; i++) {
				cout.write(i);
			}
			int su = 'a'-'z';
			byte su1 ='a'-'z';
			System.out.println("su :" +su);
			System.out.println("su1 :" +su1);
			byte[]b = new byte[(int) file.length()];  //(int) file.length(); // 적힌갯수 26개 배열은 25방까지
			cin.read(b);

			for (byte c : b) {
				System.out.println((char)c);
			} 
			
		}catch (FileNotFoundException e) {
			e.getMessage();
		}catch (IOException e) {
			e.getMessage();
		}

	}
}
