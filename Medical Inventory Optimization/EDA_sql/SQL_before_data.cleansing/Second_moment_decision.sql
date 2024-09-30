use project;

select * from projectfinaldata;

/*Second moment decision (Variance, Standard deviation, Range)*/

/*VARIANCE OF QUANTITY*/
select variance(Quantity) as VAR_Quantity from projectfinaldata;

/*VARIANCE OF RETURNQUANTITY*/
select variance(ReturnQuantity) as VAR_ReturnQuantity from projectfinaldata;

/*VARIANCE OF FINAL_COST*/
select variance(Final_Cost) as VAR_Final_Cost from projectfinaldata;

/*VARIANCE OF FINAL_SALES*/
select variance(Final_Sales) as VAR_Final_Sales from projectfinaldata;

/*VARIANCE OF RTNMRP*/
select variance(RtnMRP) as VAR_RtnMRP from projectfinaldata;

/*STANDARD DEVIATION OF QUANTITY*/
select stddev(Quantity) as SD_Quantity from projectfinaldata;

/*STANDARD DEVIATION OF RETURNQUANTITY*/
select stddev(ReturnQuantity) as SD_ReturnQuantity from projectfinaldata;

/*STANDARD DEVIATION OF FINAL_COST*/
select stddev(Final_Cost) as SD_Final_Cost from projectfinaldata;

/*STANDARD DEVIATION OF FINAL_SALES*/
select stddev(Final_Sales) as SD_Final_Sales from projectfinaldata;

/*STANDARD DEVIATION OF RTNMRP*/
select stddev(RtnMRP) as SD_RtnMRP from projectfinaldata;

/*RANGE*/
/* RANGE OF QUANTITY */
select (max(Quantity) - min(Quantity)) AS range_Quantity from projectfinaldata;

/* RANGE OF RETURNQUANTITY */
select (max(ReturnQuantity) - min(ReturnQuantity)) AS range_ReturnQuantity from projectfinaldata;

/* RANGE OF FINAL_COST */
select (max(Final_Cost) - min(Final_Cost)) AS range_Final_Cost from projectfinaldata;

/*RANGE OF FINAL_SALES */
select (max(Final_Sales) - min(Final_Sales)) AS range_Final_Sales from projectfinaldata;

/*RANGE OF RtnMRP */
select (max(RtnMRP) - min(RtnMRP)) AS range_RtnMRP from projectfinaldata;
