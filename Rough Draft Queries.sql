 

select * from sakila.attacks ;

SELECT * FROM sakila.at
SELECT  *
FROM sakila.attacks 
WHERE `Year` < 1500
ORDER BY `Year` desc ;


 SELECT  *
FROM sakila.attacks 
WHERE `Case Number` < 1500
ORDER BY `Case Number` like '%ND%' desc ;

tacks  order by Country asc;


select * from sakila.attacks  where Country = '' OR Country IS NULL;

/*
​What body parts are most often injured? (hint: you'll need to perform text analysis on the Injury column)
*/ /* Some Columns in the dataset contains irrelavant additional words '?'. 
 This query checks for all the columns that contain "?"*/
 
SELECT  Country,                   REPLACE( Country , '?', ' '),
        Injury,                    REPLACE(Injury, '?', ' '),
	    `Case Number`,             REPLACE(`Case Number` , '?', ' '),
        `Date`,                    REPLACE(`Date` , '?', ' '),
        `Year`,                    REPLACE(`Year` , '?', ' '),
        `Type`,                    REPLACE(`Type` , '?', ' '),
        `Country`,                 REPLACE(`Country` , '?', ' '),
        `Area`,                    REPLACE(`Area` , '?', ' '),
        `Location`,                REPLACE(`Location` , '?', ' '),
        `Activity`,                REPLACE(`Activity` , '?', ' '),
        `Name`,                    REPLACE(`Name` , '?', ' '),
        `Sex`,                     REPLACE(`Sex`, '?', ' '),
        `Age`,                     REPLACE(`Age` , '?', ' '),
        `Injury`,                  REPLACE(`Injury`, '?', ' '),
        `Fatal (Y/N)`,             REPLACE(`Fatal (Y/N)` , '?', ' '),
        `Time`,                    REPLACE(`Time` , '?', ' '),
        `Species`,                 REPLACE(`Species` , '?', ' '),
        `Investigator or Source`,  REPLACE(`Investigator or Source` , '?', ' '),
        `pdf`,                     REPLACE(`pdf` , '?', ' '),
        `href formula`,            REPLACE(`href formula` , '?', ' '),
        `href`,                    REPLACE(`href` , '?', ' '),
        `Case Number_[0]`,         REPLACE(`Case Number_[0]` , '?', ' '),
        `original order`,          REPLACE(`original order` , '?', ' ')
        
FROM    sakila.attacks 
WHERE   Injury LIKE '%?%'
OR      Country LIKE '%?%'
OR      `Date` LIKE '%?%'
OR      Location LIKE '%?%'
OR      Species LIKE '%?%'
OR      `Age` LIKE '%?%'
OR      `Time` LIKE '%?%';
 

 
UPDATE sakila.attacks 
SET    Injury    = REPLACE
/* What to do next 
1. 
2. Find columns with very old dates
3. Find columns with writen words  
3. Find a way to write dates in century language e.g 0770 
4. Find date columns written like this '1952.04.06' 
5. Update each of the tables from `Case Number_[0]` 
6. Format the table to Datetime Format 


/* Query to remove the suffix "?" in some places in the Activity Column 

UPDATE sakila.attacks 
SET Activity =  SUBSTRING(Activity, 1, CHAR_LENGTH(Activity) - 1)  
WHERE `Activity` like '%?%'  ;

*/

/*
select *
from sakila.attacks 
where `Location` like '%?%';

select *
from sakila.attacks 
where `Date`  not like '%.%' or '%-%'

select `Date`
from sakila.attacks 
where `Date`  not like '%.%' or '%-%'

*/

/*
select `Case Number` ,`Case Number_[0]`,`Case Number_[1]`,`original order`, `Date`
from sakila.attacks 
where `Case Number`  not like '%.%'


*//*
select *
from sakila.attacks 
where `Case Number`= '1952.04.06'*/(Injury, '?', ' '),
	   Country   = REPLACE(Country , '?', ' '),
      `Date`     = REPLACE(`Date` , '?', ' '),
       Location  = REPLACE(Location , '?', ' '),
       Species   = REPLACE(Species , '?', ' '),
       `Age`     = REPLACE(`Age` , '?', ' '),
      `Time`     = REPLACE(`Time` , '?', ' ')
WHERE Injury   LIKE '%?%'
OR    Country  LIKE '%?%'
OR   `Date`    LIKE '%?%'
OR   Location  LIKE '%?%'
OR   Species   LIKE '%?%'
OR   `Age`     LIKE '%?%'
OR   `Time`    LIKE '%?%';





UPDATE sakila.attacks 
SET

        Country=                   REPLACE( Country , '?', ' '),
        Injury=                  REPLACE(Injury, '?', ' '),
	    `Case Number`=             REPLACE(`Case Number` , '?', ' '),
        `Date`=                 REPLACE(`Date` , '?', ' '),
        `Year`=                   REPLACE(`Year` , '?', ' '),
        `Type`=                   REPLACE(`Type` , '?', ' '),
        `Country`=               REPLACE(`Country` , '?', ' '),
        `Area`=                  REPLACE(`Area` , '?', ' '),
        `Location`=               REPLACE(`Location` , '?', ' '),
        `Activity`=              REPLACE(`Activity` , '?', ' '),
        `Name`=                   REPLACE(`Name` , '?', ' '),
        `Sex`=                   REPLACE(`Sex`, '?', ' '),
        `Age`=                   REPLACE(`Age` , '?', ' '),
        `Injury`=                  REPLACE(`Injury`, '?', ' '),
        `Fatal (Y/N)`=           REPLACE(`Fatal (Y/N)` , '?', ' '),
        `Time`=                   REPLACE(`Time` , '?', ' '),
        `Species`=                REPLACE(`Species` , '?', ' '),
        `Investigator or Source`=  REPLACE(`Investigator or Source` , '?', ' '),
        `pdf`=          REPLACE(`pdf` , '?', ' '),
        `href formula`=           REPLACE(`href formula` , '?', ' '),
        `href`=                  REPLACE(`href` , '?', ' '),
        `Case Number_[0]`=         REPLACE(`Case Number_[0]` , '?', ' '),
        `original order`=        REPLACE(`original order` , '?', ' ')
        
WHERE Injury   LIKE '%?%'
OR  Country LIKE '%?%'
    OR     Injury LIKE '%?%'
	OR     `Case Number`LIKE '%?%'
    OR      `Date`LIKE '%?%'
    OR      `Year`LIKE '%?%'
    OR     `Type`LIKE '%?%'
    OR     `Country`LIKE '%?%'
    OR     `Area`LIKE '%?%'
    OR      `Location`LIKE '%?%'
    OR      `Activity`LIKE '%?%'
    OR      `Name`LIKE '%?%'
    OR     `Sex`LIKE '%?%'
    OR        `Age`LIKE '%?%'
    OR       `Injury`LIKE '%?%'
    OR      `Fatal (Y/N)`LIKE '%?%'
    OR      `Time`LIKE '%?%'
    OR      `Species`LIKE '%?%'
    OR      `Investigator or Source`LIKE '%?%'
	OR     `pdf`LIKE '%?%'
    OR      `href formula`LIKE '%?%'
	OR     `href`LIKE '%?%'
	OR     `Case Number_[0]`LIKE '%?%'
    OR   `original order`LIKE '%?%'
        






OR    Country  LIKE '%?%'
OR   `Date`    LIKE '%?%'
OR   Location  LIKE '%?%'
OR   Species   LIKE '%?%'
OR   `Age`     LIKE '%?%'
OR   `Time`    LIKE '%?%';





 



 


 
