package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		member.setMemberId(request.getParameter("memberId"));
		int n = ms.memberDelete(member);
		if (n != 0) {
			HttpSession session = request.getSession();
			session.invalidate();
			request.setAttribute("message", "회원 탈퇴 완료 !");
		} else {
			request.setAttribute("message", "삭제가 실패하였습니다.");
		}
		
		return "member/memberMessage";
	}

}
