package com.reservation.domain;

public class ReservationDTO {
	private int reser_number;
	private int reser_price;
	private String reser_date;
	private String reser_time;
	private String reser_usertime;
	private String reser_category;
	private int reser_person;
	private String reser_request;
	private String reser_orderDate;
	private String reser_status;
	private String member_id;
	private String cafe_id;
	
	
	
	public String getReser_time() {
		return reser_time;
	}
	public void setReser_time(String reser_time) {
		this.reser_time = reser_time;
	}
	public int getReser_number() {
		return reser_number;
	}
	public void setReser_number(int reser_number) {
		this.reser_number = reser_number;
	}
	public int getReser_price() {
		return reser_price;
	}
	public void setReser_price(int reser_price) {
		this.reser_price = reser_price;
	}
	public String getReser_date() {
		return reser_date;
	}
	public void setReser_date(String reser_date) {
		this.reser_date = reser_date;
	}
	public String getReser_usertime() {
		return reser_usertime;
	}
	public void setReser_usertime(String reser_usertime) {
		this.reser_usertime = reser_usertime;
	}
	public String getReser_category() {
		return reser_category;
	}
	public void setReser_category(String reser_category) {
		this.reser_category = reser_category;
	}
	public int getReser_person() {
		return reser_person;
	}
	public void setReser_person(int reser_person) {
		this.reser_person = reser_person;
	}
	public String getReser_request() {
		return reser_request;
	}
	public void setReser_request(String reser_request) {
		this.reser_request = reser_request;
	}
	public String getReser_orderDate() {
		return reser_orderDate;
	}
	public void setReser_orderDate(String reser_orderDate) {
		this.reser_orderDate = reser_orderDate;
	}
	public String getReser_status() {
		return reser_status;
	}
	public void setReser_status(String reser_status) {
		this.reser_status = reser_status;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getCafe_id() {
		return cafe_id;
	}
	public void setCafe_id(String cafe_id) {
		this.cafe_id = cafe_id;
	}
	@Override
	public String toString() {
		return "Reservation [reser_number=" + reser_number + ", reser_price=" + reser_price + ", reser_date="
				+ reser_date + ", reser_time=" + reser_time + ", reser_usertime=" + reser_usertime + ", reser_category="
				+ reser_category + ", reser_person=" + reser_person + ", reser_request=" + reser_request
				+ ", reser_orderDate=" + reser_orderDate + ", reser_status=" + reser_status + ", member_id=" + member_id
				+ ", cafe_id=" + cafe_id + ", getReser_time()=" + getReser_time() + ", getReser_number()="
				+ getReser_number() + ", getReser_price()=" + getReser_price() + ", getReser_date()=" + getReser_date()
				+ ", getReser_usertime()=" + getReser_usertime() + ", getReser_category()=" + getReser_category()
				+ ", getReser_person()=" + getReser_person() + ", getReser_request()=" + getReser_request()
				+ ", getReser_orderDate()=" + getReser_orderDate() + ", getReser_status()=" + getReser_status()
				+ ", getMember_id()=" + getMember_id() + ", getCafe_id()=" + getCafe_id() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
}
