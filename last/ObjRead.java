package last;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import homework.Student;

public class ObjRead {
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		File file = new File("src/last/ex"); // 내프로젝트기준경로로 수행 :상대경로
		
		try(ObjectInputStream ois = new ObjectInputStream(new FileInputStream(file));){
			
			List<Student> stlist = new ArrayList<Student>();
			Map<Integer, Student> stmap = new HashMap<Integer, Student>();
			// Data의 흐름  스트림  
			
			//Input Read     외부로부터 읽어올때      
			//Ouput Write    외부나 내부로 저장할때
			
			// 기본스트림  File
			// 보조스트림	Buffered  Object 
			stlist = (List<Student>) ois.readObject();  
			stmap = (Map<Integer, Student>) ois.readObject();
			
			
			//역직렬화 후 출력
			for (int i = 0; i < stlist.size(); i++) {
				System.out.println(stlist.get(i));
			}
			//역직렬화 후 출력
			for (java.util.Map.Entry<Integer, Student> el : stmap.entrySet()) {
				System.out.println(el);
			}
			
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
