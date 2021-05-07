
/* Drop Tables */

DROP TABLE Help CASCADE CONSTRAINTS;
DROP TABLE Notice CASCADE CONSTRAINTS;
DROP TABLE Admins CASCADE CONSTRAINTS;
DROP TABLE Bookmark CASCADE CONSTRAINTS;
DROP TABLE Cafe CASCADE CONSTRAINTS;
DROP TABLE find_reply CASCADE CONSTRAINTS;
DROP TABLE find CASCADE CONSTRAINTS;
DROP TABLE Members CASCADE CONSTRAINTS;
DROP TABLE Order_evaluation_reply CASCADE CONSTRAINTS;
DROP TABLE Order_evaluation CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;



/* Create Tables */

CREATE TABLE Admins
(
	admin_id varchar2(30) NOT NULL,
	admin_pwd varchar2(30),
	PRIMARY KEY (admin_id)
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


CREATE TABLE find
(
	find_number number NOT NULL,
	find_title varchar2(60),
	find_content varchar2(4000),
	find_regdate timestamp,
	find_hit number,
	member_id varchar2(30) NOT NULL,
	PRIMARY KEY (find_number)
);


CREATE TABLE find_reply
(
	find_reply_number number NOT NULL,
	find_reply_content varchar2(4000),
	find_reply_regdate timestamp,
	find_number number NOT NULL,
	member_id varchar2(30) NOT NULL,
	PRIMARY KEY (find_reply_number)
);


CREATE TABLE Help
(
	help_number number NOT NULL,
	help_title varchar2(100),
	help_content varchar2(4000),
	help_regdate timestamp,
	help_hit number,
	admin_id varchar2(30) NOT NULL,
	PRIMARY KEY (help_number)
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


CREATE TABLE Notice
(
	notice_number number NOT NULL,
	notice_title varchar2(100),
	notice_content varchar2(4000),
	notice_regdate timestamp,
	notice_hit number,
	admin_id varchar2(30) NOT NULL,
	PRIMARY KEY (notice_number)
);


CREATE TABLE Order_evaluation
(
	order_eval_id number NOT NULL,
	order_eval_title varchar2(60),
	order_eval_content varchar2(4000),
	order_eval_regdate timestamp,
	order_eval_score number,
	cafe_id varchar2(30) NOT NULL,
	member_id varchar2(30) NOT NULL,
	reser_number number NOT NULL,
	PRIMARY KEY (order_eval_id)
);


CREATE TABLE Order_evaluation_reply
(
	order_eval_reply_content varchar2(4000) NOT NULL,
	order_eval_reply_regdate timestamp,
	order_eval_id number NOT NULL,
	cafe_id varchar2(30) NOT NULL
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
	reser_evaluationCheck varchar2(10),
	member_id varchar2(30) NOT NULL,
	cafe_id varchar2(30) NOT NULL,
	PRIMARY KEY (reser_number)
);



/* Create Foreign Keys */

ALTER TABLE Help
	ADD FOREIGN KEY (admin_id)
	REFERENCES Admins (admin_id)
;


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


ALTER TABLE Order_evaluation_reply
	ADD FOREIGN KEY (cafe_id)
	REFERENCES Cafe (cafe_id)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (cafe_id)
	REFERENCES Cafe (cafe_id)
;


ALTER TABLE find_reply
	ADD FOREIGN KEY (find_number)
	REFERENCES find (find_number)
;


ALTER TABLE Bookmark
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE find
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE find_reply
	ADD FOREIGN KEY (member_id)
	REFERENCES Members (member_id)
;


ALTER TABLE Order_evaluation
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


ALTER TABLE Order_evaluation
	ADD FOREIGN KEY (reser_number)
	REFERENCES Reservation (reser_number)
;



