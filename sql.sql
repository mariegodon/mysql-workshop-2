UPDATE Entry 
    SET lastName = CASE id 
        WHEN 1 THEN "Letellier"
        WHEN 2 THEN "Ekmej"
        WHEN 3 THEN "Godon"
    END
WHERE id IN (1,2,3);

SELECT id, email FROM Account WHERE id = 63;

SELECT accountId, name FROM AddressBook WHERE accountId = 3;

SELECT id, name, createdOn FROM AddressBook WHERE name = "Lorem Foundation";

SELECT COUNT(*) FROM Account AS totalAccounts;

SELECT COUNT(*) AS "Entries Born On or After Jan 1 1965" FROM Entry WHERE birthday >= "1965-01-01";

SELECT COUNT(*) AS "Entries as Phones" FROM Entry WHERE subtype = "phone";

SELECT firstName, lastName, birthday FROM Entry WHERE birthday = (SELECT MIN(birthday) FROM Entry);  

SELECT * FROM AddressBook ORDER BY accountId;
