package co.group.camping.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.group.camping.common.DataSource;

public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProductMapper map = sqlSession.getMapper(ProductMapper.class);

	@Override
	public List<ProductVO> productSelectList() {
		// TODO Auto-generated method stub
		return map.productSelectList();
	}

	@Override
	public List<ProductVO> productIndividualList(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productIndividualList(vo);
	}
	
	@Override
	public List<ProductVO> productSelectMd() {
		// TODO Auto-generated method stub
		return map.productSelectMd();
	}
	
	@Override
	public ProductVO productSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productSelect(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productDelete(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productInsert(vo);
	}
}
