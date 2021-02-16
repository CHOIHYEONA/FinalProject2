create table customers (
	userUid number primary key,
	userId varchar2(40), 
	userPw varchar2(40), 
	userName varchar2(40), 
	userTel varchar2(40) 
)

create table board2 (
	boardUid number primary key,
	b_title varchar2(40) ,
	b_date date ,
	imgName varchar2(50),
	b_content varchar2(2000),
	b_count number,
	b_like number,
	userUid number,
	
	constraint fk_customer_board foreign key(userUid)
	references customers(userUid) on delete cascade
)

create table comm (
	commUid number primary key,
	c_date date not null,
	c_content varchar2(100),
	userUid number,
	boardUid number,
	
	constraint fk_customer_comm foreign key(userUid)
	references customers(userUid) on delete cascade,

	constraint fk_board_comm foreign key(boardUid)
	references board2(boardUid) on delete cascade

	)
	
   

create sequence cusNum start with 1 increment by 1;
create sequence boardNum start with 1 increment by 1;
create sequence commNum start with 1 increment by 1;


