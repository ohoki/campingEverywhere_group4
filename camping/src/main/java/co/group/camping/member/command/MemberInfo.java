package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 내정보 페이지 리턴
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		vo.setMemberId(request.getParameter("memberId"));

		vo = ms.memberSelect(vo);
		vo = ms.memberLogin(vo);
		
		if (vo != null) {
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("pw", vo.getMemberPw());
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("addr", vo.getMemberAddr());
			session.setAttribute("tel", vo.getMemberTel());
		}
		return "member/memberInfo";
	}
}
