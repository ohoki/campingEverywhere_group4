package co.group.camping.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;

public class ReviewInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("productId", request.getParameter("productId"));
		
		return "review/reviewInsertForm";
	}

}
