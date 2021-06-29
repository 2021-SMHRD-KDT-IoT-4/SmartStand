//////////////////////////////////////////

web_board

create table web_board( 
   num number(5),
   Qtitle varchar2(50) NOT NULL ,
   id varchar2(20)  NOT NULL,
   category varchar2(50)  NOT NULL,
   message varchar2(500)  NOT NULL,
   day date,
   anwser varchar2(500)  NOT NULL,
   constraint web_board_num_pk primary key(num),
   constraint FK_web_board foreign key(id) references web_member(id)
 );
 
create sequence web_board_num_seq 
increment by 1 
 start with 1
 maxvalue 99;
 
 select * from web_board;
 
 delete web_board where id='1'
 
 drop table web_board;
 
 drop sequence web_board_num_seq;
 
 
 select * from web_board_num_seq;
 
 
 //////////////////////////////////////////////
 
 
web_member
 
 
 create table web_member( 
   id varchar2(20),
   pw varchar2(20) NOT NULL,
   name varchar2(50) NOT NULL,
   tel varchar2(50) NOT NULL,
   addr varchar2(50) NOT NULL,
   email varchar2(50) NOT NULL,
   constraint web_member_id_pk primary key(id)
 );
 
 select * from web_member;
 
 
 drop table web_member;
 
 
 //////////////////////////////////////////////
 
 
web_music
 
 
 create table web_music1( 
   num number(5),
   song varchar2(20) NOT NULL,
   singer varchar2(20) NOT NULL,
   genre varchar2(20) NOT NULL,
   cls varchar2(20) NOT NULL,
   mod varchar2(20) NOT NULL,
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
   led varchar2(10) NOT NULL,
   constraint ledonoff_led_pk primary key(led)
 );
 
 insert into ledonoff values('0');
 
 select * from ledonoff;
 drop table ledonoff;
 
 
 //////////////////////////////////
 create table mp3(
 song_id number(5)
);