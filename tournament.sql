-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- table for players
CREATE TABLE players (
    player_id SERIAL primary key,
    player_name text
    );

-- table for matches
CREATE TABLE matches (
    match_id SERIAL primary key,
    winner SERIAL references players(player_id),
    loser SERIAL references players(player_id)
    );
