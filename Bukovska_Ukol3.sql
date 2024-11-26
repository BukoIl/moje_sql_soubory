--1
select s.units, p.product, s.CalendarID
from sales s
left join products p
on s.ProductID = p.ProductID
ORDER by units DESC
limit 1;

--2
select round(sum(s.revenue), 2) CelkoveTrzby, state, city
from Cities c
left join sales s
on c.zip = s.zip
where city like 'Bos%'
group by state
order by s.revenue desc;

--3

SELECT count(p.ProductID) as PocetProduktu, p.category, m.manufacturer
from manufacturers m
left join products p
on p.ManufacturerID = m.ManufacturerID
and p.Category = 'Mix'
group by m.Manufacturer 
order by PocetProduktu DESC;

