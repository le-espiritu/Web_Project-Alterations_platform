package multi.webproject.map;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class StoreVO {
	String str_code;
	String area;
	String storename;
	String addr;
	String time;
	String tel_num;
	int score;
	String shop_img;
	
	public StoreVO(){
		
	}

	public StoreVO(String str_code, String area, String storename, String addr, String time, String tel_num, int score,
			String shop_img) {
		super();
		this.str_code = str_code;
		this.area = area;
		this.storename = storename;
		this.addr = addr;
		this.time = time;
		this.tel_num = tel_num;
		this.score = score;
		this.shop_img = shop_img;
	}

	public String getStr_code() {
		return str_code;
	}

	public void setStr_code(String str_code) {
		this.str_code = str_code;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTel_num() {
		return tel_num;
	}

	public void setTel_num(String tel_num) {
		this.tel_num = tel_num;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getShop_img() {
		return shop_img;
	}

	public void setShop_img(String shop_img) {
		this.shop_img = shop_img;
	}

	@Override
	public String toString() {
		return "StoreVO [str_code=" + str_code + ", area=" + area + ", storename=" + storename + ", addr=" + addr
				+ ", time=" + time + ", tel_num=" + tel_num + ", score=" + score + ", shop_img=" + shop_img + "]";
	}
	
	
	
	
	
}
