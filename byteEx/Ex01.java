 package byteEx;

import java.io.ByteArrayInputStream;
import java.io.IOException;

public class Ex01 {
	public static void main(String[] args) throws IOException {
		byte[] ar = new byte[100];
		int reverse = 100;
		for (int i = 0; i < ar.length; i++) {
			ar[i] = (byte) reverse;
			reverse--;
		}
		ByteArrayInputStream data = null;
		data = new ByteArrayInputStream(ar);

		int num = 0;
		while((num = data.read())!=-1 ) {
			System.out.println(num);
		}


		//짝수
		data = new ByteArrayInputStream(ar);

		int su = 0;
		for (int i = 0; i < 100; i++) {
			if( (su= data.read()) %2 ==0) {
				System.out.println(su);
			}
		}
	}
}