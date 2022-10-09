package mango.mango.model;

import java.io.Serializable;

public class MemberDto implements Serializable {
	private String id;
	private String password;
	private String name;
	private String phoneNumber;
	private String email;	
	private int auth;
	private int zipNo;
	private String registerDate;
	private String roadFullAddr;
	private String unRegisterDate;

	public int getZipNo() {
		return zipNo;
	}

	public void setZipNo(int zipNo) {
		this.zipNo = zipNo;
	}

	public String getRoadFullAddr() {
		return roadFullAddr;
	}

	public void setRoadFullAddr(String roadFullAddr) {
		this.roadFullAddr = roadFullAddr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getUnRegisterDate() {
		return unRegisterDate;
	}

	public void setUnRegisterDate(String unRegisterDate) {
		this.unRegisterDate = unRegisterDate;
	}

	public MemberDto() {
		// TODO Auto-generated constructor stub
	}	

	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", password=" + password + ", name=" + name + ", phoneNumber=" + phoneNumber
				+ ", email=" + email + ", roadFullAddr=" + roadFullAddr + ", zipNo=" + zipNo + ", auth=" + auth + ", registerDate=" + registerDate
				+ ", unRegisterDate=" + unRegisterDate + "]";
	}

	public MemberDto(String id, String name, String phoneNumber, String email, String roadFullAddr, int auth, int zipNo,
			String registerDate, String unRegisterDate) {
		super();
		this.id = id;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.roadFullAddr = roadFullAddr;
		this.zipNo = zipNo;
		this.auth = auth;
		this.registerDate = registerDate;
		this.unRegisterDate = unRegisterDate;
	}

}