package co.group.camping.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;

public class MyPage implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "member/myPage";
	}
}
