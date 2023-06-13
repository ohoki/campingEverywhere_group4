package co.group.camping.product.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 제품등록 처리 및 파일 업로드
		ProductVO vo = new ProductVO();
		ProductService ps = new ProductServiceImpl();
		vo.setProductId(request.getParameter("productId"));
		vo.setProductName(request.getParameter("productName"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		vo.setProductBrand(request.getParameter("productBrand"));
		vo.setProductKategorie(request.getParameter("productKategorie"));
		vo.setProductImage(request.getParameter("productImage"));
		vo.setProductDate(Date.valueOf(request.getParameter("productDate")));
		vo.setProductSales(Integer.valueOf(request.getParameter("productSales")));

		int n = ps.productInsert(vo);
		if (n != 0) {
			request.setAttribute("message", "물품이 정상적으로 등록되었습니다.");
		} else {
			request.setAttribute("message", "물품 등록이 실패했습니다.");
		}
		return "product/productMessage";
	}
}