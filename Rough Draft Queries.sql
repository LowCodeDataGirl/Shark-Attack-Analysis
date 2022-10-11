/* 

TO DO LIST 
1. Run previous queries 
2. Finish the like sharkattacks data cleaning 
3. Check for href with double http
4. Check each column one by one 

*/

SELECT  *
FROM sharkattacks.attacks 
where `Case Number_[1]` like '%sharkattack%';


SELECT  *
FROM sharkattacks.attacks 
where `Case Number` ='1758.00.00' ;



  



