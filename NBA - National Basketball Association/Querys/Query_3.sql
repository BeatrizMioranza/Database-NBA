SELECT * FROM nba.ranking;
#3- QUAIS OS 5 TIMES COM MAIS VITORIAS JOGANDO (FORA CASA)
SELECT 
    TEAM AS Time,
    LEFT(ROAD_RECORD, 2) AS Vitorias,
    MAX(STANDINGSDATE) AS 'Ate a Data'
FROM
    ranking
WHERE
    TEAM_ID NOT IN (1610612765 , 1610612755,
        1610612752,
        1610612764,
        1610612741,
        1610612739,
        1610612760,
        1610612737,
        1610612744)
GROUP BY TEAM
ORDER BY ROAD_RECORD DESC
LIMIT 5;