package multi.webproject.map;

import java.util.List;

public interface StoreService {
	
	List<StoreVO> allStoreList();
	List<StoreVO> findByArea(String area);
	List<StoreVO> findDetailbystr_code(String str_code);
	StoreVO readBystr_code(String str_code);
	
}









