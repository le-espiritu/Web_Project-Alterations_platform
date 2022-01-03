package multi.erp.users;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class shopDAOImpl implements shopDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(shopVO shop) {
		System.out.println("shop테이블 insert"+shop);
		sqlSession.insert("erp.users.shop_join", shop);
		return 0;
	}
	@Override
	public shopVO login(shopVO loginShop) {
		System.out.println("loginShop=>"+loginShop);
		shopVO loginOkShop = sqlSession.selectOne("erp.users.shop_login", loginShop);
		System.out.println("결과=>"+loginOkShop);
		return loginOkShop;
	}
}
