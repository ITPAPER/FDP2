package fdp.project.spring.model;

import lombok.Data;

@Data
public class Comment {
	
	/** 댓글 번호(PK) */
	private int comment_id;
	/** 작성자 이름 */
	private String writer_name;
	/** 댓글 내용 */
	private String content;
	/** 댓글 등록 시간 */
	private String reg_date;
	/** 댓글 수정 시간 */
	private String edit_date;
	/** 게시글 번호 */
	private int document_id;
	/** 회원 번호 */
	private int fdpmember_id;

}
