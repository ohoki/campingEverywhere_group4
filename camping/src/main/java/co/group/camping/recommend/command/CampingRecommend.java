package co.group.camping.recommend.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;

public class CampingRecommend implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "campingPlace/campingRecommend";
	}
}
