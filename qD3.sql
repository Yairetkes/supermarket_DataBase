
select bid, rdate, rtime
from receipt r
where (select COUNT (*) from purchase p where p.bid = r.bid and p.rdate = r.rdate and p.rtime = r.rtime)<3
and   date_part('month',r.rdate) = date_part('month',current_date)
and  date_part('year',r.rdate) = date_part('year',current_date) ;