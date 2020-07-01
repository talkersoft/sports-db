CREATE FUNCTION get_athlete_data () 
	RETURNS TABLE (
		Name text,
		Age int,
		League text,
		Team varchar(100))
AS $$
BEGIN
	RETURN QUERY 
		SELECT 
            athlete.first_name || ' ' || SUBSTRING ( athlete.last_name ,1 , 1 ) || '.',
			athlete.age,
			league.league_name || ' ' || sport.sport_name,
			team.team_name
		FROM programs.affiliation affiliation 
			inner join programs.team team on team.id = affiliation.team_id
			inner join programs.athlete athlete on athlete.id = affiliation.athlete_id
			inner join programs.sport sport on sport.id = team.sport_id
			inner join programs.league league on league.id = team.league_id;
END; $$ 
LANGUAGE 'plpgsql';