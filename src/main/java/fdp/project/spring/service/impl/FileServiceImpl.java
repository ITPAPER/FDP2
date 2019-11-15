package fdp.project.spring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fdp.project.spring.model.File;
import fdp.project.spring.service.FileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FileServiceImpl implements FileService {

	/** MyBatis */
	// --> import org.apache.ibatis.session.SqlSession;
	@Autowired
	SqlSession sqlSession;

	/**
	 * 파일 데이터 상세 조회
	 * @param File 조회할 파일의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public File getFileItem(File input) throws Exception {
		File result = null;

		try {
			result = sqlSession.selectOne("FileMapper.selectItem", input);

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
	 * 파일 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<File> getFileList(File input) throws Exception {
		List<File> result = null;

		try {
			result = sqlSession.selectList("FileMapper.selectList", input);

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
	 * 파일 데이터가 저장되어 있는 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getFileCount(File input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("FileMapper.selectCountAll", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}

	/**
	 * 파일 데이터 등록하기
	 * @param File 저장할 정보를 담고 있는 Beans
	 * @throws Exception
	 */
	@Override
	public int addFile(File input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("FileMapper.insertItem", input);

			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}

	/**
	 * 파일 데이터 수정하기
	 * @param File 수정할 정보를 담고 있는 Beans
	 * @throws Exception
	 */
	@Override
	public int editFile(File input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.update("FileMapper.updateItem", input);

			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}

	/**
	 * 파일 데이터 삭제하기
	 * @param File 삭제할 파일의 일련번호를 담고 있는 Beans
	 * @throws Exception
	 */
	@Override
	public int deleteFile(File input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.delete("FileMapper.deleteItem", input);

			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("삭제된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 삭제에 실패했습니다.");
		}

		return result;
	}
}
