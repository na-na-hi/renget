DROP PROCEDURE if EXISTS helper_merge_prodotti3;
delimiter $$
CREATE PROCEDURE helper_merge_prodotti(a INT, b INT,c int)
BEGIN

call helper_merge_prodotti2(a, b); -- sposto tutto da b a b
call helper_merge_prodotti2(a, c) --- sporto da c ad a
call 
end 


/*select email,count(*), concat('CALL helper_merge_prodotti(', group_concat(contactid) ,');')

from  vtiger_contactdetails inner join vtiger_crmentity  on crmid = contactid and setype ='Contacts' and deleted = 0
where ifnull(email, '') <>''
group by email
having count(*) = 2*/

select * from (
select email,count(*) as c, concat('CALL helper_merge_prodotti',count(*),'(', group_concat(contactid) ,');')

from  vtiger_contactdetails inner join vtiger_crmentity  on crmid = contactid and setype ='Contacts' and deleted = 0
where ifnull(email, '') <>''
group by email
having count(*) >2
)as x order by c desc