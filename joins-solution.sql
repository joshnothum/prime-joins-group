
-- 1 Get all customers and their addresses

SELECT * FROM "customers" JOIN "addresses" ON "addresses"."customer_id" = "customers"."id";

--2 Get all orders and their line items

SELECT * FROM "orders" JOIN "line_items" ON "line_items"."order_id" = "orders"."id";

--3 Which warehouses have Cheetos

SELECT * FROM "products" JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id" WHERE "products"."id" = 5;

--4 Which warehouses have DIET PEPSI

SELECT * FROM "products" JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id" WHERE "products"."id" = 6;

---5 Number of orders for each customer

SELECT * FROM "orders" JOIN "addresses" ON "orders"."address_id" = "addresses"."customer_id" JOIN "customers" ON "addresses"."customer_id" = "customers"."id";

---6 How many customers do we have? 
SELECT count(*) FROM "customers";

---7 How many products do we carry?
SELECT count(*) FROM "products";

---8 What is the total available on-hand quantity of diet pepsi?

SELECT SUM("on_hand") FROM "warehouse_product" WHERE "product_id" = 6;
