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
		String str = "ajax:";
		
		vo.setMemberId(request.getParameter("memberId"));
		vo = ms.memberSelect(vo);

		if (vo != null && vo.getMemberName().equals(request.getParameter("name"))) {
			str += "{\"memberPw\":\""+vo.getMemberPw()+"\",\"memberId\":\""+vo.getMemberId()+"\"}"; 
			
			request.setAttribute("member", vo);
		}else {
			str += "none";
		}
		return str;
	}
}
