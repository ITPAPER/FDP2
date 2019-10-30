package study.jsp.model1.model;

import java.util.List;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class Hospital {
	@SerializedName("response")
	private Response response;

	@Data
	public class Response {
		@SerializedName("body")
		private Body body;

		@Data
		public class Body {
			@SerializedName("items")
			private Items items;

			@Data
			public class Items {
				@SerializedName("item")
				private List<Item> item;

				@Data
				public class Item {
					@SerializedName("dutyName")	private String dutyName; 	// 병원명
					@SerializedName("dutyTel3")	private String tel;			// 병원 전화번호
					@SerializedName("hv1")		private int hv1; 			// 응급실 당직의 직통 연락처
					@SerializedName("hv2")		private int hv2;			// 내과 중환자실
					@SerializedName("hv3")		private String hv3;			// 외과 중환자실
					@SerializedName("hv4")		private int hv4;			// 외과 입원실
					@SerializedName("hv5")		private String hv5;			// 신경 외과입원실
					@SerializedName("hv6")		private int hv6;			// 신경외과 중환자실
					@SerializedName("hv7")		private String hv7;
					@SerializedName("hv8")		private String hv8;
					@SerializedName("hv9")		private String hv9;
					@SerializedName("hv10")		private String hv10;
					@SerializedName("hv11")		private String hv11;		// 인큐베이터 유무
					@SerializedName("hv12")		private String hv12;		// 소아당직의 직통번호
					@SerializedName("hvec")		private String hvec;		// 응급실
					@SerializedName("hvcc")		private String hvcc;		// 신경 중환자
					@SerializedName("hvccc")	private String hvccc;		// 흉부 중환자
					@SerializedName("hvncc")	private String hvncc;		// 신생 중환자
					@SerializedName("hvicc")	private String hvicc;		// 일반 중환자
				}
			}
		}
	}
}