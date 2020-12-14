package homework;

import java.io.*;
import java.util.Scanner;

public class Data {
	public static void main(String[] args) {
		File file = new File("src/homework/data.txt");
		
		try(DataOutputStream out = new DataOutputStream(new FileOutputStream(file));
			DataInputStream in = new DataInputStream(new FileInputStream(file));
			Scanner sc = new Scanner(System.in)){
			
			System.out.println("이름을 입력하세요");
			String name = sc.next();
			System.out.println("나이를 입력하세요");
			int age = sc.nextInt();
			System.out.println("키");
			double height = sc.nextDouble();
			
			out.writeUTF(name);
			out.writeInt(age);
			out.writeDouble(height);
			
			out.flush();
			
			System.out.println(in.readUTF());
			System.out.println(in.readInt());
			System.out.println(in.readDouble());
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
