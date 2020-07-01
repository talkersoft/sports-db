insert into programs.athlete 
    (id,first_name,last_name,age, email) 
values ('041e3613-e90c-4566-84d9-f87ce19f4308','Rick','Sanchez', 12, 'rick.sanchez@hotmail.com');

insert into programs.athlete 
    (id,first_name,last_name,age, email) 
values ('bb62cf49-45db-4998-bd7a-e03ae15cf418','Morty','Smith', 11, 'morty.smith@aol.com');

insert into programs.athlete 
    (id,first_name,last_name,age, email) 
values ('a1be0767-2186-466d-b5fc-92862d1e03cf','Luke','Skylocker', 12, 'rick.sanchez@hotmail.com');

insert into programs.athlete 
    (id,first_name,last_name,age, email) 
values ('5b58c5ff-ae4c-4897-bb15-e1806069fceb','Summer','Smith', 12, 'summer.smith@aol.com');

insert into programs.athlete 
    (id,first_name,last_name,age, email) 
values ('70b17f2e-0866-424a-9681-78c6fad4a6ad','Jerry','Smith', 11, 'jerry.smith@aol.com');

insert into programs.athlete 
    (id,first_name,last_name,age, email) 
values ('6641970a-673b-4295-984b-77046f66cbad','Squanchy','Squanchy', 13, 'squanchy@petmail.com');

insert into programs.athlete 
    (id,first_name,last_name,age) 
values ('e33b4a7b-773d-4e19-b052-fd6ea544d130','Luke','Skywalker', 6);

insert into programs.athlete 
    (id,first_name,last_name,age) 
values ('1340ead6-3ea1-4b23-b870-381f8b34c043','Wendy','Watson', 7);

insert into programs.athlete 
    (id,first_name,last_name,age) 
values ('1955d5ba-8611-45be-a4d4-2f2157262578','John','Smith', 5);

insert into programs.athlete 
    (id,first_name,last_name,age) 
values ('3296f118-d93d-4f50-98ae-beef0590e34f','John','Smith', 7);

--

insert into programs.league
    (id, league_name)
values ('9c44c390-67d6-41c7-acfe-4140acc745f2', 'Toddler League');

insert into programs.league
    (id, league_name)
values ('dbe1aab7-8f52-4002-81cf-6e459c76c1c3', 'Little League');

insert into programs.sport
    (id, sport_name)
values ('ccc2a2e8-c380-4ea3-90a9-f17a09d5d854', 'Baseball');

insert into programs.sport
    (id, sport_name)
values ('572b3a60-c435-4da6-bbe5-d319d7f1b011', 'Football');

insert into programs.sport
    (id, sport_name)
values ('a9418abc-2cd5-4712-9022-2120f2489b55', 'Soccer');

--

insert into programs.team
    (id, team_name, maxslots, sport_id, league_id)
values ('9ab122b9-f1a6-4d9a-9f7e-6795e630e82b', 'Cubs', 30, 'ccc2a2e8-c380-4ea3-90a9-f17a09d5d854', 'dbe1aab7-8f52-4002-81cf-6e459c76c1c3');

insert into programs.team
    (id, team_name, maxslots, sport_id, league_id)
values ('a0ae581c-6d85-4743-9e9a-4d0bb7e25ad9', 'Tigers', 30, 'ccc2a2e8-c380-4ea3-90a9-f17a09d5d854', 'dbe1aab7-8f52-4002-81cf-6e459c76c1c3');

insert into programs.team
    (id, team_name, maxslots, sport_id, league_id)
values ('0e28147f-e676-49fc-bc5d-32304003b714', 'Orioles', 30, 'ccc2a2e8-c380-4ea3-90a9-f17a09d5d854', '9c44c390-67d6-41c7-acfe-4140acc745f2');

insert into programs.team
    (id, team_name, maxslots, sport_id, league_id)
values ('1031621a-2a66-40a7-9b1a-33d626943ce1', 'Braves', 30, 'ccc2a2e8-c380-4ea3-90a9-f17a09d5d854', '9c44c390-67d6-41c7-acfe-4140acc745f2');

--INSERT

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '041e3613-e90c-4566-84d9-f87ce19f4308', '9ab122b9-f1a6-4d9a-9f7e-6795e630e82b');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), 'bb62cf49-45db-4998-bd7a-e03ae15cf418', '9ab122b9-f1a6-4d9a-9f7e-6795e630e82b');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '5b58c5ff-ae4c-4897-bb15-e1806069fceb', 'a0ae581c-6d85-4743-9e9a-4d0bb7e25ad9');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '70b17f2e-0866-424a-9681-78c6fad4a6ad', 'a0ae581c-6d85-4743-9e9a-4d0bb7e25ad9');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '6641970a-673b-4295-984b-77046f66cbad', 'a0ae581c-6d85-4743-9e9a-4d0bb7e25ad9');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), 'e33b4a7b-773d-4e19-b052-fd6ea544d130', '1031621a-2a66-40a7-9b1a-33d626943ce1');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '1340ead6-3ea1-4b23-b870-381f8b34c043', '1031621a-2a66-40a7-9b1a-33d626943ce1');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '1955d5ba-8611-45be-a4d4-2f2157262578', '0e28147f-e676-49fc-bc5d-32304003b714');

insert into programs.affiliation
    (id, athlete_id, team_id)
values (uuid_generate_v4(), '3296f118-d93d-4f50-98ae-beef0590e34f', '0e28147f-e676-49fc-bc5d-32304003b714');