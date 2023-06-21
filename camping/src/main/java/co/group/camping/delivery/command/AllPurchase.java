package co.group.camping.delivery.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.delivery.service.DeliveryService;
import co.group.camping.delivery.service.DeliveryServiceImpl;
import co.group.camping.delivery.service.DeliveryVO;

public class AllPurchase implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();

		DeliveryService ds = new DeliveryServiceImpl();
		DeliveryVO vo = new DeliveryVO();

		return "delivery/deliveryList";
	}

}
