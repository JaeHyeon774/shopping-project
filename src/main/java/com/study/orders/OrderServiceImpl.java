package com.study.orders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.notice.NoticeMapper;

@Service("com.study.orders.OrderServiceImpl")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper mapper;

	@Override
	public void downStock(int contentsno) {
		// TODO Auto-generated method stub
		mapper.downStock(contentsno);
	}


}
