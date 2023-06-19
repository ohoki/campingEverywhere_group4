package co.group.camping.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.service.BoardService;
import co.group.camping.board.service.BoardServiceImpl;
import co.group.camping.board.service.BoardVO;
import co.group.camping.common.Command;

public class BoardSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	BoardService bs = new BoardServiceImpl();
	List<BoardVO> search = new ArrayList<>();
	BoardVO vo = new BoardVO();
	
	vo.setKate(request.getParameter("kate"));
	vo.setSearch(request.getParameter("search"));
	
	
	System.out.println(vo.getSearch());
	System.out.println(vo.getKate());
	search = bs.boardSearch(vo);
	
	request.setAttribute("boards", search);
	
	
	return "board/boardSearch";
	}

}
