SELECT ach_game_title,ach_game_release_date,ach_title, description
FROM dbo.GAMER_ACHIEVES
	JOIN dbo.ACHIEVEMENT ON ACHIEVEMENT.game_title = GAMER_ACHIEVES.ach_game_title AND ACHIEVEMENT.game_release_date = GAMER_ACHIEVES.ach_game_release_date AND ACHIEVEMENT.title = GAMER_ACHIEVES.ach_title
WHERE gamer_username = 'Alisha208'