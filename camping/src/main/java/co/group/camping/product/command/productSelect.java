package co.group.camping.product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;
import co.group.camping.review.service.ReviewService;
import co.group.camping.review.service.ReviewServiceImpl;
import co.group.camping.review.service.ReviewVO;

public class productSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();
		product.setProductId(request.getParameter("productId"));
		product = ps.productSelect(product);

		request.setAttribute("product", product);
		
		ReviewService rs = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setProductId(request.getParameter("productId"));
		List<ReviewVO> list = rs.reviewSelectList(vo);
		
		request.setAttribute("reviews", list);
		
		return "product/productSelect";
	}
}
