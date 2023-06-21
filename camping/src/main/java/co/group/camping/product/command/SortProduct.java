package co.group.camping.product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class SortProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		String value = request.getParameter("value");
		
		vo.setSortStandard(request.getParameter("sortStandard"));
		List<ProductVO> list = ps.sortProduct(vo);

		request.setAttribute("sortProducts", list);
		request.setAttribute("kate", value);
		request.setAttribute("sortStandard", request.getParameter("sortStandard"));
		return "product/sortProductList";
	}
}
