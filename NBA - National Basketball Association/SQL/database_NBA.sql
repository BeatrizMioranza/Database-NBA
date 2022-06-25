
CREATE DATABASE NBA; 
USE NBA;

ALTER TABLE `players` ADD FOREIGN KEY (TEAM_ID) REFERENCES `teams` (TEAM_ID);
ALTER TABLE `ranking` ADD FOREIGN KEY (TEAM_ID) REFERENCES `teams` (TEAM_ID);
ALTER TABLE `games` ADD FOREIGN KEY (HOME_TEAM_ID) REFERENCES `teams` (TEAM_ID);

CREATE TABLE players(
   PLAYER_ID   INTEGER  NOT NULL PRIMARY KEY 
  ,PLAYER_NAME VARCHAR(24) NOT NULL
  ,TEAM_ID     INTEGER  NOT NULL
  ,SEASON      INTEGER  NOT NULL
);
CREATE TABLE teams(
   TEAM_ID            INTEGER  NOT NULL PRIMARY KEY 
  ,MIN_YEAR           INTEGER  NOT NULL
  ,MAX_YEAR           INTEGER  NOT NULL
  ,ABBREVIATION       VARCHAR(3) NOT NULL
  ,NICKNAME           VARCHAR(13) NOT NULL
  ,YEARFOUNDED        INTEGER  NOT NULL
  ,CITY               VARCHAR(13) NOT NULL
  ,ARENA              VARCHAR(26) NOT NULL
  ,ARENACAPACITY      INTEGER 
  ,OWNER              VARCHAR(35) NOT NULL
  ,GENERALMANAGER     VARCHAR(15) NOT NULL
  ,HEADCOACH          VARCHAR(16) NOT NULL
  ,DLEAGUEAFFILIATION VARCHAR(33) NOT NULL
);
CREATE TABLE games(
   GAME_DATE_EST    DATE  NOT NULL 
  ,GAME_ID          INTEGER  NOT NULL PRIMARY KEY
  ,GAME_STATUS_TEXT VARCHAR(5) NOT NULL
  ,HOME_TEAM_ID     INTEGER  NOT NULL
  ,VISITOR_TEAM_ID  INTEGER  NOT NULL
  ,SEASON           INTEGER  NOT NULL
  ,TEAM_ID_home     INTEGER  NOT NULL
  ,PTS_home         NUMERIC(5,1)
  ,FG_PCT_home      VARCHAR(19)
  ,FT_PCT_home      VARCHAR(19)
  ,FG3_PCT_home     VARCHAR(19)
  ,AST_home         NUMERIC(4,1)
  ,REB_home         NUMERIC(4,1)
  ,TEAM_ID_away     INTEGER  NOT NULL
  ,PTS_away         NUMERIC(5,1)
  ,FG_PCT_away      VARCHAR(19)
  ,FT_PCT_away      VARCHAR(19)
  ,FG3_PCT_away     VARCHAR(19)
  ,AST_away         NUMERIC(4,1)
  ,REB_away         NUMERIC(4,1)
  ,HOME_TEAM_WINS   BIT  NOT NULL
);

CREATE TABLE ranking(
   TEAM_ID       INTEGER  NOT NULL
  ,LEAGUE_ID     INTEGER  NOT NULL
  ,SEASON_ID     INTEGER  NOT NULL
  ,STANDINGSDATE DATE  NOT NULL
  ,CONFERENCE    VARCHAR(4) NOT NULL
  ,TEAM          VARCHAR(25) NOT NULL
  ,G             INTEGER  NOT NULL
  ,W             INTEGER  NOT NULL
  ,L             INTEGER  NOT NULL
  ,W_PCT         VARCHAR(20) NOT NULL
  ,HOME_RECORD   VARCHAR(5) NOT NULL
  ,ROAD_RECORD   VARCHAR(5) NOT NULL
);
