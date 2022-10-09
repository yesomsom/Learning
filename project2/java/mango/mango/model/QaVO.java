package mango.mango.model;

import java.util.Date;

public class QaVO {


	private int qa_id; // qa글 고유 번호
//	private int qa_num;			//qa글 번호
	private String qa_cat; // qa 카테고리
	private String qa_subject; // 글 제목
	private String qa_content; // 글 내용
	private String qa_fileName; // 첨부 파일 이름
	private Date qa_date; // 작성일

	public QaVO() {
	}

	

	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

	public QaVO(int qa_id, String qa_cat, String qa_subject, String qa_content, String qa_fileName, Date qa_date) {
		super();
		this.qa_id = qa_id;
		this.qa_cat = qa_cat;
		this.qa_subject = qa_subject;
		this.qa_content = qa_content;
		this.qa_fileName = qa_fileName;
		this.qa_date = qa_date;
	}

	public int getQa_id() {
		return qa_id;
	}

	public void setQa_id(int qa_id) {
		this.qa_id = qa_id;
	}

	public String getQa_cat() {
		return qa_cat;
	}

	public void setQa_cat(String qa_cat) {
		this.qa_cat = qa_cat;
	}

	public String getQa_subject() {
		return qa_subject;
	}

	public void setQa_subject(String qa_subject) {
		this.qa_subject = qa_subject;
	}

	public String getQa_content() {
		return qa_content;
	}

	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}

	public String getQa_fileName() {
		return qa_fileName;
	}

	public void setQa_fileName(String qa_fileName) {
		this.qa_fileName = qa_fileName;
	}

	public Date getQa_date() {
		return qa_date;
	}

	public void setQa_date(Date qa_date) {
		this.qa_date = qa_date;
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
