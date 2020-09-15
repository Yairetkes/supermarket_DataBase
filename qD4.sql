SELECT sname, pname
from supplier as s1, product as p1

WHERE NOT EXISTS(SELECT*
		FROM product as p2
		WHERE p1.sid = p2.sid
		AND P1.code <> p2.code)
		AND p1.sid = s1.sid;