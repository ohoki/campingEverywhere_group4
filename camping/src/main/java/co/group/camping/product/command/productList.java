package co.group.camping.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.cart.service.CartVO;
import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		products = ps.productSelectList();
		String value = request.getParameter("value");
		CartVO cart = new CartVO();
		request.setAttribute("products", products);
		request.setAttribute("kate", value);
		request.setAttribute("cart", cart);
		return "product/productList";
	}
}
