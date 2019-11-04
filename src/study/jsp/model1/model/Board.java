package study.jsp.model1.model;

import lombok.Data;
/**
 * 게시판 정보를 저장하기 위한 클래스 임시로
 */

@Data
public class Board {
	
	// 임시 변수 명
	// 수정할 파일 -> FindBoardMapper
	private int titno;			// 글 번호 (PK AI)
	private String title;		// 글 제목
	private String bname;		// 게시판 작성자
	private String contents;	// 글 내용
	
	/** ----- 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static) ----- */
	private static int offset;		// LIMIT 절에서 사용할 검색 시작 위치
	private static int listCount;	// LIMIT 절에서 사용할 검색할 데이터 수
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		Board.offset = offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		Board.listCount = listCount;
	}

}
