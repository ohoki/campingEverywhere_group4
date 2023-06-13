package co.group.camping.product.command;


import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import co.group.camping.common.Command;
import co.group.camping.product.service.ProductService;
import co.group.camping.product.service.ProductServiceImpl;
import co.group.camping.product.service.ProductVO;

public class productInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	// 제품등록 처리 및 파일 업로드
	ProductVO vo = new ProductVO();
	ProductService ps = new ProductServiceImpl();
	vo.setProductId(request.getParameter("productId"));
	vo.setProductName(request.getParameter("productName"));
	vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
	vo.setProductBrand(request.getParameter("productBrand"));
	vo.setProductKategorie(request.getParameter("productKategorie"));
	vo.setProductImage(request.getParameter("productImage"));
	vo.setProductDate(Date.valueOf(request.getParameter("productDate")));
	vo.setProductSales(Integer.valueOf(request.getParameter("productSales")));
	
	int n = ps.productInsert(vo);
	if(n != 0) {
		request.setAttribute("message", "물품이 정상적으로 등록되었습니다.");
	}else {
		request.setAttribute("message", "물품 등록이 실패했습니다.");
	}
	return "product/productMessage";
	}
	
	
}

//	// "//"을 쓰는 이유 : 인식을 못할까봐 
//	// saveDir = 파일 저장 위치
//	String saveDir = "c://temp//";
//	int maxSize = 100 * 1024 * 1024; // 최대 100mb(defalut값은 200mb까지)
//	// try,catch문 안에 사용해야한다. 
//	try {
//		// 넘어온 객체를 받기위한 multipartRequest 객체 사용 
//		MultipartRequest multi = new MultipartRequest(
//										request,
//										saveDir,
//										maxSize,
//										"utf-8", 
//										// 동일한 파일이 존재할시 사용하는 class
//										new DefaultFileRenamePolicy());
//		// "pfile" 변수명은 form에서 사용하는 변수명
//		// pfile과 ofile은 java에서 정의하는 변수명
//		// 메모리에 존재하는 파일이 home객체에서 가지고 있는 파일의 변수명과 같아야한다(jsp에서 id값)
//		String pfile = multi.getFilesystemName("pfile");
//		// 파일명만 있으면 정확한 위치를 알려주기 위해 저장폴더 위치를 더해 저장한다. 
//		pfile = saveDir + pfile;
//		String ofile = multi.getOriginalFileName("pfile");
//		// multi로 앵커타입을 설정했기때문에 request.getparameter가 아닌  
//		// multi.getparameter로 값을 읽어야 정상적으로 처리된다.
//		vo.setProductId(multi.getParameter("productId"));
//		vo.setProductName(multi.getParameter("productName"));
//		// ofile not null => 파일이 존재한다면.
//		if(ofile != null) {
//			vo.setProductImage(ofile);
//		}
//		ps.productInsert(vo);
//		// IOException 파일을 못찾을떄 생기는 오류
//	} catch (IOException e) {
//		e.printStackTrace();
//	}
//	
//	return "productList.do";
//	}


