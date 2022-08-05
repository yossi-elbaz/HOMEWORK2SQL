
/*תרגיל כיתה*/
/*בחירת כל הנתונים מטבלת הזמנות*/

select * 
from Orders

/*בחירת כל הנתונים מטבלת עובדים*/

select * 
from Employees

/*הצג מטבלת Orders את העמודות הבאות: OrderDate , OrderID , CustomerID.
*/

select OrderDate,OrderID,CustomerID
from Orders

/*הצג מטבלת Employees את ערים מהם מגיעים העובדים בצורה ייחודית.
*/

select distinct City 
from Employees

/*הצג מטבלת Employees את שמו הפרטי ושם המשפחה של עובד מספר 3.
*/

select FirstName,LastName
from Employees
where EmployeeID = 3

/*הצג מטבלת Products את מספר המוצר, שם המוצר ומחירו עבור המוצרים אשר מחירם גבוה מ-20. סדר את התוצאות ע"פ מחיר (סדר עולה).
*/

select ProductID,ProductName,UnitPrice
from Products
where UnitPrice > 20 
order by UnitPrice

/*הצג מטבלת Products את כל הפרטים עבור מוצרים אשר מחירם אינו בין 50 ל-100.
*/


select *
from Products
where UnitPrice > 100 and UnitPrice < 50

/*הצג מטבלת Employees שמו הפרטי ושם משפחתו עבור העובדים אשר מספר העובד שלהם שווה ל-1, 2, 5.
*/

select FirstName, LastName
from Employees
where EmployeeID = 1 or EmployeeID = 2 or EmployeeID = 5

/*הצג מטבלת Products את שמות המוצרים ומחירם עבור שלושת המוצרים היקרים ביותר*/

select top 3 UnitPrice, ProductName,ProductID
from Products
order by UnitPrice DESC

