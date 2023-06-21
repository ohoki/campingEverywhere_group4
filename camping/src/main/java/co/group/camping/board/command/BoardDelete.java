package co.group.camping.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		vo.setBoardId(Integer.parseInt(request.getParameter("boardId")));
		
		int b = bs.boardDelete(vo);
		if(b != 0) {
			request.setAttribute("message", "정상적으로 삭제되었습니다.");
		}else{
			request.setAttribute("message", "게시글 삭제에 실패했습니다.");
		}
		return "board/boardMessage";
	}

}
