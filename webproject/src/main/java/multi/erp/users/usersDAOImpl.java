package multi.erp.users;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class usersDAOImpl implements usersDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(usersVO user) {
		System.out.println("users테이블 insert"+user);
		sqlSession.insert("erp.users.join", user);
		return 0;
	}
	@Override
	public List<usersVO> getMemberlist() {
		return sqlSession.selectList("erp.users.list");
	}
	@Override
	public boolean emailCheck(String email) {
		boolean result = false;
		System.out.println("email check");
		usersDAO user = sqlSession.selectOne("erp.users.emailcheck",email);
		if(user!=null) {
			result =true;
		}
		return result;
	}
	
	@Override
	public usersVO login(usersVO loginUser) {
		System.out.println("loginUser=>"+loginUser);
		usersVO loginOkUser = sqlSession.selectOne("erp.users.login", loginUser);
		System.out.println("결과=>"+loginOkUser);
		return loginOkUser;
	}
	
	/*
	 * @Autowired public int update_mypage(usersVO upuser) {
	 * System.out.println("update_mypage ok"); return
	 * sqlSession.update("erp.users.update_mypage", upuser); }
	 */
	
}
