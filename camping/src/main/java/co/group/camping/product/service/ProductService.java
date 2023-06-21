package co.group.camping.product.service;

import java.util.List;

public interface ProductService {
	List<ProductVO> productSelectList();

	List<ProductVO> sortProduct(ProductVO vo);
	
	List<ProductVO> productIndividualList(ProductVO vo);
	
	List<ProductVO> productSelectMd();
	
	List<ProductVO> productSearch(String search);
	
	ProductVO productSelect(ProductVO vo);

	int productInsert(ProductVO vo);

	int productUpdate(ProductVO vo);
	
	int productQuantity(ProductVO vo);
	
	int productSales(ProductVO vo);
	
	int productDelete(ProductVO vo);
}
