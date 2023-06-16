package co.group.camping.product.service;

import java.util.Comparator;

public class ProductComparator implements Comparator<ProductVO> {
	@Override
	public int compare(ProductVO product1, ProductVO product2) {
		return Long.valueOf(product1.getProductDate().getTime()).compareTo(product2.getProductDate().getTime());
	}
}
