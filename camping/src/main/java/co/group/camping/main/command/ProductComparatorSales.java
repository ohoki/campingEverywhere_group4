package co.group.camping.main.command;

import java.util.Comparator;

import co.group.camping.product.service.ProductVO;

public class ProductComparatorSales implements Comparator<ProductVO> {

	@Override
	public int compare(ProductVO product1, ProductVO product2) {
		return product1.getProductSales() - product2.getProductSales();
	}
}
