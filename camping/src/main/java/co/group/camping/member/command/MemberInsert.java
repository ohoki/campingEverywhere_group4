package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입을 수행한다
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAuth(request.getParameter("memberAuth"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		vo.setMemberTel(request.getParameter("memberTel"));
		
		int n = ms.memberInsert(vo);
		
		if(n != 0)
			request.setAttribute("message", "회원가입이 정상적으로 처리되었습니다.");
		else
			request.setAttribute("message", "회원가입이 실패했습니다. 다시가입하라");
		return "member/memberMessage";
	}
}
