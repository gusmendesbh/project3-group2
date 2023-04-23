﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Ywh2yo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "teams" (
    "id" INTEGER   NOT NULL,
    "shortDisplayName" VARCHAR(20)   NOT NULL,
    "nickname" VARCHAR(20)   NOT NULL,
    "location" VARCHAR(50)   NOT NULL,
    "abbreviation" VARCHAR(10)   NOT NULL,
    "displayName" VARCHAR(50)   NOT NULL,
    "isActive" BOOLEAN   NOT NULL,
    "isAllStar" BOOLEAN   NOT NULL,
    "logos" VARCHAR(300)   NOT NULL,
    "OTLosses" FLOAT   NOT NULL,
    "OTWins" FLOAT   NOT NULL,
    "avgPointsAgainst" FLOAT   NOT NULL,
    "avgPointsFor" FLOAT   NOT NULL,
    "divisionWinPercent" FLOAT   NOT NULL,
    "gamesPlayed" INTEGER   NOT NULL,
    "losses" FLOAT   NOT NULL,
    "ties" FLOAT   NOT NULL,
    "wins" FLOAT   NOT NULL,
    "winPercent" FLOAT   NOT NULL,
    "points" INTEGER   NOT NULL,
    CONSTRAINT "pk_teams" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "athletes" (
    "type" VARCHAR(20)   NOT NULL,
    "teamID" INTEGER   NOT NULL,
    "teamName" VARCHAR(50)   NOT NULL,
    "name" VARCHAR(200)   NOT NULL,
    "weight" INTEGER   NOT NULL,
    "height" INTEGER   NOT NULL,
    "age" INTEGER   NOT NULL,
    "birthCity" VARCHAR(100)   NOT NULL,
    "birthState" VARCHAR(30)   NOT NULL,
    "birthCountry" VARCHAR(30)   NOT NULL,
    "position" VARCHAR(50)   NOT NULL,
    "jersey" INTEGER   NOT NULL,
    "xp" INTEGER   NOT NULL,
    "status" VARCHAR(10)   NOT NULL,
    "headshot" VARCHAR(300)   NOT NULL,
    CONSTRAINT "pk_athletes" PRIMARY KEY (
        "name"
     )
);

CREATE TABLE "stats" (
    "date" DATE   NOT NULL,
    "away" VARCHAR(20)   NOT NULL,
    "home" VARCHAR(20)   NOT NULL,
    "first_downs_away" INTEGER   NOT NULL,
    "first_downs_home" INTEGER   NOT NULL,
    "third_downs_away" VARCHAR(10)   NOT NULL,
    "third_downs" VARCHAR(10)   NOT NULL,
    "fourth_downs_away" VARCHAR(10)   NOT NULL,
    "fourth_downs_home" VARCHAR(10)   NOT NULL,
    "passing_yards_away" INTEGER   NOT NULL,
    "passing_yards_home" INTEGER   NOT NULL,
    "rushing_yards_away" INTEGER   NOT NULL,
    "rushing_yards_home" INTEGER   NOT NULL,
    "total_yards_away" INTEGER   NOT NULL,
    "total_yards_home" INTEGER   NOT NULL,
    "comp_att_away" VARCHAR(10)   NOT NULL,
    "comp_att_home" VARCHAR(10)   NOT NULL,
    "sacks_away" VARCHAR(10)   NOT NULL,
    "sacks_home" VARCHAR(10)   NOT NULL,
    "rushing_attempts_away" INTEGER   NOT NULL,
    "rushing_attempts_home" INTEGER   NOT NULL,
    "fumbles_away" INTEGER   NOT NULL,
    "fumbles_home" INTEGER   NOT NULL,
    "int_away" INTEGER   NOT NULL,
    "int_home" INTEGER   NOT NULL,
    "turnovers_away" INTEGER   NOT NULL,
    "turnovers_home" INTEGER   NOT NULL,
    "penalties_away" VARCHAR(10)   NOT NULL,
    "penalties_home" VARCHAR(10)   NOT NULL,
    "redzone_away" VARCHAR(10)   NOT NULL,
    "redzone_home" VARCHAR(10)   NOT NULL,
    "drives_away" INTEGER   NOT NULL,
    "drives_home" INTEGER   NOT NULL,
    "def_st_td_away" INTEGER   NOT NULL,
    "def_st_td_home" INTEGER   NOT NULL,
    "possession_away" TIME   NOT NULL,
    "possession_home" TIME   NOT NULL,
    "score_away" INTEGER   NOT NULL,
    "score_home" INTEGER   NOT NULL
);

CREATE TABLE "team_venue" (
    "Team_id" INTEGER   NOT NULL,
    "Abbreviation" VARCHAR(10)   NOT NULL,
    "Team_Name" VARCHAR(50)   NOT NULL,
    "Venue_id" INTEGER   NOT NULL,
    "Team_logo" VARCHAR(300)   NOT NULL,
    "Team_Venue" VARCHAR(100)   NOT NULL,
    "Venue_City" VARCHAR(50)   NOT NULL,
    "Venue_State" VARCHAR(10)   NOT NULL,
    "Venue_ZipCode" INTEGER   NOT NULL,
    "Venue_Capacity" INTEGER   NOT NULL,
    "Venue_Grass" BOOLEAN   NOT NULL,
    "Venue_Indoor" BOOLEAN   NOT NULL,
    "Latitude" FLOAT   NOT NULL,
    "Longitude" FLOAT   NOT NULL,
    "Location" VARCHAR(100)   NOT NULL
);

ALTER TABLE "teams" ADD CONSTRAINT "fk_teams_nickname" FOREIGN KEY("nickname")
REFERENCES "stats" ("home");

ALTER TABLE "athletes" ADD CONSTRAINT "fk_athletes_teamID" FOREIGN KEY("teamID")
REFERENCES "teams" ("id");

ALTER TABLE "team_venue" ADD CONSTRAINT "fk_team_venue_Team_id" FOREIGN KEY("Team_id")
REFERENCES "teams" ("id");

