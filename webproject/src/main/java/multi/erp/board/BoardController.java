package multi.erp.board;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	@RequestMapping("/board/insert.do")
	public String insert(BoardVO board) {
		service.insert(board);
		 return "redirect:/board/list.do";
	}
	@RequestMapping("/board/list.do")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView("board/list");
		List<BoardVO> boardlist = service.boardList();
		mav.addObject("boardlist",boardlist);
		return mav;
	}
	@RequestMapping(value = "/board/read.do")
	public ModelAndView read(String board_no, String state) {
		System.out.println("readController => "+ board_no + "," + state);
		ModelAndView mav = new ModelAndView();
		BoardVO board = service.read(board_no);
		String viewName = "";
		if(state.equals("READ")) {
			viewName = "board/read";
		}else {
			viewName = "board/update";
		}
		mav.setViewName(viewName);
		mav.addObject("board", board);
		return mav;
	}
	@RequestMapping(value = "/board/ajax_list.do", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public @ResponseBody ArrayList<BoardVO> categoryList(String category) {
		ArrayList<BoardVO> boardlist = (ArrayList<BoardVO>)service.findByCategory(category);
		System.out.println("ajax통신: "+boardlist.size());
		return boardlist;
	}
	
	
	@RequestMapping("/board/noticeinsert.do")
	public String noticeinsert(BoardVO noticeboard) {
		service.insert(noticeboard);
		 return "redirect:/board/noticelist.do";
	}
	@RequestMapping(value = "/board/noticeread.do")
	public ModelAndView noticeread(String board_no, String state) {
		System.out.println("readController => "+ board_no + "," + state);
		ModelAndView mav = new ModelAndView();
		BoardVO noticeboard = service.read(board_no);
		String viewName = "";
		if(state.equals("READ")) {
			viewName = "board/noticeread";
		}else {
			viewName = "board/noticeupdate";
		}
		mav.setViewName(viewName);
		mav.addObject("nboard", noticeboard);
		return mav;
	}
	@RequestMapping("/board/noticelist.do")
	public ModelAndView noticeList() {
		ModelAndView mav = new ModelAndView("board/noticelist");
		List<BoardVO> noticelist = service.noticeList();
		mav.addObject("noticelist",noticelist);
		return mav;
	}
	
	
	@RequestMapping("/board/reviewinsert.do")
	public String reviewinsert(BoardVO reviewboard) {
		service.insert(reviewboard);
		 return "redirect:/board/reviewlist.do";
	}
	@RequestMapping("/board/reviewlist.do")
	public ModelAndView reviewList() {
		ModelAndView mav = new ModelAndView("board/reviewlist");
		List<BoardVO> reviewlist = service.reviewList();
		mav.addObject("reviewlist",reviewlist);
		return mav;
	}
	@RequestMapping(value = "/board/reviewread.do")
	public ModelAndView reviewread(String board_no, String state) {
		System.out.println("readController => "+ board_no + "," + state);
		ModelAndView mav = new ModelAndView();
		BoardVO reviewboard = service.read(board_no);
		String viewName = "";
		if(state.equals("READ")) {
			viewName = "board/reviewread";
		}else {
			viewName = "board/reviewupdate";
		}
		mav.setViewName(viewName);
		mav.addObject("rboard", reviewboard);
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
}
