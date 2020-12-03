package com.amusement2MVC.vo;

public class confirmVO {

	String productname;
	String producttype;
	int numbers;
	int price;
	int productbno;
	public String getProductname() {
		return productname;
	}
	public int getProductbno() {
		return productbno;
	}
	public void setProductbno(int productbno) {
		this.productbno = productbno;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public String getProducttype() {
		return producttype;
	}
	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}
