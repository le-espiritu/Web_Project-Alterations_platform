package multi.webproject.map;

import java.util.List;

public interface StoreDAO {
	
	//카테고리별 검색
	List<StoreVO> allStoreList();
	
	List<StoreVO> areaSearch(String area);
	
	List<StoreVO> listDetail(String str_code);
	
	StoreVO readBystr_cdoe(String str_code);
}