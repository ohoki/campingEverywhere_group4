package co.group.camping.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class AjaxUpdateRecommend implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		String str = "ajax:";
		
		vo.setProductId(request.getParameter("productId"));
		vo = ps.productSelect(vo);
		
		if( vo.getRecommend() != null) {
			vo.setRecommend(null);
		} else {
			vo.setRecommend("MD");
		}
		int result = ps.productUpdate(vo);
		
		if (result == 1) {
			str += "complete";
		} else {
			str += "fail";
		}
		return str;
	}

}
