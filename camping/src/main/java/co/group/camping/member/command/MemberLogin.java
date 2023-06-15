package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 처리
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));

		vo = ms.memberLogin(vo);
		if (vo != null) {
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("auth", vo.getMemberAuth());

			return "main.do";
		} else {
			request.setAttribute("message", "아이디 또는 패스워드가 틀렸습니다.");
		}
		return "member/memberMessage";
	}
}
