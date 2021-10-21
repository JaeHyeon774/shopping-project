package com.study.orders;

import lombok.Data;

@Data
public class BasketDTO {
	private int orderno;
	private String mname;
	private String id;
	private String fileName;
	private String detail;
	private int price;
}
