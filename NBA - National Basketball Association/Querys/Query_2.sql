SELECT * FROM nba.ranking;
#2- QUAIS OS 5 TIMES COM MAIS VITORIAS JOGANDO EM CASA

SELECT
    TEAM AS Time,
    LEFT(HOME_RECORD, 2) AS Vitorias,
    MAX(STANDINGSDATE) AS 'Ate a Data'
FROM
    ranking
WHERE
    TEAM_ID NOT IN (1610612751 , 1610612766,
        1610612750,
        1610612739,
        1610612752,
        1610612746,
        1610612744)
GROUP BY TEAM
ORDER BY HOME_RECORD DESC
LIMIT 4;