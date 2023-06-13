package co.group.camping.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class BoardEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 선택한 게시글의 데이터를 가지고 boardEdit 폼을 연다. 그후 수정을 누르면 실제 db와 데이터를 주고받아 데이터수정
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.parseInt(request.getParameter("boardId")));
		vo = bs.boardSelect(vo);
		request.setAttribute("board", vo);
		
		return "board/boardEdit";
	}

}
