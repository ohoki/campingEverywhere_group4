package co.group.camping.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);

	MemberVO memberLogin(MemberVO vo); // 멤버로그인
	
	int memberFullUpdate(MemberVO vo); // 비밀번호를 제외한 다른 정보 수정
}
