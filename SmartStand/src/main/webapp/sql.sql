//////////////////////////////////////////

web_board

create table web_board( 
   num number,
   Qtitle varchar2(500),
   sendName varchar2(500),
   category varchar2(500),
   message varchar2(500),
   day date,
   constraint web_board_num_pk primary key(num)
 );
 
create sequence web_board_num_seq 
increment by 1 
 start with 1
 maxvalue 99;
 
 select * from web_board;
 
 drop table web_board;
 
 drop sequence web_board_num_seq;
 select * from web_board_num_seq;
 
 
 
 //////////////////////////////////////////////
 
 
web_member
 
 
 create table web_member( 
   id varchar2(500),
   pw varchar2(500),
   name varchar2(500),
   tel varchar2(500),
   addr varchar2(500),
   email varchar2(500),
   constraint web_member_id_pk primary key(id)
 );
 select * from web_member;
 
 
 drop table web_member;
 
 
 //////////////////////////////////////////////
 
 
web_music
 
 
 create table web_music( 
   num number,
   song varchar2(500),
   singer varchar2(500),
   genre varchar2(500),
   cls varchar2(500),
   mod varchar2(500),
   constraint web_music_num_pk primary key(num)
 );
 

 create sequence web_music_num_seq
 increment by 1 
 start with 1
 maxvalue 99;
 
 select * from web_music;
 
 drop table web_music;
 
 ///////////////////////////////////////////////
 
 create table ledonoff( 
   led varchar2(10),
   constraint ledonoff_led_pk primary key(led)
 );
 
 insert into ledonoff values('0');
 
 select * from ledonoff;
 drop table ledonoff;