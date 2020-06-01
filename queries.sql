select  c.FirstName, c.LastName, c.Country from Customer c 
where c.Country != "USA";

select  c.FirstName, c.LastName, c.Country from Customer c 
where c.Country = "Brazil";

select i.InvoiceId, i.InvoiceDate, i.BillingCountry, c.FirstName, c.LastName from Invoice i 
left join Customer c on i.CustomerId = c.CustomerId
where i.BillingCountry = "Brazil";