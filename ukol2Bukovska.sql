
select segment, COUNT(productid) Produkt
from products
group by segment
order by Produkt DESC
limit 1

select category, segment, count (productid) Pocet, round(avg(pricenew),2) PrumernaCena
from products
group by segment, category
order by segment, category

SELECT productid, units, calendarid
from sales
where substr(calendarid, 1, 7) = '2015-04'
group by productid
order by units DESC
limit 1

