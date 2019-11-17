package fdp.project.spring.model;

import lombok.Data;

@Data
public class File {

	/** 첨부파일 번호(PK) */
	private int file_id;
	/** 첨부파일 원본 이름 */
	private String origin_name;
	/** 첨부파일 이름 */
	private String file_name;
	/** 첨부파일 경로 */
	private String file_dir;
	/** 첨부파일 확장자명 */
	private String content_type;
	/** 첨부파일 크기 */
	private int file_size;
	/** 첨부파일 등록일 */
	private String reg_date;
	/** 첨부파일 수정일 */
	private String edit_date;
	/** 게시글 번호 */
	private int document_id;

	/** ----- 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static) ----- */
	private static int offset;		// LIMIT 절에서 사용할 검색 시작 위치
	private static int listCount;	// LIMIT 절에서 사용할 검색할 데이터 수
	
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		File.offset = offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		File.listCount = listCount;
	}
}
