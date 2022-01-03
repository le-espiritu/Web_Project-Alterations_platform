package multi.webproject.map;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public List<StoreVO> allStoreList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("webproject.map.list");
	}
	
	@Override
	public List<StoreVO> areaSearch(String area) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("webproject.map.area", "%"+area+"%");
	}


	@Override
	public List<StoreVO> listDetail(String str_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("webproject.map.detail", str_code);
	}


	@Override
	public StoreVO readBystr_cdoe(String str_code) {
		//sql실행결과가 레코드 하나 인 경우
		return sqlSession.selectOne("webproject.map.detailforTop5", str_code);
	}


	

}
