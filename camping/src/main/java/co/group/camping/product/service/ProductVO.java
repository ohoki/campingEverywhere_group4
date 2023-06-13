package co.group.camping.product.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter 
@Getter
public class ProductVO {
//	PRODUCT_ID        NOT NULL VARCHAR2(200) 
//	PRODUCT_NAME      NOT NULL VARCHAR2(100) 
//	PRODUCT_PRICE     NOT NULL NUMBER        
//	PRODUCT_BRAND              VARCHAR2(100) 
//	PRODUCT_KATEGORIE          VARCHAR2(100) 
//	PRODUCT_IMAGE              VARCHAR2(512) 
//	PRODUCT_DATE               DATE          
//	PRODUCT_SALES              NUMBER   
	private String productId;
	private String productName;
	private int productPrice;
	private String productBrand;
	private String productKategorie;
	private String productImage;
	private Date productDate;
	private int productSales;
	
}
