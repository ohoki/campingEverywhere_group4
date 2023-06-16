package co.group.camping.delivery.service;

import java.util.List;

public interface DeliveryMapper {
	List<Object> deliverySelectList(DeliveryVO vo);

	List<Object> deliveryResearch(DeliveryVO vo);

	DeliveryVO deliverySelect(DeliveryVO vo);

	int deliveryInsert(DeliveryVO vo);

	int deliveryUpdate(DeliveryVO vo);

	int deliveryDelete(DeliveryVO vo);
}
