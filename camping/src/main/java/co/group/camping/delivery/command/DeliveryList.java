package co.group.camping.delivery.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.delivery.service.DeliveryService;
import co.group.camping.delivery.service.DeliveryServiceImpl;

public class DeliveryList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		DeliveryService ds = new DeliveryServiceImpl();
		List<Object> del = new ArrayList<>();
		
		del = ds.deliverySelectList();
		
		request.setAttribute("del", del);
		return "delivery/deliveryList";
	}

}
