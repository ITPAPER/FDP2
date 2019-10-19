package study.java.dao;

import java.util.List;

import study.java.model.ErItem;

public interface ErDao {
	public List<ErItem> getErList(String gu);
}
