package co.group.camping.product.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();

		product.setProductId(request.getParameter("productId"));
		product.setProductName(request.getParameter("productName"));
		product.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		product.setProductKategorie(request.getParameter("productKategorie"));
		product.setProductDate(Date.valueOf(request.getParameter("productDate")));

		int n = ps.productUpdate(product);
		if (n != 0) {
			request.setAttribute("message", "수정 완료");
		} else {
			request.setAttribute("message", "수정 실패");
		}
		return "product/productMessage";
	}
}
