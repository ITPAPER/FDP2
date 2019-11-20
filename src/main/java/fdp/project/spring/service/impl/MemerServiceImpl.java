package fdp.project.spring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fdp.project.spring.model.Member;
import fdp.project.spring.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemerServiceImpl implements MemberService {
	/**MyBatis*/
	//->import org.papche.ibatis.session.SqlSession
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public Member getMemberItem(Member input) throws Exception {
		Member result = null;
		
		try {
			result = sqlSession.selectOne("MemberMapper.selectItem", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<Member> getMemberList(Member input) throws Exception {
		return null;
	}

	@Override
	public int addMember(Member input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("MemberMapper.insertItem", input);
		} catch (NullPointerException e){
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int editMember(Member input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(Member input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getProfessorCount(Member input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
