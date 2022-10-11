/*1.*/  /* These Query below shows and removes the extra character '?' in the columns of the attacks table. 
 The extra character '?' appears at the end of some columns and inside some misspelled words. 
 Update the misspelled words before you do the general update if not, it would be difficult to identify the misspelled words.
 The extra character '?' is lowest common factor of the misspelled words*/
 
   /*1a.*/ /*Query to check for '%?%' in all the columns 
	Some columns in the table has an extra character '?'.
	This query checks for columns with those extra characters */

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
WHERE      Injury                    LIKE '%?%'
    OR     Country                   LIKE '%?%'
    OR     Injury                    LIKE '%?%'
    OR    `Case Number`              LIKE '%?%'
    OR    `Date`                     LIKE '%?%'
    OR    `Year`                     LIKE '%?%'
    OR    `Type`                     LIKE '%?%'
    OR    `Country`                  LIKE '%?%'
    OR    `Area`                     LIKE '%?%'
    OR    `Location`                 LIKE '%?%'
    OR    `Activity`                 LIKE '%?%'
    OR    `Name`                     LIKE '%?%'
    OR    `Sex`                      LIKE '%?%'
    OR    `Age`                      LIKE '%?%'
    OR    `Injury`                   LIKE '%?%'
    OR    `Fatal (Y/N)`              LIKE '%?%'
    OR    `Time`                     LIKE '%?%'
    OR    `Species`                  LIKE '%?%'
    OR    `Investigator or Source`   LIKE '%?%'
    OR    `pdf`                      LIKE '%?%'
    OR    `href formula`             LIKE '%?%'
    OR    `href`                     LIKE '%?%'
    OR    `Case Number_[0]`          LIKE '%?%'
    OR    `original order`           LIKE '%?%';
        
 
 
 
   /*1b.*/ /* Query To Update the Name Column with right data 
   NOTE: Run this query before the general update */

UPDATE sakila.attacks 
SET `Name`  =   'Mrs. Avery' 
WHERE  `Name` =  'adult female (Mrs. Avery)'  ;

UPDATE sakila.attacks 
SET `Name`  =   'Ibrahim Karagöz'
WHERE  `Name` =  'brahim Karagöz'  ;


  /*1c.*/ /*Query To Change the Wrongly Spelled Location to their correct spellings.
  NOTE: Run this query before the general update */

UPDATE sakila.attacks 
SET `Location` =  'Hadrian’s Island, near Port Moresby'
WHERE `Location` =  'Hadrian’s (Haidana?) Island, near Port Moresby';
 

UPDATE sakila.attacks 
SET `Location` =  'Vung Tàu'
WHERE `Location` =  'V?ng Tàu';


UPDATE sakila.attacks 
SET `Location` =   'Perth (Margaret River District)'
WHERE `Location` =  'Perth? (Margaret River District)';


UPDATE sakila.attacks 
SET `Location` =  'Palm Beach'
WHERE `Location` =  'Palm Beach?';


UPDATE sakila.attacks 
SET `Location` =  'Goat Rock, Bodega Bay, Sonoma County'
WHERE `Location` =  'Goat Rock, Bodega Bay, Sonoma County?';


UPDATE sakila.attacks 
SET `Location` =  'Kanazawa'
WHERE `Location` =  'Kanazawa?';


UPDATE sakila.attacks 
SET `Location`   = 'inciralti Beach, izmir'
WHERE `Location` = '?nciralti Beach, ?zmir';


UPDATE sakila.attacks 
SET `Location` =  'Jaque'
WHERE `Location` =  'Jarque, just south of Pi?as Bay';


UPDATE sakila.attacks 
SET `Location` =  'Mošcenicka Draga'
WHERE `Location` =  'Moš?eni?ka Draga';


UPDATE sakila.attacks 
SET `Location` =  'Salonika'
WHERE `Location` =  'Salonika?';


