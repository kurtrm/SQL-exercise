-- https://en.wikibooks.org/wiki/SQL_Exercises/Planet_Express 
-- 7.1 Who receieved a 1.5kg package?
    -- The result is "Al Gore's Head".
SELECT client.name
FROM package
JOIN client ON package.recipient = client.accountnumber
WHERE weight = 1.5;
-- 7.2 What is the total weight of all the packages that he sent?
SELECT sum(package.weight)
FROM package
JOIN client ON package.recipient = client.accountnumber
WHERE sender = (SELECT client.accountnumber
                FROM package JOIN client
                ON package.recipient = client.accountnumber
                WHERE weight = 1.5);