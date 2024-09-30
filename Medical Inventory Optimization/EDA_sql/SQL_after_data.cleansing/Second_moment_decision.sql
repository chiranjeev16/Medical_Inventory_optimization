use project;

select * from data_staging2;

/*Second moment decision (Variance, Standard deviation, Range)*/

/*VARIANCE OF QUANTITY*/
select variance(Quantity) as VAR_Quantity from data_staging2;

/*VARIANCE OF RETURNQUANTITY*/
select variance(ReturnQuantity) as VAR_ReturnQuantity from data_staging2;

/*VARIANCE OF FINAL_COST*/
select variance(Final_Cost) as VAR_Final_Cost from data_staging2;

/*VARIANCE OF FINAL_SALES*/
select variance(Final_Sales) as VAR_Final_Sales from data_staging2;

/*VARIANCE OF RTNMRP*/
select variance(RtnMRP) as VAR_RtnMRP from data_staging2;

/*STANDARD DEVIATION OF QUANTITY*/
select stddev(Quantity) as SD_Quantity from data_staging2;

/*STANDARD DEVIATION OF RETURNQUANTITY*/
select stddev(ReturnQuantity) as SD_ReturnQuantity from data_staging2;

/*STANDARD DEVIATION OF FINAL_COST*/
select stddev(Final_Cost) as SD_Final_Cost from data_staging2;

/*STANDARD DEVIATION OF FINAL_SALES*/
select stddev(Final_Sales) as SD_Final_Sales from data_staging2;

/*STANDARD DEVIATION OF RTNMRP*/
select stddev(RtnMRP) as SD_RtnMRP from data_staging2;

/*RANGE*/
/* RANGE OF QUANTITY */
select (max(Quantity) - min(Quantity)) AS range_Quantity from data_staging2;

/* RANGE OF RETURNQUANTITY */
select (max(ReturnQuantity) - min(ReturnQuantity)) AS range_ReturnQuantity from data_staging2;

/* RANGE OF FINAL_COST */
select (max(Final_Cost) - min(Final_Cost)) AS range_Final_Cost from data_staging2;

/*RANGE OF FINAL_SALES */
select (max(Final_Sales) - min(Final_Sales)) AS range_Final_Sales from data_staging2;

/*RANGE OF RtnMRP */
select (max(RtnMRP) - min(RtnMRP)) AS range_RtnMRP from data_staging2;
