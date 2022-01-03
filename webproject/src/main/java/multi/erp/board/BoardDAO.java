package multi.erp.board;

import java.util.List;

public interface BoardDAO {
	List<BoardVO> boardList();
	int insert(BoardVO board);
	List<BoardVO> searchList(String search);
	List<BoardVO> searchList(String tag,String search);
	List<BoardVO> pageList();
	BoardVO read(String board_no);
	int update(BoardVO board);
	int delete(String board_no);
	List<BoardVO> categorySearch(String category);
	
	List<BoardVO> noticeList();
	int noticeinsert(BoardVO noticeboard);
	List<BoardVO> searchnoticeList(String search);
	List<BoardVO> searchnoticeList(String tag,String search);
	List<BoardVO> pagenoticeList();
	BoardVO noticeread(String board_no);
	int noticeupdate(BoardVO nboard);
	int noticedelete(String board_no);
	List<BoardVO> noticecategorySearch(String category);
	
	List<BoardVO> reviewList();
	int reviewinsert(BoardVO reviewboard);
	List<BoardVO> searchreviewList(String search);
	List<BoardVO> searchreviewList(String tag,String search);
	List<BoardVO> pagereviewList();
	BoardVO reviewread(String board_no);
	int reviewupdate(BoardVO rboard);
	int reviewdelete(String board_no);
	List<BoardVO> reviewcategorySearch(String category);
	
}
