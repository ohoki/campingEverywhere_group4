package co.group.camping.cart.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import co.group.camping.common.DataSource;

public class CartServiceImpl implements CartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartMapper map = sqlSession.getMapper(CartMapper.class);
	
	
	@Override
	public List<Object> cartList(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartList(vo);
	}

	@Override
	public CartVO cartSelect(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartSelect(vo);
	}

	@Override
	public int cartInsert(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartInsert(vo);
	}

	@Override
	public int cartUpdate(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartUpdate(vo);
	}

	@Override
	public int cartDelete(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartDelete(vo);
	}

}
