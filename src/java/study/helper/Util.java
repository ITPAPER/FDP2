package java.study.helper;

public class Util {
	//싱클톤 객체 생성시작
		private static Util current;
		
		public static Util getInstence() {
			if(current == null) {
				current = new Util();
			}
			return current;
		}
		public static void freeInstance() {
			//객체에 null을 대입하면 메모리에서 삭제된다
			current = null;
		}
		
		//기본 생성자를 private로 은닉하게 되면 new를 톨한 객체 생성이 금지된다
		
		private Util() {}
		
		/**
		 * 범위를 갖는 랜덤값을 생성하여 리턴하는 메서드
		 * @param min - 범위 안에서의 최소값
		 * @param max - 범위 안에서의 최대값
		 * @return min~max	안에서의 랜덤값
		 */
		public int  random(int min, int max) {
			int num = (int)((Math.random() * (max-min +1)) + min);
			return num;
		}
}
