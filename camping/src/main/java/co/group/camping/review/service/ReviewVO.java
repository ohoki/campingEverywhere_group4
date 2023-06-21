package co.group.camping.review.service;

import java.sql.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private int reviewId;
	private int reviewRate;
	private String reviewTitle;
	private String reviewSubject;
	private String reviewImg;
	private String imageFileName;
	private String memberId;
	private String productId;
	private Date reviewDate;
}
