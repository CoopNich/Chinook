select  c.FirstName, c.LastName, c.Country from Customer c 
where c.Country != "USA";

select  c.FirstName, c.LastName, c.Country from Customer c 
where c.Country = "Brazil";

select i.InvoiceId, i.InvoiceDate, i.BillingCountry, c.FirstName, c.LastName from Invoice i 
left join Customer c on i.CustomerId = c.CustomerId
where i.BillingCountry = "Brazil";

select * from Employee e 
where e.Title = "Sales Support Agent";

select DISTINCT i.BillingCountry as 'Country List' from Invoice i
group by i.BillingCountry;

select e.FirstName, e.LastName, e.Title, i.InvoiceId from Employee e 
left join Invoice i on i.CustomerId = CustomerId
where e.Title = "Sales Support Agent";

select i.InvoiceId, i.Total, c.FirstName || " " || c.LastName as 'Customer', c.Country, e.FirstName || " " || e.LastName as 'Sales Rep'
from Customer c 
left join Invoice i on i.CustomerId = c.CustomerId
left join Employee e on e.EmployeeId = c.SupportRepId
order BY i.InvoiceId;