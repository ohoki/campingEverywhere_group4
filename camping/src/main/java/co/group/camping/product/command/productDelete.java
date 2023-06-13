package co.group.camping.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();
		product.setProductId(request.getParameter("productId"));
		int n = ps.productDelete(product);
		if (n != 0) {
			request.setAttribute("message", "정상적으로 삭제되었습니다.");
		} else {
			request.setAttribute("message", "삭제가 실패하였습니다.");
		}
		return "product/productMessage";
	}
}
