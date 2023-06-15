package co.group.camping.delivery.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;

public class DeliveryTest implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "delivery/deliveryTest";
	}

}
