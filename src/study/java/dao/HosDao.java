package study.java.dao;

import java.util.List;

import study.java.model.HospitalItem;

public interface HosDao {
	public List<HospitalItem> getHosList(String subj, String gu, String txt);
}
