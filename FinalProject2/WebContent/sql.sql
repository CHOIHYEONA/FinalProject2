create table customers (
	user_Uid number NOT NULL primary key,
	user_Id varchar2(40) NOT NULL, 
	user_Pw varchar2(40) NOT NULL, 
	user_Name varchar2(40) NOT NULL, 
	user_Tel varchar2(40) NOT NULL
)
select * from customers

create table board2 (
	board_Uid number NOT NULL primary key,
	b_title varchar2(40) NOT NULL ,
	b_date date NOT NULL,
	imgName varchar2(1000) NOT NULL,
	b_content varchar2(2000) NOT NULL,
	b_count number NOT NULL,
	b_like number NOT NULL,
	user_Uid number NOT NULL,
	
	constraint fk_customer_board foreign key(user_Uid)
	references customers(user_Uid) on delete cascade
)
select * from board2

create table comm (
	comm_Uid number NOT NULL primary key,
	c_date date not null,
	c_content varchar2(100) NOT NULL,
	user_Uid number NOT NULL,
	board_Uid number NOT NULL,
	
	constraint fk_customer_comm foreign key(user_Uid)
	references customers(user_Uid) on delete cascade,

	constraint fk_board_comm foreign key(board_Uid)
	references board2(board_Uid) on delete cascade

	)
	delete from comm
   
	SELECT * FROM BOARD2

create sequence cusNum start with 1 increment by 1;
create sequence boardNum start with 1 increment by 1;
create sequence commNum start with 1 increment by 1;


