package multi.webproject.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class reviewDAOImpl implements reviewDAO {
	
	@Autowired
	SqlSession sqlSession;


	@Override
	public int insert(reviewVO review) {
		int result = sqlSession.insert("webproject.review.insert", review);
		return result;
	}
	
	@Override
	public int fakeInsert(String str_code) {
		int result = sqlSession.insert("webproject.review.fakeInsert", str_code);
		return result;
	}


	@Override
	public List<reviewVO> reviewlist(String str_code) {
		return sqlSession.selectList("webproject.review.list", str_code);
		
	}


	@Override
	public List<reviewVO> top5list(String category) {
		return sqlSession.selectList("webproject.review.top5list", category);
	}


	@Override
	public List<reviewVO> areatop5list(reviewVO categoryandarea) {
		return sqlSession.selectList("webproject.review.areatop5list", categoryandarea);
	}


	@Override
	public int selectavgscore(String str_code) {
		if(sqlSession.selectOne("webproject.review.selectavgscore", str_code)==null) {
			return 0;
		}else {
			return sqlSession.selectOne("webproject.review.selectavgscore", str_code);
		}
		
	}


	
}
