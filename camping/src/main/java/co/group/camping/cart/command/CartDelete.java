package co.group.camping.cart.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.cart.service.CartService;
import co.group.camping.cart.service.CartServiceImpl;
import co.group.camping.cart.service.CartVO;
import co.group.camping.common.Command;

public class CartDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		CartService cs = new CartServiceImpl();
		CartVO vo = new CartVO();
		vo.setCartId(Integer.valueOf(request.getParameter("cartId")));
		cs.cartDelete(vo);
		String ses = (String)session.getAttribute("id");
		vo.setMemberId(ses);
		List<Object> cart = cs.cartList(vo);
		request.setAttribute("cart", cart);
		return "cart/cartList";
	}

}
