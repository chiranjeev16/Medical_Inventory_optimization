use project;

select * from projectfinaldata;

/* Third moment decision (skewness) */
/* SKEWNESS OF QUANTITY */
select 
( sum(power(Quantity - (select avg(Quantity) from projectfinaldata), 3)) /
(count(Quantity)* power((sum(power(Quantity - (select avg(Quantity) from projectfinaldata), 2)) / (count(Quantity) - 1)), 1.5))
) as skewness_Quantity
from projectfinaldata;

/* SKEWNESS OF RETURNQUANTITY */
select 
( sum(power(ReturnQuantity - (select avg(ReturnQuantity) from projectfinaldata), 3)) /
(count(ReturnQuantity)* power((sum(power(ReturnQuantity - (select avg(ReturnQuantity) from projectfinaldata), 2)) / (count(ReturnQuantity) - 1)), 1.5))
) as skewness_ReturnQuantity
from projectfinaldata;

/* SKEWNESS OF FINAL_COST */
select 
( sum(power(Final_Cost - (select avg(Final_Cost) from projectfinaldata), 3)) /
(count(Final_Cost)* power((sum(power(Final_Cost - (select avg(Final_Cost) from projectfinaldata), 2)) / (count(Final_Cost) - 1)), 1.5))
) as skewness_Final_Cost
from projectfinaldata;

/* SKEWNESS OF FINAL_SALES */
select 
( sum(power(Final_Sales - (select avg(Final_Sales) from projectfinaldata), 3)) /
(count(Final_Sales)* power((sum(power(Final_Sales - (select avg(Final_Sales) from projectfinaldata), 2)) / (count(Final_Sales) - 1)), 1.5))
) as skewness_Final_Sales
from projectfinaldata;

/* SKEWNESS OF RtnMRP */
select 
( sum(power(RtnMRP - (select avg(RtnMRP) from projectfinaldata), 3)) /
(count(RtnMRP)* power((sum(power(RtnMRP - (select avg(RtnMRP) from projectfinaldata), 2)) / (count(RtnMRP) - 1)), 1.5))
) as skewness_RtnMRP
from projectfinaldata;