CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE SCHEMA programs;

CREATE USER db_admin WITH PASSWORD 'password1';
CREATE USER db_deploy WITH PASSWORD 'password1';
CREATE USER rest_api_user WITH PASSWORD 'password1';

GRANT ALL PRIVILEGES ON SCHEMA programs to db_admin;
GRANT USAGE ON SCHEMA programs to db_deploy;
GRANT USAGE ON SCHEMA programs to rest_api_user;
GRANT ALL PRIVILEGES ON DATABASE "sportsdb" TO db_admin;
GRANT ALL PRIVILEGES ON DATABASE "sportsdb" TO db_deploy;

CREATE TABLE programs.athlete
(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    age int,
    email varchar(100) NULL
);

CREATE TABLE programs.sport
(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    sport_name varchar(100) NOT NULL
);

CREATE TABLE programs.league
(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    league_name varchar(100) NOT NULL
); 

CREATE TABLE programs.team
(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    team_name varchar(100) NOT NULL,
    maxslots int NOT NULL,
    sport_id uuid REFERENCES programs.sport(id),
    league_id uuid REFERENCES programs.league(id)
);

CREATE TABLE programs.affiliation
(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    athlete_id uuid REFERENCES programs.athlete(id),
    team_id uuid REFERENCES programs.team(id)
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA programs TO rest_api_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA programs TO db_admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA programs TO db_deploy;
