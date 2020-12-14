package io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

import byteEx.byteArrayInputStreamTest;

public class ByteArrayIOStreamTest {
	public static void main(String[] args) {
		byte[] data = new byte[50];
		byte[] copy = null;
		
		byte[] buf = new byte[10];
		
		for (int i = 0; i < data.length; i++) {
			data[i] = (byte) ((i+1)*2);
		}
		
		ByteArrayInputStream bin = new ByteArrayInputStream(data);
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		
		try {
			while(bin.read(buf) != -1) {
				bout.write(buf);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		copy = bout.toByteArray(); //새배열의 복사
		
		System.out.println(Arrays.toString(copy));
	}
}
