package multi.erp.users;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class usersController {
	 @Autowired
	usersService service;
	shopService shopservice;
	
	@RequestMapping("/menu/join.do")
		public String insert(usersVO command) {
			System.out.println("========"+command);
			service.insert(command);
			return "redirect:/menu/login.do";
		}
	@RequestMapping("/menu/list.do")
		public ModelAndView getMemberList() {
			ModelAndView mav = new ModelAndView();
			List<usersVO> userlist = service.getMemberList();
			System.out.println("========================");
			System.out.println(userlist);
			mav.setViewName("users/list");
			mav.addObject("userlist",userlist);
			return mav;
		}
	
		@RequestMapping("/menu/emailcheck.do")
		public ModelAndView idCheck(String email) {
			ModelAndView mav = new ModelAndView();
			boolean state =service.emailCheck(email);
			String result = "";
			if(state) {
				result = "사용불가능";
		}else {
			result = "사용가능";
		}
		mav.setViewName("menu/join");
		mav.addObject("result",result);
		return mav;
	}
		@RequestMapping(value="/menu/login.do",method=RequestMethod.POST)
		public ModelAndView login(usersVO loginUserInfo,HttpServletRequest request) {
			System.out.println(loginUserInfo);
			ModelAndView mav = new ModelAndView();
			usersVO loginOkUser = service.login(loginUserInfo);
			String viewName = "";
			if(loginOkUser!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginOkUser);
				viewName = "login/ok";
			}else {
				viewName = "login";
			}
			mav.setViewName(viewName);
			mav.addObject("loginOkUser",loginOkUser);
			System.out.println("DB연동완료 : "+loginOkUser);
			return mav;
		}
		
		@RequestMapping(value = "/menu/mypage.do")
		public String mypage() throws Exception{
			return "/menu/mypage";
		}
		
		/*
		 * @RequestMapping(value = "/menu/update_mypage.do", method =
		 * RequestMethod.POST) public String update_mypage(@ModelAttribute usersVO
		 * users, HttpSession session, RedirectAttributes rttr) throws Exception{
		 * System.out.println("회원정보 수정"); session.setAttribute("users",
		 * service.update_mypage(users)); rttr.addFlashAttribute("msg", "회원정보 수정 완료");
		 * return "redirect:/mneu/mypage.do"; }
		 * 
		 * // 비밀번호 변경
		 * 
		 * @RequestMapping(value = "/menu/update_pass.do", method = RequestMethod.POST)
		 * public String update_pw(@ModelAttribute usersVO
		 * users, @RequestParam("old_pass") String old_pass, HttpSession session,
		 * HttpServletResponse response, RedirectAttributes rttr) throws Exception{
		 * System.out.println("비밀번호 수정"); session.setAttribute("users",
		 * service.update_pass(users, old_pass, response));
		 * rttr.addFlashAttribute("msg", "비밀번호 수정 완료"); return
		 * "redirect:/menu/mypage.do"; }
		 */
		@RequestMapping("/menu/logout.do")
		public String logout(HttpSession ses) throws Exception {
			if(ses!=null) {
				ses.invalidate();
				System.out.println("logout");
			}
			return "redirect:/index2.do";
		}
}
