create table recipe_reply (
    bno number not null,
    rno number not null,
    content varchar2(1000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    primary key(bno, rno)
);

alter table recipe_reply add constraint recipe_reply_bno foreign key(bno)
references recipe_board(bno);

create sequence recipe_reply_seq START WITH 1 MINVALUE 0;






insert into recipe_reply(bno, rno, content, writer)
    values(10, recipe_reply_seq.nextval, '정말 유익한 레시피네요', '김기영');


commit;