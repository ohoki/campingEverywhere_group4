package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberPwEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO member = new MemberVO();

		member.setMemberId(request.getParameter("memberId"));
		member.setMemberPw(request.getParameter("memberPw"));
		
		int n = ms.memberUpdate(member);
		if (n != 0) {
			HttpSession session = request.getSession();
			session.invalidate();
			return "main.do";
		} else {
			request.setAttribute("message", "비밀번호 변경 실패 !");
		}
		return "main.do";
	}

}
