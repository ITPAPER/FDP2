package study.jsp.model1.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import study.jsp.model1.model.Board;
import study.jsp.model1.service.BoardService;

/** 게시판 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
public class BoardServiceImpl implements BoardService {
	
	/** MyBatis */
	SqlSession sqlSession;
	
	/** 생성자를 통해 객체 생성 */
	public BoardServiceImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	/**
	 * 게시판 데이터 상세 조회
	 * @param Board 조회할 게시판의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Board getBoardItem(Board input) throws Exception {
		Board result = null;
		
		try {
			result = sqlSession.selectOne("FindBoardMapper.selectItem", input);
			
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
	public List<Board> getBoardList(Board input) throws Exception {
		List<Board> result = null;
		
		try {
			result = sqlSession.selectList("FindBoardMapper.selectList", input);
			
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
