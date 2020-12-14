package last;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;

import homework.Student;

public class OjbWrite {
	public static void main(String[] args) {
		String file = "src/last/ex";
		
		try(ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(file));){
			
			Student s1 = new Student("혜미", 18);
			Student s2 = new Student("진미", 18);
			Student s3 = new Student("오미", 18);
			Student s4 = new Student("사미", 18);
			Student s5 = new Student("삼미", 18);
			int i = 0;
			ArrayList<Student> stlist = new ArrayList<Student>();
			HashMap<Integer, Student> stmap = new HashMap<Integer, Student>();
			stlist.add(s1);
			stlist.add(s2);
			++i;
			stmap.put(i, s3);
			++i;
			stmap.put(i, s4);
			++i;
			stmap.put(i, s5);
			
			
			//파일 입력
			oos.writeObject(stlist);
			oos.writeObject(stmap);
			
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
