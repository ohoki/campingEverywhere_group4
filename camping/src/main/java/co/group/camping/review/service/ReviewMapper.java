package co.group.camping.review.service;

import java.util.List;

public interface ReviewMapper {
	List<ReviewVO> reviewList();

	List<ReviewVO> reviewSelectList(ReviewVO vo);

	ReviewVO reviewSelect(ReviewVO vo);

	int reviewInsert(ReviewVO vo);

	int reviewUpdate(ReviewVO vo);

	int reviewDelete(ReviewVO vo);
}
