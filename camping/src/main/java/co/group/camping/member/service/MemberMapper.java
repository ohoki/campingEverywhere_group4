package co.group.camping.member.service;

import java.util.List;

public interface MemberMapper {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);

	MemberVO memberLogin(MemberVO vo); // 멤버로그인
}
