package multi.webproject.map;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreServiceImple implements StoreService {
	@Autowired
	StoreDAO dao;
	
	
	
	@Override
	public List<StoreVO> allStoreList() {
		return dao.allStoreList();
	}
	
	@Override
	public List<StoreVO> findByArea(String area) {
		List<StoreVO> storelist = null;
		if(area!=null) {
			
			storelist = dao.areaSearch(area);//지별로 검색
			
		}
		return storelist;
	}


	@Override
	public List<StoreVO> findDetailbystr_code(String str_code) {
		List<StoreVO> detaillist = null;
		if(str_code!=null) {
			detaillist = dao.listDetail(str_code);
		}
		return detaillist;
	}


	@Override
	public StoreVO readBystr_code(String str_code) {
		return dao.readBystr_cdoe(str_code);
	}


	

	

	

}
