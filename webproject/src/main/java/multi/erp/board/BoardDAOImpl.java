package multi.erp.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(BoardVO board) {
		System.out.println("board insert"+board);
		sqlSession.insert("erp.board.insert", board);
		return 0;
	}
	
	@Override
	public int noticeinsert(BoardVO noticeboard) {
		System.out.println("board noticeinsert"+noticeboard);
		sqlSession.insert("erp.board.insert", noticeboard);
		return 0;
	}
	
	@Override
	public int reviewinsert(BoardVO reviewboard) {
		System.out.println("board reviewinsert"+reviewboard);
		sqlSession.insert("erp.board.insert", reviewboard);
		return 0;
	}
	
	@Override
	public List<BoardVO> boardList() {
		return sqlSession.selectList("erp.board.list");
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
		System.out.println("board read DAO"+board_no);
		return sqlSession.selectOne("erp.board.read", board_no);
	}
	@Override
	public BoardVO noticeread(String board_no) {
		System.out.println("nboard read DAO"+board_no);
		return sqlSession.selectOne("erp.board.read", board_no);
	}
	@Override
	public BoardVO reviewread(String board_no) {
		System.out.println("rboard read DAO"+board_no);
		return sqlSession.selectOne("erp.board.read", board_no);
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
	public List<BoardVO> categorySearch(String category) {
		return sqlSession.selectList("erp.board.category",category);
	}
	@Override
	public List<BoardVO> noticeList() {
		return sqlSession.selectList("erp.board.noticelist");
	}
	@Override
	public List<BoardVO> reviewList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("erp.board.reviewlist");
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
	public List<BoardVO> noticecategorySearch(String category) {
		return sqlSession.selectList("erp.board.category",category);
	}

	@Override
	public List<BoardVO> reviewcategorySearch(String category) {
		return sqlSession.selectList("erp.board.category",category);
	}
	
}
