package byteEx;

import java.io.ByteArrayOutputStream;

public class ByteArrayOutputStreamTest {
	public static void main(String[] args) {
		//output스트림은 대상에 데이터를 쓰는 기능이 있는 아이
		//ByteArrayOutput스트림만 자기자신에게 저장함.
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		//bout.write(저장할값);
		//bout에 값이 누적되어 저장됨
		bout.write(0); //0
		bout.write(1); //01
		bout.write(2); //012
		bout.write(3); //0123
		
		//아웃풋 스트림에 저장된 값을 byte배열로 만들어 반환
		byte[] result = bout.toByteArray();
	}
}
