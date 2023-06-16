package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		member.setMemberId(request.getParameter("memberId"));
		member.setMemberName(request.getParameter("memberName"));
		member.setMemberAddr(request.getParameter("memberAddr"));
		member.setMemberTel(request.getParameter("memberTel"));

		int n = ms.memberFullUpdate(member);
		if (n != 0) {
			HttpSession session = request.getSession();
			session.invalidate();
			request.setAttribute("massage", " 정보 수정 완료 ! ! 메인 화면으로 돌아갑니다.");
			/* 세션에 정보 넣는법
			 * https://studying-modory.tistory.com/entry/210118-JSP-Servlet-%ED%9A%8C%EC%9B%
			 * 90%EC%A0%95%EB%B3%B4%EC%88%98%EC%A0%95-%EB%A9%94%EC%84%B8%EC%A7%80%EC%8B%9C%
			 * EC%8A%A4%ED%85%9 참고 
			 * HttpSession session = request.getSession();
			 * session.setAttribute("member", member);
			 */
			return "main.do";
		} else {
			return "memberInfo.do";
		}
	}

}
