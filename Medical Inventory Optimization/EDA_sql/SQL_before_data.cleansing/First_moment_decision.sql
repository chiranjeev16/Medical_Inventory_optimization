use project;
/*Table creation */
CREATE TABLE projectfinaldata(
Typesofsales text,
Patient_ID bigint,
Specialisation text,
Dept text,
Dateofbill text,
Quantity int,
ReturnQuantity int,
Final_Cost double,
Final_Sales double,
RtnMRP int,
Formulation text,
DrugName text,
SubCat text,
SubCat1 text
);

SHOW VARIABLES LIKE'secure_file_priv';
 
SELECT @@secure_file_priv;
/* Importing datasets*/

LOAD DATA INFILE'C:/Projectfinaldata.csv'
INTO TABLE projectfinaldata
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from projectfinaldata; 

/* Statistical analysis before preprocessing */
/* First moment decision (Mean, Median, Mode)*/
/* MEAN */
select avg(Quantity) as meanofQuantity from projectfinaldata;
select avg(ReturnQuantity) as meanofReturnQuantity from projectfinaldata;
select avg(Final_Cost) as meanofFinal_Cost from projectfinaldata;
select avg(Final_Sales) as meanofFinal_Sales from projectfinaldata;
select avg(RtnMRP) as mean from projectfinaldata;

/*MEDIAN OF QUANTITY */
with ranked as(
select Quantity,
row_number() over(order by Quantity) as r,
count(Quantity) over() as c
from projectfinaldata  
),
median as(
select Quantity
from ranked 
where r in (floor((c+1)/2), ceiling((c+1)/2))
)
select avg(Quantity) as median_Quanity from median;

/*MEDIAN OF RETURNQUANTITY */
with ranked as(
select ReturnQuantity,
row_number() over(order by ReturnQuantity) as r,
count(ReturnQuantity) over() as c
from projectfinaldata  
),
median as(
select ReturnQuantity
from ranked 
where r in (floor((c+1)/2), ceiling((c+1)/2))
)
select avg(ReturnQuantity) as median_ReturnQuantity from median;

/*MEDIAN OF FINAL_COST */
with ranked as(
select Final_Cost,
row_number() over(order by Final_Cost) as r,
count(Final_Cost) over() as c
from projectfinaldata
),
median as(
select Final_Cost
from ranked 
where r in (floor((c+1)/2), ceiling((c+1)/2))
)
select avg(Final_Cost) as median_Final_Cost from median;

/*MEDIAN OF FINAL_SALES */
with ranked as(
select Final_Sales,
row_number() over(order by Final_Sales) as r,
count(Final_Sales) over() as c
from projectfinaldata  
),
median as(
select Final_Sales
from ranked 
where r in (floor((c+1)/2), ceiling((c+1)/2))
)
select avg(Final_Sales) as median_Final_Sales from median;

/*MEDIAN OF RtnMRP */
with ranked as(
select RtnMRP,
row_number() over(order by RtnMRP) as r,
count(RtnMRP) over() as c
from projectfinaldata  
),
median as(
select RtnMRP
from ranked 
where r in (floor((c+1)/2), ceiling((c+1)/2))
)
select avg(RtnMRP) as median_RtnMRP from median;

/*MODE OF QUANTITY */
select Quantity as Mode_Quantity, count(*)
from projectfinaldata
group by Quantity
order by count(*) desc
limit 1;

/*MODE OF RETURNQUANTITY */
select ReturnQuantity as Mode_ReturnQuantity, count(*)
from projectfinaldata
group by ReturnQuantity
order by count(*) desc
limit 1;

/*MODE OF FINAL_COST */
select Final_Cost as Mode_Final_Cost, count(*)
from projectfinaldata
group by Final_Cost
order by count(*) desc
limit 1;

/*MODE OF FINAL_SALES */
select Final_Sales as Mode_Final_Sales, count(*)
from projectfinaldata
group by Final_Sales
order by count(*) desc
limit 1;

/*MODE OF RtnMRP */
select RtnMRP as Mode_RtnMRP, count(*)
from projectfinaldata
group by RtnMRP
order by count(*) desc
limit 1;