UPDATE sakila.attacks 
SET `Location` =  'Yesilköy'
WHERE `Location` =  'Ye?ilköy';


UPDATE sakila.attacks 
SET `Location` =   'Sucuraj, Hvar Island'
WHERE `Location` =  'Su?uraj, Hvar Island';


UPDATE sakila.attacks 
SET `Location` =   'Lyttelton'
WHERE `Location` =  'Lyttleton?';


UPDATE sakila.attacks 
SET `Location` =  'Calcutta'
WHERE `Location` =  '(Calcutta?)';

UPDATE sakila.attacks 
SET `Location` =  'Thursday Island'
WHERE `Location` =  'Thursday Island?';

UPDATE sakila.attacks 
SET `Location` =  'Botany Bay'
WHERE `Location` =  'Botany Bay?';
  

 /*1d.*/ /* Query to remove all the columns that contain
  Some Columns in the dataset contains irrelavant additional words '?'. 
  This query repplaces the extra "?" with space "?"
  NOTE: Run this query last */
 
 
UPDATE sakila.attacks 
SET
        Country                  = REPLACE( Country , '?', ' '),
        Injury                   = REPLACE(Injury, '?', ' '),
	    `Case Number`            = REPLACE(`Case Number` , '?', ' '),
        `Date`                   = REPLACE(`Date` , '?', ' '),
        `Year`                   = REPLACE(`Year` , '?', ' '),
        `Type`                   = REPLACE(`Type` , '?', ' '),
        `Country`                = REPLACE(`Country` , '?', ' '),
        `Area`                   = REPLACE(`Area` , '?', ' '),
        `Location`               = REPLACE(`Location` , '?', ' '),
        `Activity`               = REPLACE(`Activity` , '?', ' '),
        `Name`                   = REPLACE(`Name` , '?', ' '),
        `Sex`                    = REPLACE(`Sex`, '?', ' '),
        `Age`                    = REPLACE(`Age` , '?', ' '),
        `Injury`                 = REPLACE(`Injury`, '?', ' '),
        `Fatal (Y/N)`            = REPLACE(`Fatal (Y/N)` , '?', ' '),
        `Time`                   = REPLACE(`Time` , '?', ' '),
        `Species`                = REPLACE(`Species` , '?', ' '),
        `Investigator or Source` = REPLACE(`Investigator or Source` , '?', ' '),
        `pdf`                    = REPLACE(`pdf` , '?', ' '),
        `href formula`           = REPLACE(`href formula` , '?', ' '),
        `href`                   = REPLACE(`href` , '?', ' '),
        `Case Number_[0]`        = REPLACE(`Case Number_[0]` , '?', ' '),
        `original order`         = REPLACE(`original order` , '?', ' ')
        
WHERE     Injury                     LIKE '%?%'
    OR    Country                    LIKE '%?%'
    OR    Injury                     LIKE '%?%'
    OR    `Case Number`              LIKE '%?%'
    OR    `Date`                     LIKE '%?%'
    OR    `Year`                     LIKE '%?%'
    OR    `Type`                     LIKE '%?%'
    OR    `Country`                  LIKE '%?%'
    OR    `Area`                     LIKE '%?%'
    OR    `Location`                 LIKE '%?%'
    OR    `Activity`                 LIKE '%?%'
    OR    `Name`                     LIKE '%?%'
    OR    `Sex`                      LIKE '%?%'
    OR    `Age`                      LIKE '%?%'
    OR    `Injury`                   LIKE '%?%'
    OR    `Fatal (Y/N)`              LIKE '%?%'
    OR    `Time`                     LIKE '%?%'
    OR    `Species`                  LIKE '%?%'
    OR    `Investigator or Source`   LIKE '%?%'
    OR    `pdf`                      LIKE '%?%'
    OR    `href formula`             LIKE '%?%'
    OR    `href`                     LIKE '%?%'
    OR    `Case Number_[0]`          LIKE '%?%'
    OR    `original order`           LIKE '%?%';
        
