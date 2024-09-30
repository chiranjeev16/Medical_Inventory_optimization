use project;
/* Data Preprocessing */

-- 1. Remove Duplicates
-- 2. Standardize Data
-- 3. Null Values or blank values
-- 4. Remove Any Columns


CREATE TABLE data_staging
LIKE projectfinaldata;

select * from data_staging;

insert data_staging select * from projectfinaldata;

select * from projectfinaldata;
select * from data_staging;

/* Removing Duplicates */
select *, 
row_number() over(
partition by Typeofsales, Patient_ID, Specialisation, Dept, 'Dateofbill', Formulation,Quantity, ReturnQuantity,Final_Cost, Final_Sales,RtnMRP, DrugName, SubCat, SubCat1) as row_num
from data_staging;

with duplicate_cte as 
(
select *, 
row_number() over(
partition by Typeofsales, Patient_ID, Specialisation, Dept, Dateofbill,Quantity, ReturnQuantity,Final_Cost, Final_Sales, RtnMRP, Formulation, DrugName, SubCat, SubCat1) as row_num
from data_staging
)
select * from duplicate_cte where row_num > 1;

select * from data_staging where Patient_ID = 12018103206;

with duplicate_cte as 
(
select *, 
row_number() over(
partition by Typeofsales, Patient_ID, Specialisation, Dept, Dateofbill,Quantity, ReturnQuantity,Final_Cost, Final_Sales, RtnMRP, Formulation, DrugName, SubCat, SubCat1) as row_num
from data_staging
)
delete from duplicate_cte where row_num > 1;



CREATE TABLE `data_staging2` (
  `Typeofsales` text,
  `Patient_ID` bigint DEFAULT NULL,
  `Specialisation` text,
  `Dept` text,
  `Dateofbill` text,
  `Quantity` int DEFAULT NULL,
  `ReturnQuantity` int DEFAULT NULL,
  `Final_Cost` double DEFAULT NULL,
  `Final_Sales` double DEFAULT NULL,
  `RtnMRP` int DEFAULT NULL,
  `Formulation` text,
  `DrugName` text,
  `SubCat` text,
  `SubCat1` text,
  `row_num` int 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


insert into data_staging2
select *, 
row_number() over(
partition by Typeofsales, Patient_ID, Specialisation, Dept, Dateofbill,Quantity, ReturnQuantity,Final_Cost, Final_Sales, RtnMRP, Formulation, DrugName, SubCat, SubCat1) as row_num
from data_staging;

select * from data_staging2;
select * from data_staging2 where row_num > 1;
delete from data_staging2 where row_num > 1;

/* Standardizing Data */

select `Dateofbill`, 
str_to_date(`Dateofbill`, '%m/%d/%Y') 
from data_staging2; 

update data_staging2
set `Dateofbill` = str_to_date(`Dateofbill`, '%m/%d/%Y');

select `Dateofbill` from data_staging2;
alter table data_staging2
modify column `Dateofbill` date;

select * from data_staging2;

/* Null values or blank values */
select * from data_staging2 where Formulation = '' and DrugName = '';

delete from data_staging2 where formulation = '' and DrugName = '';

/* Removing columns */
select * from data_staging2;

alter table data_staging2
drop column row_num;