package co.group.camping.product.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		String sea = (String)request.getParameter("search");
		products = ps.productSearch(sea);
		request.setAttribute("products", products);
		return "product/productList";
	}

}
