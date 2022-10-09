package mango.mango.model;

import lombok.Data;
@Data
public class MovieVO {
	public MovieVO(String rank, String img, String movieTitle, String movieRate, String movieOpenDate, int seq) {

	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public String getMovieRate() {
		return movieRate;
	}

	public void setMovieRate(String movieRate) {
		this.movieRate = movieRate;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String movieRank) {
		this.rank = rank;
	}

	public String getMovieOpenDate() {
		return movieOpenDate;
	}

	public void setMovieOpenDate(String movieOpenDate) {
		this.movieOpenDate = movieOpenDate;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	private int seq;
	private String movieTitle;
	private String movieRate;
	private String rank;
	private String movieOpenDate;
	private String img;

}
