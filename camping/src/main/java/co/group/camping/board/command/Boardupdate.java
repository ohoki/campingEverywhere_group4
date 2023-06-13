package co.group.camping.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class Boardupdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//게시글 수정
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.parseInt(request.getParameter("boardId")));
		vo.setBoardWdate(Date.valueOf(request.getParameter("boardWdate")));
		vo.setBoardSubject(request.getParameter("boardSubject"));
		vo.setBoardTitle(request.getParameter("boardTitle"));
//		vo.setBoardKate(request.getParameter("boardKate"));
		
		int result = bs.boardUpdate(vo);
		if(result != 0 ) {
			request.setAttribute("message", "정상적으로 수정되었습니다.");
		}else {
			request.setAttribute("message", "게시글 수정에 실패했습니다.");
		}
		return "board/boardMessage";
	}

}
