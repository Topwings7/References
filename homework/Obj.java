package homework;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Obj {
	public static void main(String[] args) {
		File file = new File("src/homework/Students.txt");
		
		try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(file));	
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(file));){

				Student s1 = new Student("박하나", 18, 99, 99, 99);
				Student s2 = new Student("오하나", 19, 98, 98, 98);
				Student s3 = new Student("정하나", 20, 97, 97, 97);
				
				oos.writeObject(s1);
				oos.writeObject(s2);
				oos.writeObject(s3);
				
				oos.flush();
				
				Student ns1 = (Student) ois.readObject();
				Student ns2 = (Student) ois.readObject();
				Student ns3 = (Student) ois.readObject();
				
				System.out.println(ns1);
				System.out.println(ns2);
				System.out.println(ns3);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
