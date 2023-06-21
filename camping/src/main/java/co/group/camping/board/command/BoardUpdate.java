package co.group.camping.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class BoardUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 DB에 수정, 저장
		
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.parseInt(request.getParameter("boardId")));
		vo.setMemberId(request.getParameter("memberId"));
		vo.setBoardKate(request.getParameter("boardKate"));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardSubject(request.getParameter("boardSubject"));
		vo.setBoardWdate(Date.valueOf(request.getParameter("boardWdate")));
		
		int b = bs.boardUpdate(vo);
		if(b != 0) {
			request.setAttribute("message", "수정되었습니다.");
		}else {
			request.setAttribute("message", "게시글 수정에 실패했습니다.");
		}
		return "board/boardMessage";
	}

}
