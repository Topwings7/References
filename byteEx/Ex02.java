package byteEx;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class Ex02 {
	
	//1~100사이의 2의 배수를 저장한 배열 하나
	//입풋스트림 읽고
	//아웃스트림에 저장
	//새로운 배열에 담아 출력
	
	public static void main(String[] args) {
		byte[] arr = new byte[50];
		int su = 2;
		for (int i = 0; i < arr.length; i++) {
			if(su%2==0) {
				arr[i] = (byte) (su);
				su++;
			}
			su++;
		}
		ByteArrayInputStream indata = new ByteArrayInputStream(arr);
		su = 0;
		while((su = indata.read()) != -1) {
			System.out.println(su);
		}
		
		ByteArrayOutputStream outdata = new ByteArrayOutputStream();
		
			try {
				outdata.write(arr);
			} catch (IOException e) {
				e.printStackTrace();
			}
		
			byte[] outArr = outdata.toByteArray();
			System.out.println(Arrays.toString(outArr));
		
	}
}
