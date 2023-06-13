package co.group.camping.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.member.service.MemberService;
import co.group.camping.member.service.MemberServiceImpl;
import co.group.camping.member.service.MemberVO;

public class MemberList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// Member List
		MemberService ms = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<>();
		members = ms.memberSelectList();

		request.setAttribute("members", members);
		return "member/memberList";
	}
}
