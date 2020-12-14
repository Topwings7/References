package io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;

public class last {
	public static void main(String[] args) {
		byte[] data = {0,1,2,3,4,5,6,7,8,9};
		byte[] copy = null;
		
		byte[] temp = new byte[4];
		
		ByteArrayInputStream bin = new ByteArrayInputStream(data);
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		
		bin.read(temp, 0, 4);
		bout.write(temp, 0, 4);
		bin.read(temp, 0, 4);
		bout.write(temp, 0, 4);
		bin.read(temp, 0, 4);
		bout.write(temp, 0, 2);
		
		//->
		
		bin.read(temp, 0, temp.length);
		bout.write(temp, 0, temp.length);
		bin.read(temp, 0, temp.length);
		bout.write(temp, 0, temp.length);
		bin.read(temp, 0, temp.length);
		bout.write(temp, 0, temp.length);   //-2
		
		//->
		int len = bin.read(temp, 0, temp.length);
		bin.read(temp, 0, len);
		bout.write(temp,0, len);;
		bin.read(temp, 0, len);
		bout.write(temp,0, len);;
		bin.read(temp, 0, len);
		bout.write(temp,0, len);;
		
		
		//->
		int readlen = 0;
		while ((readlen = bin.read(temp,0,temp.length))!=-1){
			bout.write(temp,0,readlen);
		}
		
		copy = bout.toByteArray();
		System.out.println(Arrays.toString(copy));
		
	}
}
