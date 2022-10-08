, Year, Country, Area, Activity, Sex, Age, Injury, Fatal (Y/N), Time, Species, Investigator or Source, pdf, href formula, href, Case Number_[0], Case Number_[1], original order

SELECT  *
FROM sakila.attacks 
order by  cast( `original order` as decimal) asc;

SELECT distinct `Case Number`, `Case Number_[0]`, `Case Number_[1]`, cast( `original order` as decimal) a

FROM sakila.attacks 
order by  cast( `original order` as decimal)a ;


/* Compare case studies and dates 
Normalise date column 
Check and normalize year column 
Check for columns with wrong data 

compare the case nuymber in the sakila table and new table to import */ 



