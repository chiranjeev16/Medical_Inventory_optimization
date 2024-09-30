use project;

select * from projectfinaldata;

/* Fourth moment decision */
/*KURTOSIS OF QUANTITY */
select
(sum(power(Quantity - (select avg(Quantity) from projectfinaldata), 4)) /
(count(Quantity) * power((sum(power(Quantity - (select avg(Quantity) from projectfinaldata), 2)) / (count(Quantity) - 1)), 2))
) as kurtosis_Quantity
from projectfinaldata;

/*KURTOSIS OF RETURNQUANTITY */
select
(sum(power(ReturnQuantity - (select avg(ReturnQuantity) from projectfinaldata), 4)) /
(count(ReturnQuantity) * power((sum(power(ReturnQuantity - (select avg(ReturnQuantity) from projectfinaldata), 2)) / (count(ReturnQuantity) - 1)), 2))
) as kurtosis_ReturnQuantity
from projectfinaldata;

/*KURTOSIS OF FINAL_COST */
select
(sum(power(Final_Cost - (select avg(Final_Cost) from projectfinaldata), 4)) /
(count(Final_Cost) * power((sum(power(Final_Cost - (select avg(Final_Cost) from projectfinaldata), 2)) / (count(Final_Cost) - 1)), 2))
) as kurtosis_Final_Cost
from projectfinaldata;

/*KURTOSIS OF FINAL_SALES */
select
(sum(power(Final_Sales - (select avg(Final_Sales) from projectfinaldata), 4)) /
(count(Final_Sales) * power((sum(power(Final_Sales - (select avg(Final_Sales) from projectfinaldata), 2)) / (count(Final_Sales) - 1)), 2))
) as kurtosis_Final_Sales
from projectfinaldata;

/*KURTOSIS OF RtnMRP */
select
(sum(power(RtnMRP - (select avg(RtnMRP) from projectfinaldata), 4)) /
(count(RtnMRP) * power((sum(power(RtnMRP - (select avg(RtnMRP) from projectfinaldata), 2)) / (count(RtnMRP) - 1)), 2))
) as kurtosis_RtnMRP
from projectfinaldata;