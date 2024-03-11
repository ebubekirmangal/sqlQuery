--1.Sorgu
Select product_name,quantity_per_unit From products;
--2.Sorgu
Select product_id,product_name From products
where discontinued = 0;
--3.Sorgu
Select discontinued,product_id,product_name From products
where discontinued = 1;
--4.Sorgu
Select product_id,product_name,unit_price From products
Where unit_price<20;
--5.Sorgu
Select product_id,product_name,unit_price From products
Where unit_price Between 15 And 25;
--6.Sorgu
Select product_name,units_on_order,units_in_stock From products
Where units_on_order>units_in_stock;
--7.Sorgu
Select * From products
Where product_name Like 'A%';
--8.Sorgu
Select * From products
Where product_name Like '%i';
--9.Sorgu
Select product_name,unit_price,sum(unit_price + (unit_price * 0.18)) As unit_prices_kdv From products
Group By product_name,unit_price;
--10.Sorgu
Select Count(product_id) As unit_price_more_than_30_quantity From products
Where unit_price >30;
--11.Sorgu
Select lower(product_name),unit_price From products
Order By unit_price Desc;
--12.Sorgu
Select Concat(first_name,' ',last_name) From employees;
--13.Sorgu
Select Count(*) From suppliers
where region Is Null;
--14.Sorgu
Select Count(*) From suppliers
where region Is Not Null;
--15.Sorgu
Select Upper(Concat('tr ',product_name)) From products;
--16.Sorgu
Where unit_price < 20;;
Select product_name, unit_price From products;
--17.Sorgu
Select product_name As "En pahalı ürün Listesi", unit_price  From products
Order By unit_price Desc;
--18.Sorgu
Select  product_name As "En pahalı ürün Listesi", unit_price  From products 
Order By unit_price Desc Limit 10;
--19.Sorgu
Select product_name,unit_price From products
Where unit_price >(Select Avg(unit_price) From products) ;
--20.Sorgu
Select Sum(unit_price*units_in_stock) As Total From products
Where units_in_stock >0;
--21.Sorgu
Select Count(*) From products
Where units_in_stock >0 And discontinued =1;
--22.Sorgu
Select p.*,c.category_name From products As p
Inner Join categories As c On p.category_id = c.category_id ;
--23.Sorgu
Select c.category_name,Avg(p.unit_price) As average From categories As c
Inner Join products As p On c.category_id = p.product_id
Group By c.category_name;
--24.Sorgu
Select p.product_name,p.unit_price,c.category_name From products As p
Inner Join categories As c On p.category_id = c.category_id
Order By unit_price Desc limit 1;
--25.Sorgu
Select p.product_name,c.category_name,s.company_name From order_details As od
Inner Join products As p On od.product_id = p.product_id
Inner Join categories As c On p.category_id = c.category_id
Inner Join suppliers As s On p.supplier_id = s.supplier_id
Order By od.quantity Desc Limit 1;