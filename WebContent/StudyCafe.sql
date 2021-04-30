
/* Drop Tables */

DROP TABLE Notice CASCADE CONSTRAINTS;
DROP TABLE Admins CASCADE CONSTRAINTS;
DROP TABLE Board_find_mem CASCADE CONSTRAINTS;
DROP TABLE Bookmark CASCADE CONSTRAINTS;
DROP TABLE Order_evaluation_reply CASCADE CONSTRAINTS;
DROP TABLE Order_evaluation CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE Cafe CASCADE CONSTRAINTS;
DROP TABLE Member_details CASCADE CONSTRAINTS;
DROP TABLE Question_answer CASCADE CONSTRAINTS;
DROP TABLE Members CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Admins
(
	admin_id varchar2(30) NOT NULL,
	admin_pwd varchar2(30),
	PRIMARY KEY (admin_id)
);


CREATE TABLE Board_find_mem
(
	find_mem_number number NOT NULL,
	find_mem_pwd varchar2(4),
	find_mem_title varchar2(60),
	find_mem_content varchar2(4000),
	find_mem_hit number,
	find_mem_ref number,
	find_mem_ref_step number,
	find_mem_ref_level number,
	member_id varchar2(30) NOT NULL,
	PRIMARY KEY (find_mem_number)
);


CREATE TABLE Bookmark
(
	bookmark_id number NOT NULL,
	member_id varchar2(30) NOT NULL,
	cafe_id varchar2(30) NOT NULL,
	PRIMARY KEY (bookmark_id)
);


CREATE TABLE Cafe
(
	cafe_id varchar2(30) NOT NULL,
	cafe_name varchar2(30),
	cafe_pwd varchar2(30),
	cafe_address varchar2(60),
	cafe_contact varchar2(30),
	cafe_linescription varchar2(60),
	cafe_spaceintroduction varchar2(500),
	cafe_time varchar2(20),
	cafe_rest varchar2(20),
	cafe_infrainformation varchar2(500),
	cafe_note varchar2(500),
	cafe_refund varchar2(500),
	cafe_regdate timestamp,
	cafe_image1 varchar2(100),
	cafe_image2 varchar2(100),
	cafe_image3 varchar2(100),
	cafe_hashtag1 varchar2(16),
	cafe_hashtag2 varchar2(16),
	cafe_hashtag3 varchar2(16),
	cafe_hashtag4 varchar2(16),
	cafe_category1 varchar2(12),
	cafe_category1Price number,
	cafe_category2 varchar2(12),
	cafe_category2Price number,
	PRIMARY KEY (cafe_id)
);


CREATE TABLE Members
(
	member_id varchar2(30) NOT NULL,
	member_pwd varchar2(30),
	member_name varchar2(10),
	member_phone number,
	member_email varchar2(50),
	member_joindate timestamp,
	PRIMARY KEY (member_id)
);


CREATE TABLE Member_details
(
	member_id varchar2(30) NOT NULL,
	member_pwd varchar2(30),
	PRIMARY KEY (member_id)
);


CREATE TABLE Notice
(
	notice_number number NOT NULL,
	notie_title varchar2(100),
	notice_content varchar2(4000),
	notice_regdate timestamp,
	notice_hit number,
	admin_id varchar2(30) NOT NULL,
	PRIMARY KEY (notice_number)
);


CREATE TABLE Order_evaluation
(
	order_eval_id number NOT NULL,
	order_eval_pwd varchar2(4),
	order_eval_title varchar2(60),
	order_eval_content varchar2(4000),
	order_eval_regdate timestamp,
	order_eval_score number,
	cafe_id varchar2(30) NOT NULL,
	member_id varchar2(30) NOT NULL,
	PRIMARY KEY (order_eval_id)
);


CREATE TABLE Order_evaluation_reply
(
	order_eval_reply_content varchar2(4000),
	order_eval_reply_regdate timestamp,
	order_eval_id number NOT NULL
);


CREATE TABLE Question_answer
(
	que_ans_num number NOT NULL,
	que_ans_pwd varchar2(4),
	que_ans_regdate timestamp,
	que_ans_title varchar2(60),
	que_ans_content varchar2(4000),
	que_ans_hit number,
	que_ans_ref number,
	que_ans_ref_step number,
	que_ans_step_level number,
	member_id varchar2(30) NOT NULL,
	PRIMARY KEY (que_ans_num)
);


CREATE TABLE Reservation
(
	reser_number number NOT NULL,
	reser_price number,
	reser_date timestamp,
	reser_time varchar2(20),
	reser_usertime varchar2(12),
	reser_category varchar2(12),
	reser_person number,
	reser_request varchar2(100),
	reser_orderDate timestamp,
	reser_status varchar2(20),
	member_id varchar2(30) NOT NULL,
	cafe_id varchar2(30) NOT NULL,
	PRIMARY KEY (reser_number)
);



/* Create Foreign Keys */

ALTER TABLE Notice
	ADD FOREIGN KEY (admin_id)
	REFERENCES Admins (admin_id)
;


ALTER TABLE Bookmark
	ADD FOREIGN KEY (cafe_id)
	REFERENCES Cafe (cafe_id)
;


ALTER TABLE Order_evaluation
	ADD FOREIGN KEY (cafe_id)
	REFERENCES Cafe (cafe_id)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (cafe_id)
	REFERENCES Cafe (cafe_id)
;


ALTER TABLE Board_find_mem
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Bookmark
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Member_details
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Order_evaluation
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Question_answer
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Order_evaluation_reply
	ADD FOREIGN KEY (order_eval_id)
	REFERENCES Order_evaluation (order_eval_id)
;



