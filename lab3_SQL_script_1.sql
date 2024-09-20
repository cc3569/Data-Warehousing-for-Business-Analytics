SELECT Customers.CustomerName, States.State, Dates.Date, Orders.Sales
FROM States INNER JOIN (Customers INNER JOIN (Dates INNER JOIN Orders ON Dates.DateKey = Orders.DateKey) ON Customers.CustomerKey = Orders.CustomerKey) ON States.StateKey = Customers.StateKey
WHERE (((States.State)="Arizona") AND ((Dates.Date) Between #1/1/2018# And #12/31/2018#));