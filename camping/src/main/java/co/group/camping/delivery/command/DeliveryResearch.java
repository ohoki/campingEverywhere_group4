package co.group.camping.delivery.command;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.delivery.service.DeliveryService;
import co.group.camping.delivery.service.DeliveryServiceImpl;
import co.group.camping.delivery.service.DeliveryVO;

public class DeliveryResearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		DeliveryService ds = new DeliveryServiceImpl();
		List<Object> del = new ArrayList<>();
		DeliveryVO vo = new DeliveryVO();
		vo.setStartDate(Date.valueOf(request.getParameter("startDay")));
		vo.setEndDate(Date.valueOf(request.getParameter("endDay")));
		del = ds.deliveryResearch(vo);
		request.setAttribute("del", del);
		
		return "delivery/deliveryList";
	}

}
