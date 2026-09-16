select * from airline5;
select * from airline6;
select count(*)  from airline6;

---1. Total Passengers---;
SELECT SUM(`Transported Passengers`) AS Total_Passengers
FROM airline6;


-- 2. Total Flights
SELECT SUM(`Departures Performed`) AS Total_Flights
FROM airline6;

-- 3. Total Available Seats
SELECT SUM(`Available Seats`) AS Total_Available_Seats
FROM airline6;

-- 4. Overall Load Factor
SELECT ROUND(
SUM(`Transported Passengers`) * 100.0 /
SUM(`Available Seats`),2) AS Load_Factor
FROM airline6;

-- 5. Load Factor by Year
SELECT
Year,
ROUND(SUM(`Transported Passengers`)*100/SUM(`Available Seats`),2) AS Load_Factor
FROM airline6
GROUP BY Year
ORDER BY Year;

-- 6. Load Factor by Quarter
SELECT
`Fiscal Quarter`,
ROUND(SUM(`Transported Passengers`)*100/SUM(`Available Seats`),2) AS Load_Factor
FROM airline6
GROUP BY `Fiscal Quarter` 
ORDER BY `Fiscal Quarter`;

-- 7. Load Factor by Month
SELECT
`Month (#)`,
ROUND(SUM(`Transported Passengers`)*100/SUM(`Available Seats`),2) AS Load_Factor
FROM airline6
GROUP BY `Month (#)`
ORDER BY `Month (#)`;

-- 8. Total Flights by Carrier
SELECT
`Carrier Name`,
SUM(`Departures Performed`) AS Flights
FROM airline6
GROUP BY `Carrier Name`
ORDER BY Flights DESC;

-- 9. Top 10 Airlines by Passengers
SELECT
`Carrier Name`,
SUM(`Transported Passengers`) AS Passengers
FROM airline6
GROUP BY `Carrier Name`
ORDER BY Passengers DESC
LIMIT 10;

-- 10. Top 10 Routes
SELECT
`From - To City`,
SUM(`Transported Passengers`) AS Passengers
FROM airline6
GROUP BY `From - To City`
ORDER BY Passengers DESC
LIMIT 10;

-- 11. Top 10 Routes by Flights
SELECT
`From - To City`,
SUM(`Departures Performed`) AS Flights
FROM airline6
GROUP BY `From - To City`
ORDER BY Flights DESC
LIMIT 10;

-- 12. Weekend vs Weekday Flights
SELECT
`Weekday/Weekname`,
COUNT(*) AS Flights
FROM airline6
GROUP BY `Weekday/Weekname`;

-- 13. Distance Group Wise Flights
SELECT
`Distance Group ID`,
COUNT(*) AS Flights
FROM airline5
GROUP BY `Distance Group ID`
ORDER BY `Distance Group ID`;

-- 14. Flights by Origin City
SELECT
`Origin City` ,
SUM(`Departures Performed`) AS Flights
FROM airline5
GROUP BY `Origin City` 
ORDER BY Flights DESC;

-- 15. Flights by Destination City
SELECT
`Destination City`,
SUM(`Departures Performed`) AS Flights
FROM airline6
GROUP BY `Destination City`
ORDER BY Flights DESC;

-- 16. Passenger Trend by Year
SELECT
Year,
SUM(`Transported Passengers`) AS Passengers
FROM airline5
GROUP BY Year
ORDER BY Year;

-- 17. Monthly Passenger Trend
SELECT
`Month (#)`,
SUM(`Transported Passengers`) AS Passengers
FROM airline6
GROUP BY `Month (#)`
ORDER BY `Month (#)`
;

-- 18. Monthly Flights
SELECT
`Month (#)`,
SUM(`Departures Performed`) AS Flights
FROM airline6
GROUP BY `Month (#)`
ORDER BY `Month (#)`;

-- 19. Load Factor by Carrier
SELECT
`Carrier Name`,
ROUND(SUM(`Transported Passengers`)*100/
SUM(`Available Seats`),2) AS Load_Factor
FROM airline6
GROUP BY `Carrier Name`
ORDER BY Load_Factor DESC;

-- 20. Load Factor by Route
SELECT
`From - To City`,
ROUND(SUM(`Transported Passengers`)*100/
SUM(`Available Seats`),2) AS Load_Factor
FROM airline6
GROUP BY `From - To City`
ORDER BY Load_Factor DESC;

-- 21. Average Passengers per Flight
SELECT
ROUND(SUM(`Transported Passengers`)/
SUM(`Departures Performed`),2) AS Avg_Passengers_Per_Flight
FROM airline6;

-- 22. Average Seats per Flight
SELECT
ROUND(SUM(`Available Seats`)/
SUM(`Departures Performed`),2) AS Avg_Seats_Per_Flight
FROM airline6;

-- 23. Total Freight
SELECT
SUM(Freight) AS Total_Freight
FROM airline6;

-- 24. Total Mail
SELECT
SUM(`Transported Mail`) AS Total_Mail
FROM airline6;

-- 25. Total Payload
SELECT
SUM(Payload) AS Total_Payload
FROM airline6;