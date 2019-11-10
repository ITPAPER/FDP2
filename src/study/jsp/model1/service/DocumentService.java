package study.jsp.model1.service;

import java.util.List;

import study.jsp.model1.model.Document;

/** 게시판 관리 기능을 제공하기 위한 Service 계층 */
public interface DocumentService {
	
	/** 
	 * 게시판 데이터 상세 조회
	 * @param Document 조회할 게시판의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public Document getDocumentItem(Document input) throws Exception;
	
	/**
	 * 게시판 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Document> getDocumentList(Document input) throws Exception;

}
