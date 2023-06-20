package co.group.camping.delivery.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.delivery.service.DeliveryService;
import co.group.camping.delivery.service.DeliveryServiceImpl;
import co.group.camping.delivery.service.DeliveryVO;

public class DeliveryList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		DeliveryService ds = new DeliveryServiceImpl();
		DeliveryVO vo = new DeliveryVO();
		String ses = (String) session.getAttribute("id");
		vo.setMemberId(ses);
		List<Object> del = new ArrayList<>();
		del = ds.deliverySelectList(vo);
		request.setAttribute("del", del);
		return "delivery/deliveryList";
	}

}
