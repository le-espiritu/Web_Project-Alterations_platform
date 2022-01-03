package multi.erp.users;

import java.util.List;

public interface usersDAO {
	int insert(usersVO user);
	List<usersVO> getMemberlist();
	boolean emailCheck(String email);
	usersVO login(usersVO loginUser);
	//int update_mypage(usersVO upuser);
}
