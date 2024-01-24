package sbs.model;

// DB의 student 테이블의 컬럼명과 동일하게 멤버 변수를 구성하는 게 좋다.
public class StudentDTO {
	private String snum;	// 학번
	private String name;	// 이름
	private String major;	// 학과
	private String phone;	// 연락처
	private String addr;	// 주소
	private String regdate;	// 등록일
	
	// 자료를 주고 받을 수 있도록 getter, setter 메서드를 만든다.
	public String getSnum() {
		return snum;
	}
	
	public void setSnum(String snum) {
		this.snum = snum;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getMajor() {
		return major;
	}
	
	public void setMajor(String major) {
		this.major = major;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getAddr() {
		return addr;
	}
	
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getRegdate() {
		return regdate;
	}
	
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
