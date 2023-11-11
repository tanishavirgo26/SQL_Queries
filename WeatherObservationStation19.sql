/*A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.*/
SELECT ROUND(LAT_N,4) FROM (SELECT ROW_NUMBER() OVER (ORDER BY LAT_N) ROW_NUM, LAT_N FROM STATION) AS NEW_TABLE WHERE ROW_NUM = (SELECT (FLOOR(COUNT(LAT_N)/2)+1) FROM STATION);
/*select round(avg(lat_n),4)
from 
(
    select lat_n,
    row_number() over() as rnk
    from station
    order by lat_n
)x
where x.rnk = (select count(*) from station)/2*/