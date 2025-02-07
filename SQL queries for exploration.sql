1) select * from sales;

2) select SaleDate, Amount, Customers from sales;
select Amount, Customers, GeoID from sales;

3) Select SaleDate, Amount, Boxes, Amount / boxes  from sales;

4) Select SaleDate, Amount, Boxes, Amount / boxes as 'Amount per box'  from sales;

5) select * from sales
where amount > 10000;

6) select * from sales
where amount > 10000
order by amount desc;

7) select * from sales
where geoid='g1'
order by PID, Amount desc;

8) Select * from sales
where amount > 10000 and SaleDate >= '2022-01-01';

9) select SaleDate, Amount from sales
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;

10) select * from sales
where boxes >0 and boxes <=50;

11) select * from sales
where boxes between 0 and 50;

12) select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from sales
where weekday(SaleDate) = 4;

13) select * from people;

14) select * from people
where team = 'Delish' or team = 'Jucies';

15) select * from people
where team in ('Delish','Jucies');

16) select * from people
where salesperson like 'B%';

17) select * from people
where salesperson like '%B%';

18) select * from sales;

19) select SaleDate, Amount,
		case when amount < 1000 then 'Under 1k'
		     when amount < 5000 then 'Under 5k'
                     when amount < 10000 then 'Under 10k'
		else '10k or more'
		end as 'Amount category'
from sales;


20) select team, count(*) from people
group by team
