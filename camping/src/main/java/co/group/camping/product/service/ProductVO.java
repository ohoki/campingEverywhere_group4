package co.group.camping.product.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ProductVO{
	private String productId;
	private String productName;
	private int productPrice;
	private String productBrand;
	private String productKategorie;
	private String productImage;
	private Date productDate;
	private int productSales;
	private String imageFileName;
	private int productQuantity;
	private String recommend;
	private String productDetail;
}
