package multi.erp.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class shopServiceImpl implements  shopService {
	@Autowired
	 shopDAO dao;

	@Override
	public int insert( shopVO shop) {
		System.out.println("서비스단 insert >> dao의 inset를 호출 매개변수로 넘어온 객체 전달"+shop);
		dao.insert(shop);
		return 0;
	}

	@Override
	public shopVO login(shopVO loginShop) {
		System.out.println("login");
		return dao.login(loginShop);
	}

}
