package objectIOTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ObjectIOTest {
	public static void main(String[] args) {
		
		try(ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("src/objectIOTest/data"));
			ObjectInputStream  ois = new ObjectInputStream(new FileInputStream("src/objectIOTest/data"))	) {
			
			Student s1 = new Student("박하나", 18, 163.5);
			Student s2 = new Student("정하나", 19, 145.2);
			Student s3 = new Student("오하나", 20, 173.1);
			
			//파일에 쓰기 
			//s1은 직렬화를 할수없다  >> 클래스를 직렬화가 가능하게 설정한다 implements Serializable 
			oos.writeObject(s1);
			oos.writeObject(s2);
			oos.writeObject(s3);
			oos.flush();
			System.out.println("객체를 파일에 저장함");
			
			Student ns1 = (Student) ois.readObject(); //readObject() 읽은 내용을 역직렬화해서 Object 객체로 반환한다
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
