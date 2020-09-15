

SELECT pname, manu
FROM product AS p
WHERE p.descr = 'vegetable'
	AND p.uprice > 15;