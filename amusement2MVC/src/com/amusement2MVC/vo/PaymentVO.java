package com.amusement2MVC.vo;

public class PaymentVO {
	int paymentid;
	int bno;
	int productbno;
	int numbers;
	String cdate;
	String creditcardnumber;
	String creditcardpw;
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getProductbno() {
		return productbno;
	}
	public void setProductbno(int productbno) {
		this.productbno = productbno;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getCreditcardnumber() {
		return creditcardnumber;
	}
	public void setCreditcardnumber(String creditcardnumber) {
		this.creditcardnumber = creditcardnumber;
	}
	public String getCreditcardpw() {
		return creditcardpw;
	}
	public void setCreditcardpw(String creditcardpw) {
		this.creditcardpw = creditcardpw;
	}
	
}
