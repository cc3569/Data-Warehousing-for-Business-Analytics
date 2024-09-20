SELECT Cities.City, States.State, Customers.CustomerName, Orders.Sales, Dates.Date, Products.ProductName, Categories.ProductCategory
FROM Cities INNER JOIN (Categories INNER JOIN (States INNER JOIN (Customers INNER JOIN (Products INNER JOIN (Dates INNER JOIN Orders ON Dates.DateKey = Orders.DateKey) ON Products.ProductKey = Orders.ProductKey) ON Customers.CustomerKey = Orders.CustomerKey) ON States.StateKey = Customers.StateKey) ON Categories.ProductCategoryKey = Products.ProductCategoryKey) ON Cities.CityKey = Customers.CityKey
WHERE (((Cities.City)="Chicago") AND ((States.State)="Illinois") AND ((Dates.Date) Between #1/1/2018# And #12/31/2018#) AND ((Categories.ProductCategory)="Office Supplies"));