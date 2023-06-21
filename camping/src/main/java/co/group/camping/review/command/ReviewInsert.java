package co.group.camping.review.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.group.camping.common.Command;
import co.group.camping.review.service.ReviewService;
import co.group.camping.review.service.ReviewServiceImpl;
import co.group.camping.review.service.ReviewVO;

public class ReviewInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String dir = "assets" + File.separator + "img" + File.separator + "review";
		String saveDir = request.getServletContext().getRealPath(dir);
		int maxSize = 100 * 1024 * 1024;
		
		ReviewService rs = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		try {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8",
					new DefaultFileRenamePolicy());
			String pfile = multi.getFilesystemName("pfile");
			String ofile = multi.getOriginalFileName("pfile");

			vo.setReviewRate(Integer.valueOf(multi.getParameter("reviewRate")));
			vo.setReviewTitle(multi.getParameter("reviewTitle"));
			vo.setReviewSubject(multi.getParameter("reviewSubject"));
			vo.setMemberId(multi.getParameter("memberId"));
			vo.setProductId(multi.getParameter("productId"));
			
			if (ofile != null) {
				vo.setReviewImg(ofile);				
				vo.setImageFileName(pfile);
			}
			
			int n = rs.reviewInsert(vo);
			if (n != 0) {
				request.setAttribute("message", "리뷰등록이 정상적으로 등록되었습니다.");
			} else {
				request.setAttribute("message", "리뷰등록이 실패했습니다.");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "product/productMessage";
	}

}
