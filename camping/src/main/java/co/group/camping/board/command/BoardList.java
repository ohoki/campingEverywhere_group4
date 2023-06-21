package co.group.camping.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;
import co.group.camping.controller.Paging;

public class BoardList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService bs = new BoardServiceImpl();
		List<BoardVO> boards = new ArrayList<>();
		
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(10);
		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1;
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		//전체 출력
		int total =bs.listPage();
		paging.setTotalRecord(total);
		
		BoardVO vo = new BoardVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		
		boards = bs.boardSelectList(vo);
		
		
		request.setAttribute("boards", boards);
		request.setAttribute("paging", paging);
		return "board/boardList";
	}
}




