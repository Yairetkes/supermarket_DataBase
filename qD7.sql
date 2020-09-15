SELECT distinct bid, rdate, rtime
FROM Purchase natural join Receipt as rec  , Product as p
WHERE Purchase.code= p.code AND rec.total>50 AND 'Cucumbers' NOT IN
(SELECT product.pname
FROM product
WHERE Purchase.code=product.code )

GROUP BY (bid, rdate, rtime)
HAVING COUNT(distinct p.sid)<=ALL

(SELECT count(distinct sid)
 FROM Purchase  natural join Product 
 GROUP BY(bid, rdate, rtime));