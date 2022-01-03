package multi.erp.users;

public class shopVO {
	private String shop_name;
	private String master_name;
	private String shop_email;
	private String shop_pass;
	private String shop_addr;
	private int shop_number;
	
	public shopVO() {
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getMaster_name() {
		return master_name;
	}

	public void setMaster_name(String master_name) {
		this.master_name = master_name;
	}

	public String getShop_email() {
		return shop_email;
	}

	public void setShop_email(String shop_email) {
		this.shop_email = shop_email;
	}

	public String getShop_pass() {
		return shop_pass;
	}

	public void setShop_pass(String shop_pass) {
		this.shop_pass = shop_pass;
	}

	public String getShop_addr() {
		return shop_addr;
	}

	public void setShop_addr(String shop_addr) {
		this.shop_addr = shop_addr;
	}

	public int getShop_number() {
		return shop_number;
	}

	public void setShop_number(int shop_number) {
		this.shop_number = shop_number;
	}

	@Override
	public String toString() {
		return "shopVO [shop_name=" + shop_name + ", master_name=" + master_name + ", shop_email=" + shop_email
				+ ", shop_pass=" + shop_pass + ", shop_addr=" + shop_addr + ", shop_number=" + shop_number + "]";
	}

	public shopVO(String shop_name, String master_name, String shop_email, String shop_pass, String shop_addr,
			int shop_number) {
		super();
		this.shop_name = shop_name;
		this.master_name = master_name;
		this.shop_email = shop_email;
		this.shop_pass = shop_pass;
		this.shop_addr = shop_addr;
		this.shop_number = shop_number;
	}

	public shopVO(String shop_email, String shop_pass) {
		super();
		this.shop_email = shop_email;
		this.shop_pass = shop_pass;
	}

	public shopVO(String shop_name, String master_name, String shop_email, String shop_addr, int shop_number) {
		super();
		this.shop_name = shop_name;
		this.master_name = master_name;
		this.shop_email = shop_email;
		this.shop_addr = shop_addr;
		this.shop_number = shop_number;
	}
	
	public shopVO login(shopVO string) {
		return string;
	}

}
