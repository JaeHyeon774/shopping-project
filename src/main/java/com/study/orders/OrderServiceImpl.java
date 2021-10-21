package com.study.orders;

import org.springframework.beans.factory.annotation.Autowired;

public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper mapper;
}
