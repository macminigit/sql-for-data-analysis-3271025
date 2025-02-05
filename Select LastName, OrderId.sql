Select LastName,
  OrderId
FROM Customer
  Join Orders ON Customer.CustomerID = Orders.CustomerID;