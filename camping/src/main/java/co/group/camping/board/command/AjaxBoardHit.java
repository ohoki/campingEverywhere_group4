package co.group.camping.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class AjaxBoardHit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		String str = "ajax:";
		
		vo.setBoardId(Integer.valueOf(request.getParameter("boardId")));
		int result = bs.boardHit(vo);
		
		if(result == 1) {
			str += "complete";
		}else{
			str += "fail";
		}
		
		return str;
	}

}
