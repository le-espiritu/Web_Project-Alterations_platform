package multi.webproject.review;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class reviewVO {
	String review_no;
	String str_code;
	String area;
	String storeName;
	String id;
	String content;
	String score;
	Date write_date;
	String category;
	
	public reviewVO(){
		
	}

	public reviewVO(String review_no, String str_code, String area, String storeName, String id, String content,
			String score, Date write_date, String category) {
		super();
		this.review_no = review_no;
		this.str_code = str_code;
		this.area = area;
		this.storeName = storeName;
		this.id = id;
		this.content = content;
		this.score = score;
		this.write_date = write_date;
		this.category = category;
	}

	public String getReview_no() {
		return review_no;
	}

	public void setReview_no(String review_no) {
		this.review_no = review_no;
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

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "reviewVO [review_no=" + review_no + ", str_code=" + str_code + ", area=" + area + ", storeName="
				+ storeName + ", id=" + id + ", content=" + content + ", score=" + score + ", write_date=" + write_date
				+ ", category=" + category + "]";
	}
}
