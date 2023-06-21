package co.group.camping.delivery.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.group.camping.common.DataSource;

public class DeliveryServiceImpl implements DeliveryService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private DeliveryMapper map = sqlSession.getMapper(DeliveryMapper.class);

	@Override
	public List<Object> deliverySelectList(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return map.deliverySelectList(vo);
	}

	@Override
	public List<Object> deliveryResearch(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return map.deliveryResearch(vo);
	}

	@Override
	public DeliveryVO deliverySelect(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return map.deliverySelect(vo);
	}

	@Override
	public int deliveryInsert(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return map.deliveryInsert(vo);
	}

	@Override
	public int deliveryUpdate(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return map.deliveryUpdate(vo);
	}

	@Override
	public int deliveryDelete(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return map.deliveryDelete(vo);
	}

	@Override
	public int allPurchase(List<Object> list) {
		// TODO Auto-generated method stub
		return map.allPurchase(list);
	}

}
