package byteEx;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class ByteArrayOutputStreamTest02 {
	public static void main(String[] args) {
		byte[] arr = new byte[10];
		for (int i = 0; i < arr.length; i++) {
			arr[i] = (byte) i;
		} 
		
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		try {
			bout.write(arr);
			
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		
		byte[] newArr = bout.toByteArray();
		for (byte b : newArr) {
			System.out.println(b);
		}
	}
}

