select * from beancafe; --테이블보여주기

--테이블 삭제
drop table beancafe PURGE;
--시퀀스 삭제
drop sequence seq_beancafe;

--테이블 생성
create table beancafe(
seq number primary key,
code number,
name varchar2(20) not null,
tel varchar2(20),
mail varchar2(30),
password varchar2(20),
time number,
totstime number(8,2),
totrtime number(8,2),
payment number,
sit number,
room number,
locker number,
intime number(8,2),
outtime number(8,2));

--시퀀스 생성
create sequence seq_beancafe nocycle nocache;

--행열 삭제
delete beancafe;

--insert하고 커밋해주기
commit;

--관리자 넣어주기
insert into beancafe (seq, code, name, tel, password) values(0, 0, '관리자', '01000000000', '0000');

create table beancafesrl (
sit1 number, sit2 number, sit3 number, sit4 number, sit5 number,
sit6 number, sit7 number, sit8 number, sit9 number, sit10 number,
sit11 number, sit12 number, sit13 number, sit14 number, sit15 number,
sit16 number, sit17 number, sit18 number, sit19 number, sit20 number,
room1 number, room2 number, room3 number,
locker1 number, locker2 number, locker3 number, locker4 number, locker5 number,
locker6 number, locker7 number, locker8 number, locker9 number, locker10 number);

commit;

insert into beancafesrl values(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

select * from beancafesrl; --테이블보여주기

update beancafesrl set locker1 = 0, locker2 =0 ,locker3 =0, locker4 =0 ,locker5 =0;

commit;


--자리확인용으로 넣어주기
insert into beancafe (seq, code, name, tel, password,sit) values(1, 1, '9876', '01098769876', '9876',1);
insert into beancafe (seq, code, name, tel, password,sit) values(2, 1, '1111', '01011111111', '1111',2);
insert into beancafe (seq, code, name, tel, password,sit) values(3, 1, '1212', '01012121212', '1212',3);
insert into beancafe (seq, code, name, tel, password,room) values(7, 1, '7777', '01077777777', '7777',1);
insert into beancafe (seq, code, name, tel, password,room) values(8, 2, 'guest', '01055555555', '5555',4);
