#1- QUAIS OS NOMES DOS TIMES, SEUS DONOS E HEAD COACH EM ORDEM ALFABETICA

SELECT 
    NICKNAME AS Nome, OWNER AS Dono, HEADCOACH AS Técnico
FROM
    teams
ORDER BY NICKNAME