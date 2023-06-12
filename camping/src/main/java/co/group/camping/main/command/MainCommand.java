package co.group.camping.main.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;

public class MainCommand implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "main/main";
	}

}
