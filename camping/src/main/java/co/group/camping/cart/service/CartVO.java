package co.group.camping.cart.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CartVO {
//	CART_ID    NOT NULL NUMBER        
//	CART_NUM            NUMBER        
//	MEMBER_ID           VARCHAR2(100) 
//	PRODUCT_ID          VARCHAR2(200) 
	private int cartId;
	private int cartNum;
	private String memberId;
	private String  productId;
	private String memberName;
	private int productPrice;
	private int total;
	private String proudctImage;
}
