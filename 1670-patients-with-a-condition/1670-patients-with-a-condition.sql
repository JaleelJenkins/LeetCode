/* Write your PL/SQL query statement below 

    Problem: Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type | Diabetes.
     Type | Diabetes always starts with DIAB1 prefix.

     - Need to figure out how I can check the prefix of each word in a string

*/

SELECT *
FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%'