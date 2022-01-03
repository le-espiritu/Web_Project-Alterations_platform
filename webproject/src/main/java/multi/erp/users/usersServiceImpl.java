package multi.erp.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class usersServiceImpl implements  usersService {
	@Autowired
	 usersDAO dao;

	@Override
	public int insert( usersVO user) {
		System.out.println("서비스단 insert >> dao의 inset를 호출 매개변수로 넘어온 객체 전달"+user);
		dao.insert(user);
		return 0;
	}

	@Override
	public List< usersVO> getMemberList() {
		return dao.getMemberlist();
	}

	@Override
	public boolean emailCheck(String email) {
		return dao.emailCheck(email);
	}

	@Override
	public  usersVO login( usersVO loginUser) {
		System.out.println("login");
		return dao.login(loginUser);
	}
	
	  // 회원정보 수정
	  
		/*
		 * @Override public int update_mypage(usersVO upuser) {
		 * System.out.println("update ok"); upuser.update_mypage(upuser); return
		 * dao.login(); }
		 */
	  
	  // 비밀번호 변경
	  
		/*
		 * @Override public usersVO update_pass(usersVO users, String old_pass,
		 * HttpServletResponse response) {
		 * response.setContentType("text/html;charset=utf-8"); PrintWriter out; try {
		 * 
		 * out = response.getWriter();
		 * if(!old_pass.equals(dao.login(dao.getEmail()).getPass())) {
		 * out.println("<script>"); out.println("alert('기존 비밀번호가 다릅니다.');");
		 * out.println("history.go(-1);"); out.println("</script>"); out.close(); return
		 * null; }else { update_pass(users, old_pass, response); return
		 * dao.login(dao.getEmail()); } } catch (IOException e) { e.printStackTrace(); }
		 * System.out.println("pass ok"); return users; }
		 * 
		 * 
		 */

}
