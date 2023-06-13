package co.group.camping.product.service;

import java.util.List;

public interface ProductMapper {
	List<ProductVO> productSelectList(); 
	ProductVO productselect(ProductVO vo);
	int productInsert(ProductVO vo);
	int productUpdate(ProductVO vo);
	int productDelete(ProductVO vo);
}
