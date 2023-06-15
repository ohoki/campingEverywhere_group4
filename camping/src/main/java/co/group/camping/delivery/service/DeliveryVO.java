package co.group.camping.delivery.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DeliveryVO {
//	DELIVERY_NUM   NOT NULL NUMBER        
//	DELIVERY_DATE           DATE          
//	DELIVERY_CHECK          VARCHAR2(20)  
//	PRODUCT_ID              VARCHAR2(200) 
//	MEMBER_ID               VARCHAR2(200)
	private int deliveryNum;
	private Date deliveryDate;
	private String deliveryCheck;
	private String productId;
	private String memberId;
	private int productPrice;
	private String productName;
	private Date startDate;
	private Date endDate;
}
