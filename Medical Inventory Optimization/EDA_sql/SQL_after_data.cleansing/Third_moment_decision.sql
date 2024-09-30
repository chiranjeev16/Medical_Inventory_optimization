use project;

select * from data_staging2;

/* Third moment decision (skewness) */
/* SKEWNESS OF QUANTITY */
select 
( sum(power(Quantity - (select avg(Quantity) from data_staging2), 3)) /
(count(Quantity)* power((sum(power(Quantity - (select avg(Quantity) from data_staging2), 2)) / (count(Quantity) - 1)), 1.5))
) as skewness_Quantity
from data_staging2;

/* SKEWNESS OF RETURNQUANTITY */
select 
( sum(power(ReturnQuantity - (select avg(ReturnQuantity) from data_staging2), 3)) /
(count(ReturnQuantity)* power((sum(power(ReturnQuantity - (select avg(ReturnQuantity) from data_staging2), 2)) / (count(ReturnQuantity) - 1)), 1.5))
) as skewness_ReturnQuantity
from data_staging2;

/* SKEWNESS OF FINAL_COST */
select 
( sum(power(Final_Cost - (select avg(Final_Cost) from data_staging2), 3)) /
(count(Final_Cost)* power((sum(power(Final_Cost - (select avg(Final_Cost) from data_staging2), 2)) / (count(Final_Cost) - 1)), 1.5))
) as skewness_Final_Cost
from data_staging2;

/* SKEWNESS OF FINAL_SALES */
select 
( sum(power(Final_Sales - (select avg(Final_Sales) from data_staging2), 3)) /
(count(Final_Sales)* power((sum(power(Final_Sales - (select avg(Final_Sales) from data_staging2), 2)) / (count(Final_Sales) - 1)), 1.5))
) as skewness_Final_Sales
from data_staging2;

/* SKEWNESS OF RtnMRP */
select 
( sum(power(RtnMRP - (select avg(RtnMRP) from data_staging2), 3)) /
(count(RtnMRP)* power((sum(power(RtnMRP - (select avg(RtnMRP) from data_staging2), 2)) / (count(RtnMRP) - 1)), 1.5))
) as skewness_RtnMRP
from data_staging2;