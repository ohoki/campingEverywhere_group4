package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class SearchPw implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo = ms.memberSelect(vo);

		if (vo.getMemberName().equals(request.getParameter("name"))) {
			request.setAttribute("message", vo.getMemberId() + "님의 비밀번호는 " + vo.getMemberPw() + " 입니다.");
		}else {
			request.setAttribute("message", "입력한 정보와 일치하는 회원이 없습니다.");
		}
		return "member/memberMessage";
	}
}
