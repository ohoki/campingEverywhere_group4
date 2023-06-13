package co.group.camping.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;

public class BoardInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "board/boardInsert";
	}
}
