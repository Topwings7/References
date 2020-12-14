
package io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class ByteArrayIOStreamTest03 {
	public static void main(String[] args) throws IOException {
		byte[] data = {0,1,2,3,4,5,6,7,8,9};
		byte[] copy = null;
		
		byte[] temp = new byte[data.length];
		
		
		//인풋과 아웃풋 스트림을 이용하여
		// data의 배열을 copy에 보가해서 만드는 코드를 작성하세요
		
		ByteArrayInputStream bin = new ByteArrayInputStream(data);
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		
		for (int i = 0; i < data.length; i++) {
			bout.write(bin.read());
		}
		
//		bin.read(temp, 0, 5);
//		bout.write(temp, 0, 5);
		
		//bin.read(temp);
		//bout.write(temp);
		
		copy = bout.toByteArray();
		
		System.out.println(Arrays.toString(copy));
				
	}
}
