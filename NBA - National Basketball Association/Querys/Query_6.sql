SELECT * FROM nba.teams;
#6- OS TIMES MAIS ANTIGOS
SELECT 
    NICKNAME AS Time, ABBREVIATION AS Apelido, YEARFOUNDED AS Ano
FROM
    teams
ORDER BY YEARFOUNDED
LIMIT 5;