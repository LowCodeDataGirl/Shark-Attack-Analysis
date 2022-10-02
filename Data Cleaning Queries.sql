/*
Which countries report the most shark attacks? 
Within those countries, which areas and locations seem to be the most dangerous?
*/

#Query To Check For `Reported` In The Date Column  
Select * 
From sakila.attacks 
Where `Date` like '%Reported%' 
Order By `Date` desc ;
 
 
 /*
Query To Update The Date Column 

Some of The Date Column has the suffix "Reported" and wrong date format
This Query updates the table with the correct Date format (from the "Case Number_[0]")
*/

UPDATE sakila.attacks 
SET `Date` = concat(Substring(`Case Number_[0]`, 1,4),"-",Substring(`Case Number_[0]`, 6,2),"-",Substring(`Case Number_[0]`, 9,2))
WHERE `Date` like '%Reported%' ;


#Query To Check For `Boat` and 'Boating' In The Date Column  
Select  `Case Number`, `Date`, `Year`,`Case Number_[0]`  
From sakila.attacks 
Where `Type` IN ('Boat' ,'Boating')
Order By `Date` desc ;

/*
Query to Change Boat to Boating 
This Query changes boat to boating for uniformity 
*/

UPDATE sakila.attacks 
SET `Type` = "Boating"
WHERE `Type` = 'Boat';

/*
Query To Check for Wrongly Spelled Location Names 

Some of the locations are wrongly spelled and needs to be updated 
*/

Select  *
From sakila.attacks 
Where `Location` like '%?%'  
Order By `Date` desc ;


# Query To Change the Wrongly Spelled Location to their correct spellings 

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
  

/*
Query to check for the suffix "?" in some places in the Activity Column 
*/

SELECT  *
FROM sakila.attacks 
WHERE `Activity` like '%?%'  
ORDER BY `Date` desc ;


/*
Query to remove the suffix "?" in some places in the Activity Column 
*/

UPDATE sakila.attacks 
SET Activity =  SUBSTRING(Activity, 1, CHAR_LENGTH(Activity) - 1)  
WHERE `Activity` like '%?%'  ;







