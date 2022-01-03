package multi.erp.users;

public class usersVO {
	private String name;
	private String nickname;
	private String email;
	private String pass;
	private String addr;
	private int phone;
	
	public usersVO() {
	}
	
	//로그인
	public usersVO(String email, String pass) {
		super();
		this.email = email;
		this.pass = pass;
	}
	//회원가입
	public usersVO(String name, String nickname, String email, String pass, String addr, int phone) {
		super();
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.pass = pass;
		this.addr = addr;
		this.phone = phone;
	}
	
	public usersVO(String name, String nickname, String email, String addr, int phone) {
		super();
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "usersVO [name=" +name+", nickname="+nickname+", email"+email+", pass"+pass+", addr"+addr+", phone"+phone+"]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public void update_mypage(usersVO users) {
		// TODO Auto-generated method stub
		
	}	
	
	public usersVO login(usersVO string) {
		return string;
	}

}
