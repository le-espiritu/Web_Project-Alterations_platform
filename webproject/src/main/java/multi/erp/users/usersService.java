package multi.erp.users;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

public interface usersService {
	int insert(usersVO user);
	List<usersVO> getMemberList();
	boolean emailCheck(String email);
	usersVO login(usersVO loginUser);
	//int update_mypage(usersVO upuser);
	//usersVO update_pass(usersVO users, String old_pass, HttpServletResponse response);
}
