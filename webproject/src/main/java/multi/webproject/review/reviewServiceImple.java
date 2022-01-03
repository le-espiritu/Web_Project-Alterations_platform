package multi.webproject.review;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class reviewServiceImple implements reviewService {
	@Autowired
	reviewDAO dao;

	
	@Override
	public int insertreview(reviewVO review) {
		return dao.insert(review);
	}
	
	@Override
	public int fakeInsert(String str_code) {
		return dao.fakeInsert(str_code);
	}

	@Override
	public List<reviewVO> reviewlist(String str_code) {
		return dao.reviewlist(str_code);
	}

	@Override
	public List<reviewVO> top5list(String category) {
		return dao.top5list(category);
	}

	@Override
	public List<reviewVO> areatop5list(reviewVO categoryandarea) {
		return dao.areatop5list(categoryandarea);
	}

	@Override
	public int selectavgscore(String str_code) {
		return dao.selectavgscore(str_code);
		
		
	}

	
}
