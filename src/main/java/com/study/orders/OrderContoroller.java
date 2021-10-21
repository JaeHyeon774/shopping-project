package com.study.orders;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderContoroller {

	@RequestMapping("/order/basket")
	public String basket() {
		return "/order/basket";
	}
}
