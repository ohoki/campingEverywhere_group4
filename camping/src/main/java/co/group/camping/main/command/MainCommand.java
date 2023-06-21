package co.group.camping.main.command;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductComparator;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class MainCommand implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ArrayList<ProductVO> products1 = (ArrayList<ProductVO>)ps.productSelectList();
		@SuppressWarnings("unchecked")
		ArrayList<ProductVO> products2 = (ArrayList<ProductVO>)products1.clone();
		List<ProductVO> products3 = ps.productSelectMd();
			
		// 신상품 정렬 (내림차순)
		Collections.sort(products1, new ProductComparator().reversed());
		request.setAttribute("products1", products1);
		// 판매량 졍렬 (내림차순)
		Collections.sort(products2, (p1,p2)->p2.getProductSales() - p1.getProductSales());
		request.setAttribute("products2", products2);
		request.setAttribute("products3", products3);
		return "main/main";
	}
}
