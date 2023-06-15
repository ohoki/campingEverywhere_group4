package co.group.camping.product.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String dir = "assets" + File.separator + "img" + File.separator + "products";
		String saveDir = request.getServletContext().getRealPath(dir);
		int maxSize = 100 * 1024 * 1024;

		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();

		try {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8",
					new DefaultFileRenamePolicy());
			String pfile = multi.getFilesystemName("pfile");
			pfile = saveDir + pfile;
			String ofile = multi.getOriginalFileName("pfile");

			vo.setProductId(multi.getParameter("productId"));
			vo.setProductName(multi.getParameter("productName"));
			vo.setProductPrice(Integer.valueOf(multi.getParameter("productPrice")));
			vo.setProductBrand(multi.getParameter("productBrand"));
			vo.setProductKategorie(multi.getParameter("productKategorie"));
			vo.setProductDate(Date.valueOf(multi.getParameter("productDate")));
			vo.setProductSales(Integer.valueOf(multi.getParameter("productSales")));

			if (ofile != null) {
				vo.setProductImage(ofile);
			}
			int n = ps.productInsert(vo);
			if (n != 0) {
				request.setAttribute("message", "물품이 정상적으로 등록되었습니다.");
			} else {
				request.setAttribute("message", "물품 등록이 실패했습니다.");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "product/productMessage";
	}
}
