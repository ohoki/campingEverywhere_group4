package co.group.camping.delivery.service;


//import java.sql.Date;
import java.util.List;

public interface DeliveryService {
	List<Object> deliverySelectList();
	List<Object> deliveryResearch(DeliveryVO vo);
 	DeliveryVO deliverySelect(DeliveryVO vo);
	int deliveryInsert(DeliveryVO vo);
	int deliveryUpdate(DeliveryVO vo);
	int deliveryDelete(DeliveryVO vo);
	
}
