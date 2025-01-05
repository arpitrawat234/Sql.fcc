create table STUDENT(SID int, SNAME text);
create table enrollment(SID int,cid int);
create table couseid(cid int, cname text);
\d
---describe a table
\d
insert into STUDENT values( 3,'arpit');
\d STUDENT
SELECT * FROM STUDENT;
insert into enrollment values( 3,3 ),( 4,4 );
insert into couseid values(3,'chemistry'),( 4,'maths');
SELECT couseid.cname FROM STUDENT join enrollment on(enrollment.SID=STUDENT.SID) join couseid on(enrollment.cid=couseid.cid)
where STUDENT.SNAME='arpit';
-----simplifoictaion by alias(shortcut for name of tables)
SELECT c.cname FROM STUDENT join enrollment on(e.SID=s.SID) join couseid on(e.cid=c.cid)----the no amboguity autonatically enable databse system to acess what alias refering to
where S.SNAME='arpit';
---- diverse predicates
--- can use inequalities>70
-- also for not equal "<> " is used
---- check if values in list cname IN('CS3450','4398404')
------ REGURLAR EXpression 
----- cname LIKE 'cs_320%'
---- _ refers one arbiatry cahracter can be anything % refer to zero or more arbitary character
----composite prediactes
AND,OR,not
cname='chemistry'OR cname='maths'
----diverse select clause
---- * select all columns 
----<table>.* select all columns from that table
-----aroiothmetic in select clauss 
SELECT 3*(COLUMNNAME1+COLUMNNAME2)
---NEW NAMES 
SELECT SNAME as studentname
-----join syntax alternative
table1 join table2 using column--common column

tablee1 natural join  table2 ---match values in all column of same namess in 2 tables
---

FROM table1 ,table2 where joincondition----nojoin used but still join used



----------distinct result
SELECT ....maygenerate dubplicate rows
use distinct select 
----aggergrates queries
sum,avg,MIN , MAX 
count(*)----coount rows
count(column)----rows with value in column
count(DISTINCT column)----distinct values rows with value in column

----------------------------------------------------



SELECT count(*---DISTINCT columns or other stuff
)
---counting rows of students taking courses
FROM STUDENT join enrollment on(enrollment.SID=STUDENT.SID) join couseid on(enrollment.cid=couseid.cid)
where coueid.cname='maths';----ouput = 1 row// 2 studentss thenn 2 studnts


------aggregrate by groups  a function that performs a calculation on a set of values, and returns a single value

commmon: aggregrates multiple data subsets
use sql group-by columns ----distinguish data sets based on their values oin the specified columns clause to define data subsets






SELECT count(*),cname-- it creates a table which you want if you get it
FROM STUDENT join enrollment on(enrollment.SID=STUDENT.SID) join couseid on(enrollment.cid=couseid.cid)
where cname in ('maths','chemistry') group by cname;
---The SQL IN Operator
-- The IN operator allows you to specify multiple values in a WHERE clause.

-- The IN operator is a shorthand for multiple OR condition



--- 2 tables 👇
-- count | cname 
-------+-------
--      2 | maths
-- (1 row)--- output









------------------------------------------------------------------------------------








-- ---------------------------STDIN
-- Input for the program ( Optional )

-- Output:

-- CREATE TABLE
-- CREATE TABLE
-- CREATE TABLE
--                    List of relations
--  Schema |    Name    | Type  |          Owner           
-- --------+------------+-------+--------------------------
--  public | couseid    | table | user_434322uez_434cfkprh
--  public | enrollment | table | user_434322uez_434cfkprh
--  public | student    | table | user_434322uez_434cfkprh
-- (3 rows)

--                    List of relations
--  Schema |    Name    | Type  |          Owner           
-- --------+------------+-------+--------------------------
--  public | couseid    | table | user_434322uez_434cfkprh
--  public | enrollment | table | user_434322uez_434cfkprh
--  public | student    | table | user_434322uez_434cfkprh
-- (3 rows)

-- INSERT 0 1
--               Table "public.student"
--  Column |  Type   | Collation | Nullable | Default 
-- --------+---------+-----------+----------+---------
--  sid    | integer |           |          | 
--  sname  | text    |           |          | 

--  sid | sname 
-- -----+-------
--    3 | arpit
-- (1 row)

-- INSERT 0 2
-- INSERT 0 2
--    cname   
-- -----------
--  chemistry
--  maths
-- (2 rows)


--
SELECT SUM(GLOBALSALES) FROM VGAMES group BY GENRE;
 

 SELECT SUM(PLATFORM),GENRE FROM VGAMES GROUP BY GENRE having count(*)>10;---count will that have coutn less by 500 rows total count

 select sum(GLOBALSALES),platform from VGAMES group by platformm order by count(*) asc limit 10;---- it will tell you when
 ------*IT WILL TELL YOU WHAT TO DO
 --!query
 --?you need to be better please
 --TODO DO THIS QUICK PLEASE
 

---- SUB WUERIES IN CONDITION 
EXISTS(<SUBQUERY>);TRUE IF NON EMPTY
CHECK IG SUB QUERY RESULT value
<VALUE>IN (<SUBQUERY>)

WE USE ALL/SOME
<VALUE>=ALL(<SUB QUER>)
ANY  ( TRUE FOR IF SOME)
--- uncorrelated sub queries a bit easier
--- correlated subqueries subquerry are not relaated outisee
  --- EVELAUATING CORRELATED SUB QUERIES
--   ITERATE OVER ROPWS FROM OUTER 
--   EVALUATE SUBQUERY FOR FIXES ROW IN OUTER QIERY




 




