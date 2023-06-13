package co.group.camping.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.command.BoardInsert;
import co.group.camping.board.command.BoardInsertForm;
import co.group.camping.board.command.BoardList;
import co.group.camping.board.command.BoardSelect;
import co.group.camping.common.Command;
import co.group.camping.main.command.MainCommand;
import co.group.camping.member.command.AjaxCheckId;
import co.group.camping.member.command.MemberInsert;
import co.group.camping.member.command.MemberJoin;
import co.group.camping.member.command.MemberList;
import co.group.camping.member.command.MemberLogin;
import co.group.camping.member.command.MemberLoginForm;
import co.group.camping.member.command.MemberLogout;
import co.group.camping.recommend.command.CampingRecommend;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainCommand());
		map.put("/memberList.do", new MemberList());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberLogout.do", new MemberLogout());
		map.put("/ajaxCheckId.do", new AjaxCheckId());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardInsertForm.do", new BoardInsertForm());
		map.put("/boardList.do", new BoardList());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/campingRecommend.do", new CampingRecommend());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청을 분석하고, 수행할 Command를 찾아서 수행하고, 결과를 돌려준다.
		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI(); // 호출한 URI를 구함
		String contextPath = request.getContextPath(); // root 를 구함
		String page = uri.substring(contextPath.length()); // 요청한 페이지 구함

		Command command = map.get(page); // 수행할 command를 가져온다
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
			viewPage += ".tiles";

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(viewPage); // 결과가 *.do이면 위임해버림
		}
	}
}
