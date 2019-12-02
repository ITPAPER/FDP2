package fdp.project.spring.service;

import java.util.List;

import fdp.project.spring.model.Disease_region;

public interface DiseaseRegionService {
	public List<Disease_region> getDiseaseList(Disease_region input) throws Exception;
}
