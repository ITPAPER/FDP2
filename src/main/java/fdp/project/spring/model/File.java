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

}
