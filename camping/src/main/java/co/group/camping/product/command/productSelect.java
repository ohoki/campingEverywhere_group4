package co.group.camping.product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.cart.service.CartService;
import co.group.camping.cart.service.CartServiceImpl;
import co.group.camping.cart.service.CartVO;
import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		CartVO vo = new CartVO();
		vo.setMemberId((String)session.getAttribute("id"));
		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();
		
		product.setProductId(request.getParameter("productId"));
		product = ps.productSelect(product);
		CartService cs = new CartServiceImpl();
		List<Object> cart = cs.cartList(vo);
		
		request.setAttribute("product", product);
		request.setAttribute("cart", cart);
		return "product/productSelect";
	}
}
