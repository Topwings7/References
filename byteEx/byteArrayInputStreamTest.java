package byteEx;

import java.io.ByteArrayInputStream;

public class byteArrayInputStreamTest {
	public static void main(String[] args) {
		//메모리에 저장하는 인풋스트림
		byte[] inByteData = {0,1,2,3,4,5,6,7,8,9};
		
		//바이트 배열에서 읽는 기능이 있는 스트림을 생성
		//그놈을 이용하여 읽어보자
		
		//참조변수 선언 후 null로 초기화
		ByteArrayInputStream inByteArray = null;
		
		//인풋스트링 객체를 생성 시 읽어드릴 대상(배열)을 넣어서 생성한다.
		inByteArray = new ByteArrayInputStream(inByteData);
		//스트림을 연결 한부분 
		
		
		//읽어라
		//inByteArray.read(); //배열속의 있는 값을 반환하는 아이다 read();
		//System.out.println(inByteArray.read());
		//한번읽으면 9개가 남는다
		int readNum = inByteArray.read();
		System.out.println(readNum);
//		for (int i = 0; i < inByteData.length; i++) {
//			System.out.println(inByteArray.read());
//		}
		int num = -1;
		while((num = inByteArray.read()) != -1) {
			System.out.println( num );
		}
	}
}
