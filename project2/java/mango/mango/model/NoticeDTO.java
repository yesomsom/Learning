package mango.mango.model;

import java.util.Date;


public class NoticeDTO {
	private int noti_id;		//공지글 고유 번호
//	private int noti_num;		//공지 글 번호
//	private String id;		//작성자 id(관리자)
	private String noti_subject;	//글 제목
	private String noti_content;		//글 내용
	private String noti_fileName;		//첨부파일 이름
	private Date noti_date;		//작성일	
	
	public NoticeDTO() {
	}	
	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )
	
	public NoticeDTO(int noti_id,
			/* int noti_num, */ String noti_subject, String noti_content, String noti_fileName, Date noti_date) {
		super();
		this.noti_id =noti_id;
//		this.noti_num = noti_num;
		this.noti_subject = noti_subject;
		this.noti_content = noti_content;
		this.noti_fileName = noti_fileName;
		this.noti_date = noti_date;
	}

	public int getNoti_id() {
		return noti_id;
	}
	public void setNoti_id(int noti_id) {
		this.noti_id = noti_id;
	}
//	public int getNoti_num() {
//		return noti_num;
//	}
//	public void setNoti_num(int noti_num) {
//		this.noti_num = noti_num;
//	}
	public String getNoti_subject() {
		return noti_subject;
	}
	public void setNoti_subject(String noti_subject) {
		this.noti_subject = noti_subject;
	}
	public String getNoti_content() {
		return noti_content;
	}
	public void setNoti_content(String noti_content) {
		this.noti_content = noti_content;
	}
	public String getNoti_fileName() {
		return noti_fileName;
	}
	public void setNoti_fileName(String noti_fileName) {
		this.noti_fileName = noti_fileName;
	}
	public Date getNoti_date() {
		return noti_date;
	}
	public void setNoti_date(Date noti_date) {
		this.noti_date = noti_date;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getSkip() {
		return skip;
	}
	public void setSkip(int skip) {
		this.skip = skip;
	}

	

}
