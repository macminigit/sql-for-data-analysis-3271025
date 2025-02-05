SELECT Customer.CustomerID,
  FirstName,
  LastName,
  SUM(TotalDue)
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
ORDER BY SUM(TotalDue) DESC
LIMIT 10