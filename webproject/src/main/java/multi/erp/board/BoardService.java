package multi.erp.board;

import java.util.List;

public interface BoardService {
	List<BoardVO> boardList();
	List<BoardVO> noticeList();
	List<BoardVO> reviewList();
	int txinsert(BoardVO board);
	int insert(BoardVO board);
	List<BoardVO> searchList(String search);
	List<BoardVO> searchList(String tag,String search);
	List<BoardVO> pageList();
	BoardVO read(String board_no);
	int update(BoardVO board);
	int delete(String board_no);
	List<BoardVO> findByCategory(String category);
	
	int noticeinsert(BoardVO noticeboard);
	List<BoardVO> searchnoticeList(String search);
	List<BoardVO> searchnoticeList(String tag,String search);
	List<BoardVO> pagenoticeList();
	BoardVO noticeread(String board_no);
	int noticeupdate(BoardVO board);
	int noticedelete(String board_no);
	List<BoardVO> noticefindByCategory(String category);
	
	int reviewinsert(BoardVO reviewboard);
	List<BoardVO> searchreviewList(String search);
	List<BoardVO> searchreviewList(String tag,String search);
	List<BoardVO> pagereviewList();
	BoardVO reviewread(String board_no);
	int reviewupdate(BoardVO board);
	int reviewdelete(String board_no);
	List<BoardVO> reviewfindByCategory(String category);
	
	
	
	
}









