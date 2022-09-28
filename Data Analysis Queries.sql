/*
Query to count countries that reported the most shark attacks 
*/
SELECT    Country , Count(Country)
FROM      sakila.attacks 
GROUP BY  Country 
ORDER BY   Count(Country) DESC ;

