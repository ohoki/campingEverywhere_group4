package co.group.camping.delivery.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.group.camping.common.Command;
import co.group.camping.delivery.service.DeliveryService;
import co.group.camping.delivery.service.DeliveryServiceImpl;
import co.group.camping.delivery.service.DeliveryVO;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class DeliveryInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		DeliveryService ds = new DeliveryServiceImpl();
		DeliveryVO vo = new DeliveryVO();
		vo.setMemberId((String) session.getAttribute("id"));
		vo.setProductId(request.getParameter("productId"));
		
		ds.deliveryInsert(vo);
		List<Object> del = ds.deliverySelectList(vo);

		ProductService ps = new ProductServiceImpl();
		ProductVO product = new ProductVO();
		product.setProductId(request.getParameter("productId"));
		
		ps.productQuantity(product);
		ps.productSales(product);
		request.setAttribute("del", del);
		return "delivery/deliveryList";
	}

}
