--- List all without exceptions/filters
SELECT * FROM manufacturing.products;

--- List by category id
SELECT name, manufacturing_cost
FROM manufacturing.products
WHERE category_id = 3;

--- List by manufact cost
SELECT name, manufacturing_cost
FROM manufacturing.products
WHERE manufacturing_cost < MONEY(12)
ORDER BY manufacturing_cost ASC


--- List Joined data
SELECT
	products.product_id,
	products.name,
	products.manufacturing_cost,
	categories.name AS category_name,
	categories.market
FROM manufacturing.products JOIN manufacturing.categories
	ON products.category_id = categories.category_id
;

--- Same query as above only simplier by using alias (AS)

SELECT
	p.product_id,
	p.name,
	p.manufacturing_cost,
	c.name AS category_name,
	c.market
FROM manufacturing.products AS p JOIN manufacturing.categories AS c
	ON p.category_id = c.category_id
;

--- List joined data with WHERE Clause
SELECT
	p.product_id,
	p.name,
	p.manufacturing_cost,
	c.name AS category_name,
	c.market
FROM manufacturing.products AS p JOIN manufacturing.categories AS c
	ON p.category_id = c.category_id
WHERE market='industrial'
;

--- Creates a view (query shortcut) for join query
CREATE VIEW manufacturing.product_details AS
SELECT
	p.product_id,
	p.name,
	p.manufacturing_cost,
	c.name AS category_name,
	c.market
FROM manufacturing.products AS p JOIN manufacturing.categories AS c
	ON p.category_id = c.category_id
;

--- List rows using views
SELECT * FROM manufacturing.product_details;

--- Adding where clauses to query views
SELECT * FROM manufacturing.product_details
WHERE category_name = 'wind harvesters';