package co.group.camping.cart.service;

import java.util.List;

public interface CartService {
	List<Object> cartList(CartVO vo);

	CartVO cartSelect(CartVO vo);

	int cartInsert(CartVO vo);

	int cartUpdate(CartVO vo);

	int cartDelete(CartVO vo);
}
