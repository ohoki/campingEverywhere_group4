package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl(); 
		MemberVO member = new MemberVO();
		
		member.setMemberId(request.getParameter("memberId")); 
		member = ms.memberSelect(member);
		
		request.setAttribute("member", member);
		
		// 비밀번호 수정 폼으로 이동
		return "member/memberEditForm";
	}

}
