package byteEx;

import java.io.ByteArrayInputStream;
import java.io.IOException;

public class Ex {
	public static void main(String[] args) {
		byte[] ar = new byte[100];
		int num = 0;
		for (int i = 100; i > 0; i--) {
			ar[num] = (byte) i;
			num++;
		}
		ByteArrayInputStream data = null;
		data = new ByteArrayInputStream(ar);

		int su = 0;
		while((su = data.read()) != -1) {
			System.out.println(su);
		}

		data.reset(); 

		while(data.available() > 0) {
			num = data.read();
			if(num %2  == 0) {
				System.out.println(num + " ");
			}
		}
	}
}
