package co.group.camping.product.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productPurchaseForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();

		product.setProductId(request.getParameter("productId"));
		product = ps.productSelect(product);
		
		request.setAttribute("product", product);

		return "product/productPurchaseForm";
	}

}