/*This is the end of the misspellings query. After running these, all the extra characters '?' would be removed from the table */

        
/*2*/ /*There are two similar words "Boat" and "Boating" in the 'Type' column.
This shows and updates the column */

  /*2a*/ /*Query To Check For `Boat` and 'Boating' In The Date Column.*/

SELECT  *
FROM sakila.attacks 
WHERE `Type` IN ('Boat' ,'Boating');
 

/*2b*//*Query to Change Boat to Boating 
This Query changes boat to boating for uniformity */

UPDATE sakila.attacks 
SET `Type` = "Boating"
WHERE `Type` = 'Boat';

 
 
/*3*/  /*Some of The Date Column has the suffix "Reported" and wrong date format
This Query shows and updates the table with the correct Date format (from the "Case Number_[0]")*/


  /*3a*/#Query To Check For `Reported` In The Date Column  
  
SELECT * 
FROM sakila.attacks 
WHERE `Date` like '%Reported%' 
ORDER BY `Date` desc ;

  /*3b*//* Query To Update The Date Column */

UPDATE sakila.attacks 
SET `Date` = concat(Substring(`Case Number_[0]`, 1,4),"-",Substring(`Case Number_[0]`, 6,2),"-",Substring(`Case Number_[0]`, 9,2))
WHERE `Date` like '%Reported%' ;



/*4*//*Some of The Data in some rows were wrongly inputted in the wrong columns.
This query checks and updates the missplaced data Column */

     /*4a*//* Query To Check For rows with misplaced data*/ 

SELECT  *
FROM sakila.attacks 
where `Case Number_[1]` like '%sharkattack%';
#NOTE : You used like '%sharkattack%' because all the rows with misplaced data had sharkattack in their `Case Number_[1]`


  /*4b*//* This Query puts the data of 'Mustafa Al Hammadi' in the right places */   
  
 UPDATE 
    sakila.attacks 
SET
   Injury                   = CONCAT(Injury,"."," ", `Fatal (Y/N)`," ",`Time`, " ", Species),
   `Fatal (Y/N)`            = `Investigator or Source`,
   `Investigator or Source` = href,
   `Time`                   = REPLACE (`Time`,' 300-kg mako shark that was attacked',' '),
   Species                  = REPLACE (Species,' not the fisherman"',' '),
   pdf                      = `Case Number_[0]`,
   `href formula`           =`Case Number_[1]`,
   href                     = `original order`,
   `Case Number_[0]`        = SUBSTRING(`Case Number_[0]`,1,10),
   `Case Number_[1]`        = SUBSTRING(`Case Number_[0]`,1,10),
   `original order`         = REPLACE (`original order`,'http://sharkattackfile.net/spreadsheets/pdf_directory/2011.05.07.R-UAE.pdf',' ')
WHERE `Name`                = 'Mustafa Al Hammadi';
 

    /*4c*//* This Query puts the data of 'Norman Girvan' in the right places */  

 UPDATE 
    sakila.attacks 
SET
   `Investigator or Source`  = `href formula`,
   pdf                      = href,
  `href formula`            = `Case Number_[0]`,
   href                     = `Case Number_[1]`,
  `Case Number_[0]`         = `original order`,
  `Case Number_[1]`         = `original order`,
  `original order`          =  REPLACE (`original order`,'1937.10.27.a',' '),
  `Fatal (Y/N)`             = REPLACE (`Fatal (Y/N)`,' 850-kg [1874-lb] female','Y'),
  Injury                    = concat(`Investigator or Source`,'',pdf)
  
WHERE
   `Name`                = 'Norman Girvan';
 
 

 





 
 

 

 


 

 



















 


        
 
 









        
        

 
 
 
 
 
 








 


 
 

 

 


 

 



















 



 







        
        

 
 
