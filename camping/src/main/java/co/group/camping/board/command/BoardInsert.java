package co.group.camping.board.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class BoardInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();

		vo.setMemberId(request.getParameter("memberId"));
		vo.setBoardKate(request.getParameter("boardKate"));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardSubject(request.getParameter("boardSubject"));
		
		int result = bs.boardInsert(vo);
		System.out.println(result);
		if (result != 0) {
			request.setAttribute("message", "게시글 등록에 성공했습니다.");
		} else {
			request.setAttribute("message", "게시글 등록에 실패했습니다.");
		}
		return "board/boardMessage";
	}
}
