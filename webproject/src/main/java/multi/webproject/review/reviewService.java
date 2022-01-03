package multi.webproject.review;

import java.util.List;

public interface reviewService {
	
	int insertreview(reviewVO review);
	
	int fakeInsert(String str_code);
	
	List<reviewVO> reviewlist(String str_code); 
	
	List<reviewVO> top5list(String category);
	
	List<reviewVO> areatop5list(reviewVO categoryandarea);
	
	int selectavgscore (String str_code);
	
}









