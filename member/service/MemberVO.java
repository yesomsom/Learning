package mango.member.service;

import java.sql.Date;

public class MemberVO {

	private int uid;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberGender;
	private String birth;
	private String memberType;
	private int memberLevel;
	private int memberPoint;
	private int phoneNumber;
	private String email;
	private String emailDomain;
	/* private char infoYN; */
	private String infoYN;
	private Date joinDate;
	private Date deletedDate;
	private char delYN;
	private int sendPhoneNumber;
	private String salt;

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public int getMemberLevel() {
		return memberLevel;
	}

	public void setMemberLevel(int memberLevel) {
		this.memberLevel = memberLevel;
	}

	public int getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailDomain() {
		return emailDomain;
	}

	public void setEmailDomain(String emailDomain) {
		this.emailDomain = emailDomain;
	}
//	public char getInfoYN() {
//		return infoYN;
//	}
//	public void setInfoYN(char infoYN) {
//		this.infoYN = infoYN;
//	}

	public Date getJoinDate() {
		return joinDate;
	}

	public String getInfoYN() {
		return infoYN;
	}

	public void setInfoYN(String infoYN) {
		this.infoYN = infoYN;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getDeletedDate() {
		return deletedDate;
	}

	public void setDeletedDate(Date deletedDate) {
		this.deletedDate = deletedDate;
	}

	public char getDelYN() {
		return delYN;
	}

	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}

	public int getSendPhoneNumber() {
		return sendPhoneNumber;
	}

	public void setSendPhoneNumber(int sendPhoneNumber) {
		this.sendPhoneNumber = sendPhoneNumber;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}
}
