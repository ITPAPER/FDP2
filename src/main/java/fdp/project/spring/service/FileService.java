package fdp.project.spring.service;

import java.util.List;

import fdp.project.spring.model.File;

/** 파일 데이터 관리 기능을 제공하기 위한 Service 계층 */
public interface FileService {

	/**
	 * 데이터 상세 조회
	 * @param File 조회할 파일의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public File getFileItem(File input) throws Exception;

	/**
	 * 파일 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<File> getFileList(File input) throws Exception;

	/**
	 * 파일 데이터가 저장되어 있는 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getFileCount(File input) throws Exception;

	/**
	 * 파일 데이터 등록하기
	 * @param File 저장할 정보를 담고 있는 Beans
	 * @throws Exception
	 */
	public void addFile(File input) throws Exception;

	/**
	 * 파일 데이터 수정하기
	 * @param File 수정할 정보를 담고 있는 Beans
	 * @throws Exception
	 */
	public int editFile(File input) throws Exception;

	/**
	 * 파일 데이터 삭제하기
	 * @param File 삭제할 파일의 일련번호를 담고 있는 Beans
	 * @throws Exception
	 */
	public int deleteFile(File input) throws Exception;
}
