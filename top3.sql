with top3 as
(select *, row_number() over(partition by Make Order by Total DESC) as rn
from data)

SELECT Make, Year, Make, Model, Total FROM top3
WHERE rn <= 3
