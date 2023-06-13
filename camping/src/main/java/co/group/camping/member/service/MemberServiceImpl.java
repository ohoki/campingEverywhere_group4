package co.group.camping.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.group.camping.common.DataSource;

public class MemberServiceImpl implements MemberService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	@Override
	public List<MemberVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		return map.memberLogin(vo);
	}
}
//공지사항 문의하기 리뷰게시판
//게시글 번호, 게시글 제목, 게시글 작성자(ID), 게시글 작성일, 조회수, 이미지
//카테고리 ajax
