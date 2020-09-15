

SELECT code, pname
FROM product AS p
WHERE uprice > 10
	and p.manu = 'manufacturer2';