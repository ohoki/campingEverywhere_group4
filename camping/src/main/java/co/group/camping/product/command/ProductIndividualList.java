package co.group.camping.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class ProductIndividualList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		ProductVO vo = new ProductVO();
		
		vo.setProductKategorie(request.getParameter("value"));
		
		products = ps.productIndividualList(vo);
		
		request.setAttribute("products", products);
		
		return "product/productList";
	}

}
