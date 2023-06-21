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

public class BoardSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	BoardService bs = new BoardServiceImpl();
	List<BoardVO> search = new ArrayList<>();
	
	Paging paging = new Paging();
	paging.setPageUnit(10);
	
	String page = request.getParameter("page");
	int p = 1;
	if (page != null)
		p = Integer.parseInt(page);
	paging.setPage(p);
	
	int total =bs.listPage();
	paging.setTotalRecord(total);
	
	BoardVO vo = new BoardVO();
	vo.setFirst(paging.getFirst());
	vo.setLast(paging.getLast());
	vo.setKate(request.getParameter("kate"));
	vo.setSearch(request.getParameter("search"));
	search = bs.boardSearch(vo);
	
	request.setAttribute("boards", search);
	request.setAttribute("paging", paging);
	
	return "board/boardSearch";
	}

}
