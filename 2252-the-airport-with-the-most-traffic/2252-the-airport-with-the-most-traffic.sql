# Write your MySQL query statement below

/* Return ID of the airport with the most traffic. Need to pull id out of departure_airport and arrival_airport */

WITH t(airport,flightcnt)
AS
(
    select departure_airport as airport, flights_count
    from flights
    UNION ALL 
    select arrival_airport as airport, flights_count
    from flights
    /*Flatten data set two just the two columns for analysis by grouping each set and unioning all the data together */
),

t1(airport_id, sumval)
AS
(
    select airport, SUM(flightcnt) totflights
    from t
    group by airport
    /*This query is used to now sum the total amount of flight by airport */
)

    SELECT airport_id
    FROM t1
    WHERE sumval = (SELECT MAX(sumval) FROM t1)
    /*The final query select out an id of the airport with the MAX flightcnt */