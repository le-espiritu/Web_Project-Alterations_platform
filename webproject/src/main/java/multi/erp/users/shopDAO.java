package multi.erp.users;

public interface shopDAO {
	int insert(shopVO shop);
	shopVO login(shopVO loginShop);
}
