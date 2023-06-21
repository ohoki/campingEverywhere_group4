package co.group.camping.review.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.group.camping.common.DataSource;

public class ReviewServiceImpl implements ReviewService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);

	@Override
	public List<ReviewVO> reviewList() {
		// TODO Auto-generated method stub
		return map.reviewList();
	}

	@Override
	public List<ReviewVO> reviewSelectList(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewSelectList(vo);
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewSelect(vo);
	}

	@Override
	public int reviewInsert(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewUpdate(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewUpdate(vo);
	}

	@Override
	public int reviewDelete(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewDelete(vo);
	}

}
