package fdp.project.spring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fdp.project.spring.model.Disease_region;
import fdp.project.spring.service.DiseaseRegionService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DiseaseRegionServiceImpl implements DiseaseRegionService {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Disease_region> getDiseaseList(Disease_region input) throws Exception {
		List<Disease_region> result = null;
		
		try {
			result = sqlSession.selectList("DiseaseRegionMapper.selectList", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.debug("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.debug("데이터 조회에 실패하였습니다.");
		}
		
		return result;
	}

}
