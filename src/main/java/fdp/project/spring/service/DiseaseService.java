package fdp.project.spring.service;

import java.util.List;

import fdp.project.spring.model.Disease_age_gender;

/** 게시판 데이터 관리 기능을 제공하기 위한 Service 계층. */
public interface DiseaseService {
    /**
     * 게시판 데이터 상세 조회
     * @param Disease_age_gender 조회할 게시판의 일련번호를 담고 있는 Beans
     * @return 조회된 데이터가 저장된 Beans
     * @throws Exception
     */
    public Disease_age_gender getDisease_age_genderItem(Disease_age_gender input) throws Exception;
    
    /**
     * 게시판 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
    public List<Disease_age_gender> getDisease_age_genderList(Disease_age_gender input) throws Exception;
    
    /**
     * 게시판 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
    public int getDisease_age_genderCount(Disease_age_gender input) throws Exception;
    
    
}
