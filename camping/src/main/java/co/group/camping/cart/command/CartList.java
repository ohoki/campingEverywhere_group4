package co.group.camping.cart.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.cart.service.CartService;
import co.group.camping.cart.service.CartServiceImpl;
import co.group.camping.cart.service.CartVO;
import co.group.camping.common.Command;

public class CartList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartVO vo = new CartVO();
		HttpSession session = request.getSession();
		String ses = (String)session.getAttribute("id");
		vo.setMemberId(ses);
		
		CartService cs = new CartServiceImpl();
		List<Object> cart = new ArrayList<>();
		cart = cs.cartList(vo);
		request.setAttribute("cart", cart);
		return "cart/cartList";
	}

}
