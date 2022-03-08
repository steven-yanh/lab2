UPDATE Judge
SET
        Judge_Name= (SELECT Judge_Name FROM data WHERE Judge.Judge_ID = data.Judge_ID Group BY Judge_ID),
        cnt = (SELECT COUNT(*) AS cnt FROM data WHERE Judge.Judge_ID = data.Judge_ID GROUP BY Judge_ID),
        start = (SELECT MIN(Timestamp) AS start FROM data WHERE Judge.Judge_ID = data.Judge_ID GROUP BY Judge_ID),
        finish = (SELECT MAX(Timestamp) AS finish FROM data WHERE Judge.Judge_ID = data.Judge_ID GROUP BY Judge_ID),
        duration = finish-start
;
