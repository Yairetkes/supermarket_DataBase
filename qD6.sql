SELECT bid
FROM stock
GROUP BY bid
HAVING (count(code) = (SELECT COUNT(CODE)
			FROM product));
