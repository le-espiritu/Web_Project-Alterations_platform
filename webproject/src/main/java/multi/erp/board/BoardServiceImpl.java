package multi.erp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao;

	@Override
	public int insert(BoardVO board) {
		System.out.println("service board insert"+board);
		dao.insert(board);
		return 0;
	}
	@Override
	public List<BoardVO> boardList() {
		return dao.boardList();
	}
	@Override
	public int txinsert(BoardVO board) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<BoardVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> searchList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public BoardVO read(String board_no) {
		System.out.println("board read SERVICE"+board_no);
		return dao.read(board_no);
	}

	@Override
	public int update(BoardVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String board_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<BoardVO> findByCategory(String category) {
		List<BoardVO> boardlist =null;
		if(category!=null) {
			if(category.equals("all")) {
				boardlist = dao.boardList();
			}else {
				boardlist = dao.categorySearch(category);
			}
		}
		return boardlist;
	}

	
	@Override
	public int noticeinsert(BoardVO noticeboard) {
		System.out.println("service board noticeinsert"+noticeboard);
		dao.insert(noticeboard);
		return 0;
	}
	@Override
	public List<BoardVO> noticeList() {
		return dao.noticeList();
	}
	@Override
	public List<BoardVO> searchnoticeList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> searchnoticeList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> pagenoticeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardVO noticeread(String board_no) {
		System.out.println("nboard read SERVICE"+board_no);
		return dao.read(board_no);
	}
	@Override
	public int noticeupdate(BoardVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int noticedelete(String board_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<BoardVO> noticefindByCategory(String category) {
		List<BoardVO> boardlist =null;
		if(category!=null) {
			if(category.equals("all")) {
				boardlist = dao.boardList();
			}else {
				boardlist = dao.categorySearch(category);
			}
		}
		return boardlist;
	}
	
	
	@Override
	public int reviewinsert(BoardVO reviewboard) {
		System.out.println("service board reviewinsert"+reviewboard);
		dao.insert(reviewboard);
		return 0;
	}
	@Override
		public List<BoardVO> reviewList() {
			// TODO Auto-generated method stub
			return dao.reviewList();
		}
	@Override
	public List<BoardVO> searchreviewList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> searchreviewList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> pagereviewList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardVO reviewread(String board_no) {
		System.out.println("rboard read SERVICE"+board_no);
		return dao.read(board_no);
	}
	@Override
	public int reviewupdate(BoardVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reviewdelete(String board_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<BoardVO> reviewfindByCategory(String category) {
		List<BoardVO> boardlist =null;
		if(category!=null) {
			if(category.equals("all")) {
				boardlist = dao.boardList();
			}else {
				boardlist = dao.categorySearch(category);
			}
		}
		return boardlist;
	}

	

	

	

	
	

	

	

	

}
