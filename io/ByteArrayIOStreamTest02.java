package io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;

public class ByteArrayIOStreamTest02 {
	public static void main(String[] args) {
		byte[] data = {0,1,2,3,4,5,6,7,8,9};
		byte[] copy = null;
		
		//스트림 열고
		ByteArrayInputStream bin = new ByteArrayInputStream(data);
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		
		byte[] temp = new byte[5]; 
		
		//데이타로부터 
		System.out.println("읽은 개수"+ bin.read(temp, 0, 3)); //(공간, 처음부터, length);
//		byte[] temp = new byte[5];  [0] [1] [2] [0] [0] bin.read
		System.out.println("결과 :"+Arrays.toString(temp));
		
		bout.write(temp, 0 , 2);
		copy = bout.toByteArray();
		System.out.println("결과"+ Arrays.toString(copy));
	}
}
