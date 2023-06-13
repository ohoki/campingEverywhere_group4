package co.group.camping.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();
		product.setProductId(request.getParameter("productId"));
		product = ps.productselect(product);
		
		request.setAttribute("product", product);
		return "product/productSelect";
	}

}
