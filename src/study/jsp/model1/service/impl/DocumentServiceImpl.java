package study.jsp.model1.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import study.jsp.model1.model.Document;
import study.jsp.model1.service.DocumentService;

/** 게시판 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
public class DocumentServiceImpl implements DocumentService {
	
	/** MyBatis */
	SqlSession sqlSession;
	
	/** 생성자를 통해 객체 생성 */
	public DocumentServiceImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	/**
	 * 게시판 데이터 상세 조회
	 * @param Document 조회할 게시판의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Document getDocumentItem(Document input) throws Exception {
		Document result = null;
		
		try {
			result = sqlSession.selectOne("FindDocumentMapper.selectItem", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}
	
	/**
	 * 게시판 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Document> getDocumentList(Document input) throws Exception {
		List<Document> result = null;
		
		try {
			result = sqlSession.selectList("DocumentMapper.selectList", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}
}
