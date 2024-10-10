SELECT States.State, Customers.CustomerName, Products.ProductName, Dates.Date, Orders.Sales
FROM Products INNER JOIN (Dates INNER JOIN ((States INNER JOIN Customers ON States.StateKey = Customers.StateKey) INNER JOIN Orders ON Customers.CustomerKey = Orders.CustomerKey) ON Dates.DateKey = Orders.DateKey) ON Products.ProductKey = Orders.ProductKey
WHERE (((States.State)="Massachusetts") AND ((Dates.Date) Between #1/1/2018# And #12/31/2018#));
