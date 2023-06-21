package co.group.camping.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.review.service.ReviewService;
import co.group.camping.review.service.ReviewServiceImpl;
import co.group.camping.review.service.ReviewVO;

public class ReviewDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewService rs = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setReviewId(Integer.valueOf(request.getParameter("reviewId")));

		int n = rs.reviewDelete(vo);
		if (n != 0) {
			request.setAttribute("message", "삭제 완료");
		} else {
			request.setAttribute("message", "삭제 실패");
		}
		return "product/productMessage";
	}
}
