/* 
TO DO LIST 
1. Run previous queries 
2. Finish the like sharkattacks data cleaning 
3. Check for href with double http
4. Check each column one by one 

*/


SELECT  *
FROM sakila.attacks 
where `Case Number` ='1758.00.00';

SELECT  *
FROM sharkattacks.attacks 
where `Case Number` = '1758.00.00';

SELECT  *
FROM sakila.attacks 
where `Case Number_[1]` like '%sharkattack%';


 /*4f*//* This Query puts the data of ' Alf Dean & other occupant' in the right places */  

/*
UPDATE 
    sakila.attacks 
SET
    
    `Date`                   = Concat(Substring(`Case Number`,1,4),'-',Substring(`Case Number`,6,2),'-',Substring(`Case Number`,9,2)),
    Activity                  = Concat( Activity,'',Injury,'',Species,'',`Investigator or Source`,'',pdf,'',href formula),
    `Investigator or Source` = `href`,
    pdf                      = `Case Number_[0]`,
    `href formula`           = `Case Number_[1]`,
    href                     =`original order`,
    `Case Number_[0]`        = Substring(`Case Number_[0]`,1,10),
    `Case Number_[1]`        = Substring(`Case Number_[0]`,1,10),
    `original order`         = REPLACE(`original order`,'http://sharkattackfile.net/spreadsheets/pdf_directory/1758.00.00-Mediterranean.pdf',' ')
   
WHERE 
    `Case Number` = '1758.00.00' ;

*/


SELECT Concat(Substring(`Case Number`,1,4),'-',Substring(`Case Number`,6,2),'-',Substring(`Case Number`,9,2))
FROM sharkattacks.attacks 
where `Case Number` = '1758.00.00';

 

 
